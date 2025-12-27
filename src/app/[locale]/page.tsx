import LandingPage from '@/components/LandingPage';
import { Locale, locales } from '@/i18n/request';

// Generate static params for all locales
export function generateStaticParams() {
  return locales.map((locale) => ({ locale }));
}

export default async function Home({ params }: { params: Promise<{ locale: string }> }) {
  const { locale } = await params;
  return <LandingPage locale={locale as Locale} />;
}
