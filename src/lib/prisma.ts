import 'server-only';
import { PrismaClient } from '@prisma/client';
import { Pool } from '@neondatabase/serverless';
import { PrismaNeon } from '@prisma/adapter-neon';

// Prevent multiple instances of Prisma Client in development
const globalForPrisma = globalThis as unknown as {
  prisma: PrismaClient | undefined;
};

function createPrismaClient() {
  // Use POSTGRES_URL_NON_POOLING for Prisma to avoid encryptedCredentials error on Vercel
  // Fall back to DATABASE_URL for local development
  const connectionString = process.env.POSTGRES_URL_NON_POOLING || process.env.DATABASE_URL || process.env.POSTGRES_URL;

  if (!connectionString) {
    throw new Error('DATABASE_URL, POSTGRES_URL, or POSTGRES_URL_NON_POOLING must be defined');
  }

  // Ensure connectionString is actually a string (not an object)
  const dbUrl = typeof connectionString === 'string' ? connectionString : String(connectionString);

  console.log('[Prisma Init] connectionString type:', typeof dbUrl);
  console.log('[Prisma Init] connectionString length:', dbUrl.length);
  console.log('[Prisma Init] PGHOST exists:', !!process.env.PGHOST);
  console.log('[Prisma Init] PGUSER exists:', !!process.env.PGUSER);

  // CRITICAL FIX: Clear ALL PostgreSQL-related environment variables before creating Pool
  // Neon integration creates individual vars that pollute Pool config
  const envVarsToClear = [
    'PGHOST', 'PGUSER', 'PGPASSWORD', 'PGDATABASE', 'PGPORT',
    'PGHOST_UNPOOLED', 'POSTGRES_HOST', 'POSTGRES_USER',
    'POSTGRES_PASSWORD', 'POSTGRES_DATABASE', 'PGSSLMODE'
  ];

  const originalEnv: Record<string, string | undefined> = {};

  // Save and clear all PG* vars
  envVarsToClear.forEach(key => {
    originalEnv[key] = process.env[key];
    delete process.env[key];
  });

  console.log('[Prisma Init] After clearing - PGHOST exists:', !!process.env.PGHOST);

  // Create Neon serverless pool with ONLY connectionString
  // Explicitly pass only connectionString to prevent any env var pollution
  const pool = new Pool({
    connectionString: dbUrl,
    // Explicitly disable SSL verification if needed
    ssl: dbUrl.includes('sslmode=require') ? { rejectUnauthorized: false } : undefined
  });

  const adapter = new PrismaNeon(pool as any);

  // Restore original env vars (for other code that might need them)
  Object.assign(process.env, originalEnv);

  console.log('[Prisma Init] Pool and adapter created successfully');

  return new PrismaClient({
    adapter,
    log: process.env.NODE_ENV === 'development' ? ['query', 'error', 'warn'] : ['error'],
  } as any);
}

// Create a single instance of PrismaClient
export const prisma = globalForPrisma.prisma ?? createPrismaClient();

// Store in global for development hot reload
if (process.env.NODE_ENV !== 'production') {
  globalForPrisma.prisma = prisma;
}
