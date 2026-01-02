import { SignJWT, jwtVerify } from 'jose';
import { AgeCategory } from './types';

const JWT_SECRET = new TextEncoder().encode(
  process.env.JWT_SECRET || 'default-secret-key-change-this-in-production'
);

export interface JWTPayload {
  user_id: string;
  email: string;
  age_category: AgeCategory;
  iat?: number;
  exp?: number;
}

/**
 * Generate a JWT token for a user
 * Token expires in 7 days
 */
export async function generateToken(payload: Omit<JWTPayload, 'iat' | 'exp'>): Promise<string> {
  const token = await new SignJWT(payload as any)
    .setProtectedHeader({ alg: 'HS256' })
    .setIssuedAt()
    .setExpirationTime('7d')
    .sign(JWT_SECRET);

  return token;
}

/**
 * Verify and decode a JWT token
 */
export async function verifyToken(token: string): Promise<JWTPayload | null> {
  try {
    const { payload } = await jwtVerify(token, JWT_SECRET);
    return payload as unknown as JWTPayload;
  } catch (error) {
    return null;
  }
}

/**
 * Extract JWT from cookie or Authorization header
 */
export function extractToken(cookieHeader?: string, authHeader?: string): string | null {
  // Try cookie first
  if (cookieHeader) {
    const match = cookieHeader.match(/(?:^|; )token=([^;]+)/);
    if (match) return match[1];
  }

  // Try Authorization header
  if (authHeader && authHeader.startsWith('Bearer ')) {
    return authHeader.substring(7);
  }

  return null;
}

/**
 * Calculate age category from birthdate
 */
export function calculateAgeCategory(birthdate: Date): AgeCategory {
  const today = new Date();
  const age = today.getFullYear() - birthdate.getFullYear();
  const monthDiff = today.getMonth() - birthdate.getMonth();

  // Adjust if birthday hasn't occurred this year
  const actualAge = monthDiff < 0 || (monthDiff === 0 && today.getDate() < birthdate.getDate())
    ? age - 1
    : age;

  return actualAge >= 18 ? AgeCategory.adult : AgeCategory.kid;
}
