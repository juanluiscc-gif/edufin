import createMiddleware from 'next-intl/middleware';
import { NextRequest, NextResponse } from 'next/server';
import { locales, defaultLocale } from './i18n';
import { verifyToken, extractToken } from './lib/auth';

// Create next-intl middleware
const intlMiddleware = createMiddleware({
  locales,
  defaultLocale: 'en',
  localePrefix: 'as-needed'
});

export default async function middleware(request: NextRequest) {
  const { pathname } = request.nextUrl;

  // Handle API routes separately
  if (pathname.startsWith('/api/')) {
    // API authentication happens within route handlers
    return NextResponse.next();
  }

  // Apply internationalization
  return intlMiddleware(request);

  // TODO: Re-enable auth middleware after verifying routes work
  // Auth code temporarily removed for debugging
}

export const config = {
  // Match all routes except static files and API routes
  matcher: ['/((?!_next|_vercel|.*\\..*).*)'],
};
