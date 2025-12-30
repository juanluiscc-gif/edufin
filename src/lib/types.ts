// Shared types that can be used in both client and server components
// These are duplicated from Prisma to avoid importing @prisma/client in client components

export enum AgeCategory {
  child = 'child',
  teen = 'teen',
  adult = 'adult'
}

export type { AgeCategory };
