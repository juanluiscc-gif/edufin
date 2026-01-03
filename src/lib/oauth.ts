/**
 * OAuth utility functions for Google and Apple authentication
 */

import { SignJWT, importPKCS8 } from 'jose';

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
    console.error('OAuth Error: GOOGLE_CLIENT_ID not configured');
    throw new Error('Google OAuth not configured');
  }

  if (!APP_URL) {
    console.error('OAuth Error: APP_URL not configured');
    throw new Error('Application URL not configured');
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

  console.log('[OAuth] Generated Google auth URL with redirect:', redirectUri);
  return `https://accounts.google.com/o/oauth2/v2/auth?${params.toString()}`;
}

/**
 * Generate Apple OAuth authorization URL
 */
export function getAppleAuthUrl(locale: string): string {
  if (!APPLE_CLIENT_ID) {
    console.error('OAuth Error: APPLE_CLIENT_ID not configured');
    throw new Error('Apple OAuth not configured');
  }

  if (!APP_URL) {
    console.error('OAuth Error: APP_URL not configured');
    throw new Error('Application URL not configured');
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

  console.log('[OAuth] Generated Apple auth URL with redirect:', redirectUri);
  return `https://appleid.apple.com/auth/authorize?${params.toString()}`;
}

/**
 * Exchange Google authorization code for access token
 */
export async function exchangeGoogleCode(code: string): Promise<GoogleTokenResponse> {
  if (!GOOGLE_CLIENT_ID || !GOOGLE_CLIENT_SECRET) {
    console.error('OAuth Error: Google credentials not configured');
    throw new Error('Google OAuth credentials not configured');
  }

  const redirectUri = `${APP_URL}/api/auth/callback`;

  console.log('[OAuth] Exchanging Google code for tokens');

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
    console.error('[OAuth] Google token exchange failed:', {
      status: response.status,
      statusText: response.statusText,
      error,
    });
    throw new Error(`Failed to exchange Google code: ${response.status} ${response.statusText}`);
  }

  const tokenData = await response.json();
  console.log('[OAuth] Successfully exchanged Google code for tokens');
  return tokenData;
}

/**
 * Get Google user info from access token
 */
export async function getGoogleUserInfo(accessToken: string): Promise<GoogleUserInfo> {
  console.log('[OAuth] Fetching Google user info');

  const response = await fetch('https://www.googleapis.com/oauth2/v2/userinfo', {
    headers: {
      Authorization: `Bearer ${accessToken}`,
    },
  });

  if (!response.ok) {
    const error = await response.text();
    console.error('[OAuth] Failed to get Google user info:', {
      status: response.status,
      error,
    });
    throw new Error('Failed to get Google user info');
  }

  const userInfo = await response.json();
  console.log('[OAuth] Successfully fetched Google user info for:', userInfo.email);
  return userInfo;
}

/**
 * Generate Apple client secret (JWT)
 */
async function generateAppleClientSecret(): Promise<string> {
  if (!APPLE_TEAM_ID || !APPLE_CLIENT_ID || !APPLE_KEY_ID || !APPLE_PRIVATE_KEY) {
    throw new Error('Apple OAuth credentials not configured');
  }

  try {
    // Import the private key - jose expects PKCS8 format
    const privateKey = await importPKCS8(APPLE_PRIVATE_KEY, 'ES256');

    const now = Math.floor(Date.now() / 1000);

    // Generate JWT with Apple's required claims
    const jwt = await new SignJWT({})
      .setProtectedHeader({ alg: 'ES256', kid: APPLE_KEY_ID })
      .setIssuer(APPLE_TEAM_ID)
      .setIssuedAt(now)
      .setExpirationTime(now + 3600) // 1 hour
      .setAudience('https://appleid.apple.com')
      .setSubject(APPLE_CLIENT_ID)
      .sign(privateKey);

    return jwt;
  } catch (error) {
    console.error('Failed to generate Apple client secret:', error);
    throw new Error('Failed to generate Apple client secret');
  }
}

/**
 * Exchange Apple authorization code for access token
 */
export async function exchangeAppleCode(code: string): Promise<AppleTokenResponse> {
  if (!APPLE_CLIENT_ID) {
    console.error('OAuth Error: APPLE_CLIENT_ID not configured');
    throw new Error('Apple OAuth credentials not configured');
  }

  const redirectUri = `${APP_URL}/api/auth/callback`;

  console.log('[OAuth] Generating Apple client secret JWT');
  const clientSecret = await generateAppleClientSecret();

  console.log('[OAuth] Exchanging Apple code for tokens');
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
    console.error('[OAuth] Apple token exchange failed:', {
      status: response.status,
      statusText: response.statusText,
      error,
    });
    throw new Error(`Failed to exchange Apple code: ${response.status} ${response.statusText}`);
  }

  const tokenData = await response.json();
  console.log('[OAuth] Successfully exchanged Apple code for tokens');
  return tokenData;
}

/**
 * Decode Apple ID token to get user info
 */
export function decodeAppleIdToken(idToken: string): AppleUserInfo {
  // In production, properly verify and decode the JWT
  // For now, simple base64 decode of the payload
  try {
    console.log('[OAuth] Decoding Apple ID token');
    const parts = idToken.split('.');
    if (parts.length !== 3) {
      throw new Error('Invalid JWT format');
    }
    const payload = JSON.parse(Buffer.from(parts[1], 'base64').toString());
    console.log('[OAuth] Successfully decoded Apple ID token for:', payload.email);
    return {
      sub: payload.sub,
      email: payload.email,
      email_verified: payload.email_verified === 'true' || payload.email_verified === true,
    };
  } catch (error) {
    console.error('[OAuth] Failed to decode Apple ID token:', error);
    throw new Error('Failed to decode Apple ID token');
  }
}
