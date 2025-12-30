// Shared types that can be used in both client and server components
// These are duplicated from Prisma to avoid importing @prisma/client in client components

export enum AgeCategory {
  child = 'child',
  teen = 'teen',
  adult = 'adult',
  kid = 'kid'
}

export enum Language {
  en = 'en',
  es = 'es',
  fr = 'fr',
  de = 'de',
  ja = 'ja',
  zh = 'zh'
}

export enum OAuthProvider {
  google = 'google',
  apple = 'apple'
}
