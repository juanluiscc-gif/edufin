import 'server-only';
import { PrismaClient } from '@prisma/client';

// Prevent multiple instances of Prisma Client in development
const globalForPrisma = globalThis as unknown as {
  prisma: PrismaClient | undefined;
};

// Create Prisma client with proper configuration
function createPrismaClient() {
  // Skip initialization during build phase
  if (process.env.NEXT_PHASE === 'phase-production-build') {
    return null as any;
  }

  return new PrismaClient({
    log: process.env.NODE_ENV === 'development' ? ['query', 'error', 'warn'] : ['error'],
  });
}

// Lazy initialize prisma client
let _prisma: PrismaClient | undefined;

export const prisma = new Proxy({} as PrismaClient, {
  get(target, prop) {
    if (!_prisma) {
      _prisma = globalForPrisma.prisma ?? createPrismaClient();
      if (process.env.NODE_ENV !== 'production') {
        globalForPrisma.prisma = _prisma;
      }
    }
    return (_prisma as any)[prop];
  },
});
