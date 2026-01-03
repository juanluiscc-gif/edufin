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

  // Parse connection string to extract all parameters explicitly
  // CRITICAL: Convert ALL values to pure strings to prevent object passing
  const url = new URL(dbUrl);

  const host = String(url.hostname);
  const port = parseInt(url.port) || 5432;
  const database = String(url.pathname.slice(1));
  const user = String(url.username);
  const password = String(url.password);

  console.log('[Prisma Init] Parsed values types:', {
    host: typeof host,
    port: typeof port,
    database: typeof database,
    user: typeof user,
    password: typeof password,
  });

  const poolConfig = {
    host,
    port,
    database,
    user,
    password,
    ssl: url.searchParams.get('sslmode') === 'require' ? { rejectUnauthorized: false } : undefined,
    application_name: 'edufin',
  };

  console.log('[Prisma Init] Pool config:', {
    host: poolConfig.host,
    port: poolConfig.port,
    database: poolConfig.database,
    user: poolConfig.user,
    hasPassword: !!poolConfig.password,
    ssl: !!poolConfig.ssl
  });

  // Create Neon serverless pool with explicit config
  const pool = new Pool(poolConfig as any);

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
let prismaClientPromise: Promise<PrismaClient> | null = null;
let prismaClientInstance: PrismaClient | null = null;

function getPrismaClient(): Promise<PrismaClient> {
  if (prismaClientInstance) {
    return Promise.resolve(prismaClientInstance);
  }

  if (!prismaClientPromise) {
    console.log('[Prisma] Initializing Prisma Client...');
    prismaClientPromise = createPrismaClient().then(client => {
      console.log('[Prisma] Prisma Client initialized successfully');
      prismaClientInstance = client;
      // Store in global for development hot reload
      if (process.env.NODE_ENV !== 'production') {
        globalForPrisma.prisma = client;
      }
      return client;
    });
  }

  return prismaClientPromise;
}

// Export a proxy that lazily initializes the Prisma Client
export const prisma = new Proxy({} as PrismaClient, {
  get(target, prop) {
    // If client is already initialized, return directly
    if (prismaClientInstance) {
      return (prismaClientInstance as any)[prop];
    }

    // Otherwise, return a proxy that waits for initialization
    return new Proxy(() => {}, {
      get(_, subProp) {
        return (...args: any[]) => {
          return getPrismaClient().then(client => {
            const model = (client as any)[prop];
            const method = model[subProp];
            if (typeof method === 'function') {
              return method.apply(model, args);
            }
            return method;
          });
        };
      },
      apply(_, __, args) {
        return getPrismaClient().then(client => {
          const method = (client as any)[prop];
          if (typeof method === 'function') {
            return method.apply(client, args);
          }
          return method;
        });
      }
    });
  }
});
