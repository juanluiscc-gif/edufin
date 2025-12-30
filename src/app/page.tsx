import { cookies } from 'next/headers';
import { redirect } from 'next/navigation';
import { verifyToken } from '@/lib/auth';
import LandingPage from '@/components/LandingPage';
import { defaultLocale } from '@/i18n';

export const dynamic = 'force-dynamic';

export default async function RootPage() {
  // Check if user is authenticated
  const cookieStore = await cookies();
  const token = cookieStore.get('token')?.value;

  if (token) {
    const payload = await verifyToken(token);
    if (payload) {
      // User is authenticated, redirect to dashboard with default locale
      redirect(`/${defaultLocale}/dashboard`);
    }
  }

  // User is not authenticated, show landing page with default locale
  return <LandingPage locale={defaultLocale} />;
}
