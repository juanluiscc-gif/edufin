/**
 * OAuth utility functions for Google and Apple authentication
 */

const GOOGLE_CLIENT_ID = process.env.GOOGLE_CLIENT_ID;
const GOOGLE_CLIENT_SECRET = process.env.GOOGLE_CLIENT_SECRET;
const APPLE_CLIENT_ID = process.env.APPLE_CLIENT_ID;
const APPLE_TEAM_ID = process.env.APPLE_TEAM_ID;
const APPLE_KEY_ID = process.env.APPLE_KEY_ID;
const APPLE_PRIVATE_KEY = process.env.APPLE_PRIVATE_KEY;
const APP_URL = process.env.NEXT_PUBLIC_APP_URL || 'http://localhost:3000';

interface GoogleTokenResponse {
  access_token: string;
  expires_in: number;
  scope: string;
  token_type: string;
  id_token: string;
}

interface GoogleUserInfo {
  id: string;
  email: string;
  verified_email: boolean;
  name: string;
  given_name: string;
  family_name: string;
  picture: string;
}

interface AppleTokenResponse {
  access_token: string;
  token_type: string;
  expires_in: number;
  refresh_token: string;
  id_token: string;
}

interface AppleUserInfo {
  sub: string;
  email: string;
  email_verified: boolean;
}

/**
 * Generate Google OAuth authorization URL
 */
export function getGoogleAuthUrl(locale: string): string {
  if (!GOOGLE_CLIENT_ID) {
    throw new Error('GOOGLE_CLIENT_ID not configured');
  }

  const redirectUri = `${APP_URL}/api/auth/callback`;
  const scope = [
    'https://www.googleapis.com/auth/userinfo.email',
    'https://www.googleapis.com/auth/userinfo.profile',
  ].join(' ');

  const params = new URLSearchParams({
    client_id: GOOGLE_CLIENT_ID,
    redirect_uri: redirectUri,
    response_type: 'code',
    scope,
    access_type: 'offline',
    prompt: 'consent',
    state: JSON.stringify({ provider: 'google', locale }),
  });

  return `https://accounts.google.com/o/oauth2/v2/auth?${params.toString()}`;
}

/**
 * Generate Apple OAuth authorization URL
 */
export function getAppleAuthUrl(locale: string): string {
  if (!APPLE_CLIENT_ID) {
    throw new Error('APPLE_CLIENT_ID not configured');
  }

  const redirectUri = `${APP_URL}/api/auth/callback`;
  const scope = 'name email';

  const params = new URLSearchParams({
    client_id: APPLE_CLIENT_ID,
    redirect_uri: redirectUri,
    response_type: 'code',
    response_mode: 'form_post',
    scope,
    state: JSON.stringify({ provider: 'apple', locale }),
  });

  return `https://appleid.apple.com/auth/authorize?${params.toString()}`;
}

/**
 * Exchange Google authorization code for access token
 */
export async function exchangeGoogleCode(code: string): Promise<GoogleTokenResponse> {
  if (!GOOGLE_CLIENT_ID || !GOOGLE_CLIENT_SECRET) {
    throw new Error('Google OAuth credentials not configured');
  }

  const redirectUri = `${APP_URL}/api/auth/callback`;

  const response = await fetch('https://oauth2.googleapis.com/token', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/x-www-form-urlencoded',
    },
    body: new URLSearchParams({
      code,
      client_id: GOOGLE_CLIENT_ID,
      client_secret: GOOGLE_CLIENT_SECRET,
      redirect_uri: redirectUri,
      grant_type: 'authorization_code',
    }),
  });

  if (!response.ok) {
    const error = await response.text();
    throw new Error(`Failed to exchange Google code: ${error}`);
  }

  return response.json();
}

/**
 * Get Google user info from access token
 */
export async function getGoogleUserInfo(accessToken: string): Promise<GoogleUserInfo> {
  const response = await fetch('https://www.googleapis.com/oauth2/v2/userinfo', {
    headers: {
      Authorization: `Bearer ${accessToken}`,
    },
  });

  if (!response.ok) {
    throw new Error('Failed to get Google user info');
  }

  return response.json();
}

/**
 * Generate Apple client secret (JWT)
 */
function generateAppleClientSecret(): string {
  if (!APPLE_TEAM_ID || !APPLE_CLIENT_ID || !APPLE_KEY_ID || !APPLE_PRIVATE_KEY) {
    throw new Error('Apple OAuth credentials not configured');
  }

  // For Apple Sign In, we need to generate a JWT
  // This is a simplified version - in production, use a proper JWT library
  const header = {
    alg: 'ES256',
    kid: APPLE_KEY_ID,
  };

  const now = Math.floor(Date.now() / 1000);
  const payload = {
    iss: APPLE_TEAM_ID,
    iat: now,
    exp: now + 3600, // 1 hour
    aud: 'https://appleid.apple.com',
    sub: APPLE_CLIENT_ID,
  };

  // In a real implementation, you'd use jose or another JWT library
  // For now, return a placeholder that indicates it needs proper implementation
  return 'APPLE_CLIENT_SECRET_NEEDS_JWT_IMPLEMENTATION';
}

/**
 * Exchange Apple authorization code for access token
 */
export async function exchangeAppleCode(code: string): Promise<AppleTokenResponse> {
  if (!APPLE_CLIENT_ID) {
    throw new Error('Apple OAuth credentials not configured');
  }

  const redirectUri = `${APP_URL}/api/auth/callback`;
  const clientSecret = generateAppleClientSecret();

  const response = await fetch('https://appleid.apple.com/auth/token', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/x-www-form-urlencoded',
    },
    body: new URLSearchParams({
      code,
      client_id: APPLE_CLIENT_ID,
      client_secret: clientSecret,
      redirect_uri: redirectUri,
      grant_type: 'authorization_code',
    }),
  });

  if (!response.ok) {
    const error = await response.text();
    throw new Error(`Failed to exchange Apple code: ${error}`);
  }

  return response.json();
}

/**
 * Decode Apple ID token to get user info
 */
export function decodeAppleIdToken(idToken: string): AppleUserInfo {
  // In production, properly verify and decode the JWT
  // For now, simple base64 decode of the payload
  try {
    const parts = idToken.split('.');
    const payload = JSON.parse(Buffer.from(parts[1], 'base64').toString());
    return {
      sub: payload.sub,
      email: payload.email,
      email_verified: payload.email_verified === 'true',
    };
  } catch (error) {
    throw new Error('Failed to decode Apple ID token');
  }
}
