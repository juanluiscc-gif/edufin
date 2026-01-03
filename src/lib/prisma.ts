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

  // Create Neon serverless pool
  const pool = new Pool({ connectionString });
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
