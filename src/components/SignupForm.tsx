'use client';

import { useState } from 'react';
import { useTranslations } from 'next-intl';
import { Locale } from '@/i18n';

interface OAuthData {
  provider: string;
  oauth_id: string;
  email: string;
  name: string;
  profile_picture: string | null;
}

interface SignupFormProps {
  locale: Locale;
  oauthData: OAuthData;
}

export default function SignupForm({ locale, oauthData }: SignupFormProps) {
  const t = useTranslations('common.auth');
  const [birthdate, setBirthdate] = useState('');
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState('');

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setError('');
    setLoading(true);

    try {
      // Validate birthdate
      if (!birthdate) {
        setError(t('pleaseEnterBirthdate'));
        setLoading(false);
        return;
      }

      const selectedDate = new Date(birthdate);
      const today = new Date();
      const age = today.getFullYear() - selectedDate.getFullYear();

      // Check if user is at least 5 years old
      if (age < 5) {
        setError(t('mustBe5Years'));
        setLoading(false);
        return;
      }

      // Check if date is not in the future
      if (selectedDate > today) {
        setError(t('birthdateCannotBeFuture'));
        setLoading(false);
        return;
      }

      // Submit to API
      const response = await fetch('/api/auth/complete-signup', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          birthdate,
          locale,
        }),
      });

      if (!response.ok) {
        const data = await response.json();
        throw new Error(data.error || t('failedToCompleteSignup'));
      }

      // Redirect to dashboard
      window.location.href = `/${locale}/dashboard`;
    } catch (err) {
      setError(err instanceof Error ? err.message : t('somethingWentWrong'));
      setLoading(false);
    }
  };

  return (
    <div className="w-full max-w-md bg-white dark:bg-gray-800 rounded-2xl shadow-xl p-8">
      {/* Header */}
      <div className="text-center mb-8">
        <h1 className="text-3xl font-bold text-indigo-600 dark:text-indigo-400 mb-2">
          EduFin
        </h1>
        <h2 className="text-xl font-semibold text-gray-900 dark:text-gray-100 mb-2">
          {t('completeSignup')}
        </h2>
        <p className="text-gray-600 dark:text-gray-400">
          {t('welcome', { name: oauthData.name })}
        </p>
      </div>

      {/* Form */}
      <form onSubmit={handleSubmit} className="space-y-6">
        {/* Birthdate Input */}
        <div>
          <label
            htmlFor="birthdate"
            className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2"
          >
            {t('birthdateLabel')}
          </label>
          <input
            type="date"
            id="birthdate"
            value={birthdate}
            onChange={(e) => setBirthdate(e.target.value)}
            max={new Date().toISOString().split('T')[0]}
            required
            className="w-full px-4 py-3 rounded-lg border border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 text-gray-900 dark:text-gray-100 focus:ring-2 focus:ring-indigo-500 focus:border-transparent"
          />
          <p className="mt-2 text-sm text-gray-500 dark:text-gray-400">
            {t('birthdateHelp')}
          </p>
        </div>

        {/* Error Message */}
        {error && (
          <div className="p-4 bg-red-50 dark:bg-red-900/20 border border-red-200 dark:border-red-800 rounded-lg">
            <p className="text-sm text-red-600 dark:text-red-400">{error}</p>
          </div>
        )}

        {/* Submit Button */}
        <button
          type="submit"
          disabled={loading}
          className="w-full py-3 px-4 bg-indigo-600 hover:bg-indigo-700 disabled:bg-gray-400 text-white font-semibold rounded-lg shadow-md transition-colors duration-200 flex items-center justify-center"
        >
          {loading ? (
            <>
              <svg
                className="animate-spin -ml-1 mr-3 h-5 w-5 text-white"
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
              >
                <circle
                  className="opacity-25"
                  cx="12"
                  cy="12"
                  r="10"
                  stroke="currentColor"
                  strokeWidth="4"
                ></circle>
                <path
                  className="opacity-75"
                  fill="currentColor"
                  d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"
                ></path>
              </svg>
              {t('authenticating')}
            </>
          ) : (
            t('completeSignup')
          )}
        </button>
      </form>

      {/* Privacy Note */}
      <div className="mt-6 text-center">
        <p className="text-xs text-gray-500 dark:text-gray-400">
          {t('privacyNote')}
        </p>
      </div>
    </div>
  );
}
