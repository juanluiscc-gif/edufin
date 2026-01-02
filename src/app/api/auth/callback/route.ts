import { NextRequest, NextResponse } from 'next/server';
import { prisma } from '@/lib/prisma';
import { generateToken, calculateAgeCategory } from '@/lib/auth';
import {
  exchangeGoogleCode,
  getGoogleUserInfo,
  exchangeAppleCode,
  decodeAppleIdToken,
} from '@/lib/oauth';
import { OAuthProvider, AgeCategory } from '@/lib/types';

// Force dynamic rendering to avoid build-time Prisma issues
export const dynamic = 'force-dynamic';
// Use Node.js runtime for Prisma compatibility
export const runtime = 'nodejs';

/**
 * OAuth callback endpoint
 * Handles callbacks from Google and Apple OAuth
 */
export async function GET(request: NextRequest) {
  try {
    const searchParams = request.nextUrl.searchParams;
    const code = searchParams.get('code');
    const state = searchParams.get('state');
    const error = searchParams.get('error');

    console.log('OAuth callback received:', {
      hasCode: !!code,
      hasState: !!state,
      error,
      origin: request.nextUrl.origin
    });

    // Handle OAuth errors
    if (error) {
      console.error('OAuth error from provider:', error);
      return NextResponse.redirect(`${request.nextUrl.origin}/?error=oauth_failed&reason=${error}`);
    }

    if (!code || !state) {
      console.error('Missing code or state:', { code: !!code, state: !!state });
      return NextResponse.redirect(`${request.nextUrl.origin}/?error=invalid_callback`);
    }

    // Parse state
    let provider: string;
    let locale: string;

    try {
      const parsed = JSON.parse(state);
      provider = parsed.provider;
      locale = parsed.locale;
      console.log('Parsed state:', { provider, locale });
    } catch (parseError) {
      console.error('Failed to parse state:', parseError);
      return NextResponse.redirect(`${request.nextUrl.origin}/?error=invalid_state`);
    }

    let oauthId: string;
    let email: string;
    let name: string;
    let profilePicture: string | null = null;

    // Exchange code for tokens and get user info
    if (provider === 'google') {
      console.log('[OAuth Callback] Exchanging Google code for tokens...');
      try {
        const tokenResponse = await exchangeGoogleCode(code);
        console.log('[OAuth Callback] Got token response, fetching user info...');
        const userInfo = await getGoogleUserInfo(tokenResponse.access_token);
        console.log('[OAuth Callback] Got user info:', { email: userInfo.email, name: userInfo.name });

        oauthId = userInfo.id;
        email = userInfo.email;
        name = userInfo.name;
        profilePicture = userInfo.picture;
      } catch (googleError: any) {
        console.error('[OAuth Callback] Google OAuth exchange failed:', googleError);
        console.error('[OAuth Callback] Error stack:', googleError.stack);
        return NextResponse.redirect(`${request.nextUrl.origin}/${locale}?error=oauth_failed&reason=google_exchange_failed`);
      }
    } else if (provider === 'apple') {
      console.log('[OAuth Callback] Exchanging Apple code for tokens...');
      try {
        const tokenResponse = await exchangeAppleCode(code);
        console.log('[OAuth Callback] Got Apple token response, decoding ID token...');
        const userInfo = decodeAppleIdToken(tokenResponse.id_token);
        console.log('[OAuth Callback] Got Apple user info:', { email: userInfo.email });

        oauthId = userInfo.sub;
        email = userInfo.email;
        name = email.split('@')[0]; // Apple doesn't always provide name
        profilePicture = null;
      } catch (appleError: any) {
        console.error('[OAuth Callback] Apple OAuth exchange failed:', appleError);
        console.error('[OAuth Callback] Error stack:', appleError.stack);
        return NextResponse.redirect(`${request.nextUrl.origin}/${locale}?error=oauth_failed&reason=apple_exchange_failed`);
      }
    } else {
      console.error('[OAuth Callback] Invalid provider:', provider);
      return NextResponse.redirect(`${request.nextUrl.origin}/${locale}?error=invalid_provider`);
    }

    // Check if user exists
    const existingUser = await prisma.user.findUnique({
      where: {
        oauth_provider_oauth_id: {
          oauth_provider: provider as any,
          oauth_id: oauthId,
        },
      },
    });

    if (existingUser) {
      // User exists, generate JWT and set cookie
      const token = await generateToken({
        user_id: existingUser.id,
        email: existingUser.email,
        age_category: existingUser.age_category as AgeCategory,
      });

      const response = NextResponse.redirect(`${request.nextUrl.origin}/${locale}/dashboard`);
      response.cookies.set('token', token, {
        httpOnly: true,
        secure: process.env.NODE_ENV === 'production',
        sameSite: 'lax',
        maxAge: 60 * 60 * 24 * 7, // 7 days
        path: '/',
      });

      return response;
    }

    // New user - redirect to birthdate collection
    // Store temporary OAuth data in a cookie
    const tempData = {
      provider,
      oauth_id: oauthId,
      email,
      name,
      profile_picture: profilePicture,
    };

    const response = NextResponse.redirect(
      `${request.nextUrl.origin}/${locale}/auth/signup`
    );
    response.cookies.set('oauth_temp', JSON.stringify(tempData), {
      httpOnly: true,
      secure: process.env.NODE_ENV === 'production',
      sameSite: 'lax',
      maxAge: 60 * 10, // 10 minutes
      path: '/',
    });

    return response;
  } catch (error: any) {
    console.error('[OAuth Callback] Unexpected error:', error);
    console.error('[OAuth Callback] Error message:', error.message);
    console.error('[OAuth Callback] Error stack:', error.stack);
    const locale = 'es'; // fallback locale
    return NextResponse.redirect(`${request.nextUrl.origin}/${locale}?error=oauth_failed&reason=unexpected_error`);
  }
}

/**
 * Handle Apple OAuth POST callback
 * Apple uses form_post response mode
 */
export async function POST(request: NextRequest) {
  try {
    const formData = await request.formData();
    const code = formData.get('code') as string;
    const state = formData.get('state') as string;
    const error = formData.get('error') as string;

    // Build URL with query params and redirect to GET handler
    const url = new URL(`${request.nextUrl.origin}/api/auth/callback`);
    if (error) url.searchParams.set('error', error);
    if (code) url.searchParams.set('code', code);
    if (state) url.searchParams.set('state', state);

    return NextResponse.redirect(url);
  } catch (error) {
    console.error('Apple OAuth POST callback error:', error);
    return NextResponse.redirect(`${request.nextUrl.origin}/?error=oauth_failed`);
  }
}
