import { cookies } from 'next/headers';
import { redirect } from 'next/navigation';
import { Locale } from '@/i18n';
import SignupForm from '@/components/SignupForm';

// Force dynamic rendering
export const dynamic = 'force-dynamic';

export default async function SignupPage({
  params,
}: {
  params: Promise<{ locale: Locale }>;
}) {
  const { locale } = await params;

  // Check if user has OAuth temp data
  const cookieStore = await cookies();
  const oauthTempData = cookieStore.get('oauth_temp')?.value;

  if (!oauthTempData) {
    // No OAuth data, redirect to home
    redirect(`/${locale}`);
  }

  // Parse OAuth data
  const oauthData = JSON.parse(oauthTempData);

  return (
    <div className="min-h-screen bg-gradient-to-br from-blue-50 to-indigo-100 dark:from-gray-900 dark:to-gray-800 flex items-center justify-center px-4">
      <SignupForm locale={locale} oauthData={oauthData} />
    </div>
  );
}
