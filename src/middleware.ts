import createMiddleware from 'next-intl/middleware';
import { locales, defaultLocale } from './i18n/request';

export default createMiddleware({
  locales,
  defaultLocale,
  localePrefix: 'always',
});

export const config = {
  // Match all routes except static files and API routes
  matcher: ['/((?!api|_next|_vercel|.*\\..*).*)'],
};
