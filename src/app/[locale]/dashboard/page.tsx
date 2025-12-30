import { cookies } from 'next/headers';
import { redirect } from 'next/navigation';
import { verifyToken } from '@/lib/auth';
import { Locale } from '@/i18n';
import Navigation from '@/components/Navigation';
import DashboardContent from '@/components/DashboardContent';

export default async function DashboardPage({
  params,
}: {
  params: Promise<{ locale: Locale }>;
}) {
  const { locale } = await params;

  // Check authentication
  const cookieStore = await cookies();
  const token = cookieStore.get('token')?.value;

  if (!token) {
    redirect(`/${locale}`);
  }

  const payload = await verifyToken(token);
  if (!payload) {
    redirect(`/${locale}`);
  }

  return (
    <div className="min-h-screen bg-gray-50 dark:bg-gray-900">
      <Navigation
        locale={locale}
        ageCategory={payload.age_category}
        userName={payload.email.split('@')[0]}
      />
      <DashboardContent
        locale={locale}
        ageCategory={payload.age_category}
        userId={payload.user_id}
      />
    </div>
  );
}
