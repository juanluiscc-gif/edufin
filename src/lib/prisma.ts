import 'server-only';
import { PrismaClient } from '@prisma/client';

// Prevent multiple instances of Prisma Client in development
const globalForPrisma = globalThis as unknown as {
  prisma: PrismaClient | undefined;
};

async function createPrismaClient() {
  // Use POSTGRES_URL_NON_POOLING for Prisma to avoid encryptedCredentials error on Vercel
  // Fall back to DATABASE_URL for local development
  const connectionString = process.env.POSTGRES_URL_NON_POOLING || process.env.DATABASE_URL || process.env.POSTGRES_URL;

  if (!connectionString) {
    throw new Error('DATABASE_URL, POSTGRES_URL, or POSTGRES_URL_NON_POOLING must be defined');
  }

  // Ensure connectionString is actually a string (not an object)
  const dbUrl = typeof connectionString === 'string' ? connectionString : String(connectionString);

  console.log('[Prisma Init] connectionString type:', typeof dbUrl);
  console.log('[Prisma Init] connectionString starts with:', dbUrl.substring(0, 20));

  // CRITICAL FIX: Clear ALL PostgreSQL-related environment variables BEFORE importing Pool
  // Neon's Pool reads these vars during module initialization
  const envVarsToClear = [
    'PGHOST', 'PGUSER', 'PGPASSWORD', 'PGDATABASE', 'PGPORT',
    'PGHOST_UNPOOLED', 'POSTGRES_HOST', 'POSTGRES_USER',
    'POSTGRES_PASSWORD', 'POSTGRES_DATABASE', 'PGSSLMODE'
  ];

  const originalEnv: Record<string, string | undefined> = {};

  console.log('[Prisma Init] BEFORE clearing - PGHOST:', process.env.PGHOST ? 'EXISTS' : 'NONE');

  // Save and clear all PG* vars
  envVarsToClear.forEach(key => {
    originalEnv[key] = process.env[key];
    delete process.env[key];
  });

  console.log('[Prisma Init] AFTER clearing - PGHOST:', process.env.PGHOST ? 'EXISTS' : 'NONE');

  // NOW import Pool after clearing env vars (dynamic import)
  const { Pool } = await import('@neondatabase/serverless');
  const { PrismaNeon } = await import('@prisma/adapter-neon');

  console.log('[Prisma Init] Pool module imported');

  // Create Neon serverless pool with ONLY connectionString
  const pool = new Pool({
    connectionString: dbUrl,
    ssl: dbUrl.includes('sslmode=require') ? { rejectUnauthorized: false } : undefined
  });

  console.log('[Prisma Init] Pool instance created');

  const adapter = new PrismaNeon(pool as any);

  console.log('[Prisma Init] Adapter created');

  // Restore original env vars (for other code that might need them)
  Object.assign(process.env, originalEnv);

  return new PrismaClient({
    adapter,
    log: process.env.NODE_ENV === 'development' ? ['query', 'error', 'warn'] : ['error'],
  } as any);
}

// Create a single instance of PrismaClient (lazy initialization)
let prismaPromise: Promise<PrismaClient> | null = null;

export const prisma = new Proxy({} as PrismaClient, {
  get(target, prop) {
    if (!prismaPromise) {
      console.log('[Prisma] Initializing Prisma Client...');
      prismaPromise = createPrismaClient().then(client => {
        console.log('[Prisma] Prisma Client initialized successfully');
        // Store in global for development hot reload
        if (process.env.NODE_ENV !== 'production') {
          globalForPrisma.prisma = client;
        }
        return client;
      });
    }

    return (...args: any[]) => {
      return prismaPromise!.then(client => {
        const method = (client as any)[prop];
        if (typeof method === 'function') {
          return method.apply(client, args);
        }
        return method;
      });
    };
  }
});
