import createMiddleware from 'next-intl/middleware';
import { NextRequest, NextResponse } from 'next/server';
import { locales, defaultLocale } from './i18n';
import { verifyToken, extractToken } from './lib/auth';

// Create next-intl middleware
const intlMiddleware = createMiddleware({
  locales,
  defaultLocale,
  localePrefix: 'always',
});

export default async function middleware(request: NextRequest) {
  const { pathname } = request.nextUrl;

  // Handle API routes separately
  if (pathname.startsWith('/api/')) {
    // API authentication happens within route handlers
    return NextResponse.next();
  }

  // Apply internationalization first
  const response = intlMiddleware(request);

  // Public routes that don't need authentication
  const publicRoutes = ['/', '/auth/callback', '/auth/signup'];
  const isPublicRoute = publicRoutes.some((route) =>
    pathname === route || pathname.match(new RegExp(`^/(${locales.join('|')})${route}$`))
  );

  // Get the pathname after locale handling
  const currentPathname = request.nextUrl.pathname;

  // Skip auth check for public routes
  if (isPublicRoute) {
    return response;
  }

  // Check authentication for protected routes
  const token = extractToken(
    request.cookies.get('token')?.value,
    request.headers.get('authorization') || undefined
  );

  if (!token) {
    // Redirect to home/login if not authenticated
    const url = request.nextUrl.clone();
    url.pathname = '/';
    return NextResponse.redirect(url);
  }

  // Verify token
  const payload = await verifyToken(token);
  if (!payload) {
    // Invalid token, redirect to home/login
    const url = request.nextUrl.clone();
    url.pathname = '/';
    const response = NextResponse.redirect(url);
    response.cookies.delete('token');
    return response;
  }

  // Check age-based access control
  const isAdultRoute = pathname.includes('/expenses') || pathname.includes('/integrations');
  if (isAdultRoute && payload.age_category === 'kid') {
    // Kids trying to access adult features
    const url = request.nextUrl.clone();
    url.pathname = '/dashboard';
    return NextResponse.redirect(url);
  }

  // Add user info to headers for downstream use
  const responseHeaders = new Headers(response.headers);
  responseHeaders.set('x-user-id', payload.user_id);
  responseHeaders.set('x-age-category', payload.age_category);
  responseHeaders.set('x-user-email', payload.email);

  return NextResponse.next({
    request: {
      headers: responseHeaders,
    },
  });
}

export const config = {
  // Match all routes except static files and API routes
  matcher: ['/((?!_next|_vercel|.*\\..*).*)'],
};
