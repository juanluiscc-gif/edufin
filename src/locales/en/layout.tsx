import { NextIntlClientProvider } from 'next-intl';

export default async function EnglishLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  const messages = (await import('@/locales/en/common.json')).default;

  return (
    <html lang="en">
      <body>
        <NextIntlClientProvider locale="en" messages={messages}>
          {children}
        </NextIntlClientProvider>
      </body>
    </html>
  );
}
