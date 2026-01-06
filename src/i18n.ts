import { notFound } from 'next/navigation';
import { getRequestConfig } from 'next-intl/server';

// Supported locales
export const locales = ['en', 'es', 'fr', 'de', 'ja', 'zh', 'hi', 'it', 'pt'] as const;
export type Locale = (typeof locales)[number];

export const defaultLocale: Locale = 'en';

// Locale labels for language selector
export const localeLabels: Record<Locale, string> = {
  en: 'English',
  es: 'Español',
  fr: 'Français',
  de: 'Deutsch',
  ja: '日本語',
  zh: '中文',
  hi: 'हिन्दी',
  it: 'Italiano',
  pt: 'Português',
};

export default getRequestConfig(async (params) => {
  // Provide a fallback locale if params.locale is undefined
  const locale = params.locale || defaultLocale;

  // Validate that the incoming `locale` parameter is valid
  if (!locales.includes(locale as Locale)) {
    notFound();
  }

  // Load all translation files and merge them
  const [common, learning, games, expenses, integrations] = await Promise.all([
    import(`./locales/${locale}/common.json`).then((m) => m.default),
    import(`./locales/${locale}/learning.json`).then((m) => m.default),
    import(`./locales/${locale}/games.json`).then((m) => m.default),
    import(`./locales/${locale}/expenses.json`).then((m) => m.default),
    import(`./locales/${locale}/integrations.json`).then((m) => m.default),
  ]);

  return {
    locale,
    messages: {
      common,
      learning,
      games,
      expenses,
      integrations,
    },
  };
});
