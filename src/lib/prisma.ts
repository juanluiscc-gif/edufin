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

  // Create Neon serverless pool with explicit configuration
  // Pass ONLY the connectionString to avoid any object injection
  const pool = new Pool({
    connectionString: dbUrl,
    // Explicitly set other options to prevent env var pollution
    host: undefined,
    user: undefined,
    password: undefined,
    database: undefined,
    port: undefined
  });
  const adapter = new PrismaNeon(pool as any);

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
