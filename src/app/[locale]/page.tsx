import { cookies } from 'next/headers';
import { redirect } from 'next/navigation';
import { verifyToken } from '@/lib/auth';
import LandingPage from '@/components/LandingPage';
import { Locale } from '@/i18n';

export default async function HomePage({
  params,
}: {
  params: Promise<{ locale: Locale }>;
}) {
  const { locale } = await params;

  // Check if user is authenticated
  const cookieStore = await cookies();
  const token = cookieStore.get('token')?.value;

  if (token) {
    const payload = await verifyToken(token);
    if (payload) {
      // User is authenticated, redirect to dashboard
      redirect(`/${locale}/dashboard`);
    }
  }

  // User is not authenticated, show landing page
  return <LandingPage locale={locale} />;
}
