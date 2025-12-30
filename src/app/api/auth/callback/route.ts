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

    // Handle OAuth errors
    if (error) {
      console.error('OAuth error:', error);
      return NextResponse.redirect(`${request.nextUrl.origin}/?error=oauth_failed`);
    }

    if (!code || !state) {
      return NextResponse.redirect(`${request.nextUrl.origin}/?error=invalid_callback`);
    }

    // Parse state
    const { provider, locale } = JSON.parse(state);

    let oauthId: string;
    let email: string;
    let name: string;
    let profilePicture: string | null = null;

    // Exchange code for tokens and get user info
    if (provider === 'google') {
      const tokenResponse = await exchangeGoogleCode(code);
      const userInfo = await getGoogleUserInfo(tokenResponse.access_token);

      oauthId = userInfo.id;
      email = userInfo.email;
      name = userInfo.name;
      profilePicture = userInfo.picture;
    } else if (provider === 'apple') {
      const tokenResponse = await exchangeAppleCode(code);
      const userInfo = decodeAppleIdToken(tokenResponse.id_token);

      oauthId = userInfo.sub;
      email = userInfo.email;
      name = email.split('@')[0]; // Apple doesn't always provide name
      profilePicture = null;
    } else {
      return NextResponse.redirect(`${request.nextUrl.origin}/?error=invalid_provider`);
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
  } catch (error) {
    console.error('OAuth callback error:', error);
    return NextResponse.redirect(`${request.nextUrl.origin}/?error=oauth_failed`);
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
