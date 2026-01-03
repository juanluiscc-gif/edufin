import { NextRequest, NextResponse } from 'next/server';
import { getGoogleAuthUrl } from '@/lib/oauth';
import { defaultLocale } from '@/i18n';

// Force dynamic rendering to avoid build-time Prisma issues
export const dynamic = 'force-dynamic';

/**
 * Google OAuth initiation endpoint
 * Redirects user to Google's OAuth consent screen
 */
export async function GET(request: NextRequest) {
  try {
    // Get locale from query params or use default
    const searchParams = request.nextUrl.searchParams;
    const locale = searchParams.get('locale') || defaultLocale;

    // Generate Google OAuth URL
    const authUrl = getGoogleAuthUrl(locale);

    // Redirect to Google
    return NextResponse.redirect(authUrl);
  } catch (error) {
    console.error('Google OAuth initiation error:', error);
    return NextResponse.json(
      { error: 'Failed to initiate Google OAuth' },
      { status: 500 }
    );
  }
}
