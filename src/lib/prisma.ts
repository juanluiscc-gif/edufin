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

  // CRITICAL FIX: Clear all PG* environment variables before creating Pool
  // Neon integration creates individual vars (PGHOST, PGUSER, etc.) that pollute Pool config
  // We need ONLY the connectionString to work properly
  const originalEnv = {
    PGHOST: process.env.PGHOST,
    PGUSER: process.env.PGUSER,
    PGPASSWORD: process.env.PGPASSWORD,
    PGDATABASE: process.env.PGDATABASE,
    PGPORT: process.env.PGPORT,
  };

  // Temporarily remove PG* vars
  delete process.env.PGHOST;
  delete process.env.PGUSER;
  delete process.env.PGPASSWORD;
  delete process.env.PGDATABASE;
  delete process.env.PGPORT;

  // Create Neon serverless pool with ONLY connectionString
  const pool = new Pool({ connectionString: dbUrl });
  const adapter = new PrismaNeon(pool as any);

  // Restore original env vars (for other code that might need them)
  Object.assign(process.env, originalEnv);

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
