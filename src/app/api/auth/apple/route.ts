import { NextRequest, NextResponse } from 'next/server';
import { getAppleAuthUrl } from '@/lib/oauth';
import { defaultLocale } from '@/i18n';


export const dynamic = 'force-dynamic';
/**
 * Apple OAuth initiation endpoint
 * Redirects user to Apple's OAuth consent screen
 */
export async function GET(request: NextRequest) {
  try {
    // Get locale from query params or use default
    const searchParams = request.nextUrl.searchParams;
    const locale = searchParams.get('locale') || defaultLocale;

    // Generate Apple OAuth URL
    const authUrl = getAppleAuthUrl(locale);

    // Redirect to Apple
    return NextResponse.redirect(authUrl);
  } catch (error) {
    console.error('Apple OAuth initiation error:', error);
    return NextResponse.json(
      { error: 'Failed to initiate Apple OAuth' },
      { status: 500 }
    );
  }
}
