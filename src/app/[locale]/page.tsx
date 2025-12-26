import LandingPage from '@/components/LandingPage';
import { Locale } from '@/i18n/request';

export default async function Home({ params }: { params: Promise<{ locale: string }> }) {
  const { locale } = await params;
  return <LandingPage locale={locale as Locale} />;
}
