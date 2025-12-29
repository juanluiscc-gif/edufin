import { locales } from '@/i18n/request';

export function generateStaticParams() {
  return locales.map((locale) => ({ locale }));
}

export default async function Home({ params }: { params: Promise<{ locale: string }> }) {
  const { locale } = await params;
  return (
    <div>
      <h1>LOCALE PAGE WORKS</h1>
      <p>Locale: {locale}</p>
    </div>
  );
}
