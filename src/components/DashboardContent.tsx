'use client';

import { useTranslations } from 'next-intl';
import Link from 'next/link';
import { AgeCategory } from '@/lib/types';
import { Locale } from '@/i18n';

interface DashboardContentProps {
  locale: Locale;
  ageCategory: AgeCategory;
  userId: string;
}

export default function DashboardContent({ locale, ageCategory, userId }: DashboardContentProps) {
  const t = useTranslations('common.dashboard');
  const isAdult = ageCategory === AgeCategory.adult;

  return (
    <div className="container mx-auto px-4 py-8">
      {/* Welcome Section */}
      <div className="mb-8">
        <h1 className="text-4xl font-bold text-gray-900 dark:text-gray-100 mb-2">
          {t('title')}
        </h1>
        <p className="text-lg text-gray-600 dark:text-gray-400">
          Welcome back! Here's your financial education journey.
        </p>
      </div>

      {/* Quick Stats */}
      <div className="grid grid-cols-1 md:grid-cols-3 gap-6 mb-8">
        {/* Learning Progress */}
        <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6">
          <div className="flex items-center justify-between mb-4">
            <h3 className="text-lg font-semibold text-gray-900 dark:text-gray-100">
              {t('learningProgress')}
            </h3>
            <span className="text-3xl">📚</span>
          </div>
          <div className="text-3xl font-bold text-indigo-600 dark:text-indigo-400 mb-2">0</div>
          <p className="text-sm text-gray-600 dark:text-gray-400">{t('lessonsCompleted')}</p>
          <Link
            href={`/${locale}/learn`}
            className="mt-4 inline-block text-sm text-indigo-600 dark:text-indigo-400 hover:underline"
          >
            {t('continueLearning')} →
          </Link>
        </div>

        {/* Games Played */}
        <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6">
          <div className="flex items-center justify-between mb-4">
            <h3 className="text-lg font-semibold text-gray-900 dark:text-gray-100">
              {t('gamesPlayed')}
            </h3>
            <span className="text-3xl">🎮</span>
          </div>
          <div className="text-3xl font-bold text-green-600 dark:text-green-400 mb-2">0</div>
          <p className="text-sm text-gray-600 dark:text-gray-400">Games completed</p>
          <Link
            href={`/${locale}/games`}
            className="mt-4 inline-block text-sm text-green-600 dark:text-green-400 hover:underline"
          >
            Play now →
          </Link>
        </div>

        {/* Current Streak */}
        <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6">
          <div className="flex items-center justify-between mb-4">
            <h3 className="text-lg font-semibold text-gray-900 dark:text-gray-100">
              {t('currentStreak')}
            </h3>
            <span className="text-3xl">🔥</span>
          </div>
          <div className="text-3xl font-bold text-orange-600 dark:text-orange-400 mb-2">0</div>
          <p className="text-sm text-gray-600 dark:text-gray-400">{t('days')}</p>
        </div>
      </div>

      {/* Adult-specific Dashboard */}
      {isAdult && (
        <div className="grid grid-cols-1 md:grid-cols-2 gap-6 mb-8">
          {/* Expense Summary */}
          <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6">
            <div className="flex items-center justify-between mb-4">
              <h3 className="text-lg font-semibold text-gray-900 dark:text-gray-100">
                Expense Summary
              </h3>
              <span className="text-3xl">💰</span>
            </div>
            <div className="space-y-2">
              <div className="flex justify-between">
                <span className="text-sm text-gray-600 dark:text-gray-400">This Month</span>
                <span className="text-sm font-medium text-gray-900 dark:text-gray-100">$0.00</span>
              </div>
              <div className="flex justify-between">
                <span className="text-sm text-gray-600 dark:text-gray-400">Budget Remaining</span>
                <span className="text-sm font-medium text-gray-900 dark:text-gray-100">$0.00</span>
              </div>
            </div>
            <Link
              href={`/${locale}/expenses`}
              className="mt-4 inline-block text-sm text-indigo-600 dark:text-indigo-400 hover:underline"
            >
              View expenses →
            </Link>
          </div>

          {/* Integrations */}
          <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6">
            <div className="flex items-center justify-between mb-4">
              <h3 className="text-lg font-semibold text-gray-900 dark:text-gray-100">
                Business Integrations
              </h3>
              <span className="text-3xl">🔗</span>
            </div>
            <p className="text-sm text-gray-600 dark:text-gray-400 mb-4">
              Connect your business tools to manage everything in one place.
            </p>
            <Link
              href={`/${locale}/integrations`}
              className="inline-block text-sm text-indigo-600 dark:text-indigo-400 hover:underline"
            >
              Connect services →
            </Link>
          </div>
        </div>
      )}

      {/* Recent Activity */}
      <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6">
        <h3 className="text-lg font-semibold text-gray-900 dark:text-gray-100 mb-4">
          {t('recentActivity')}
        </h3>
        <p className="text-center text-gray-600 dark:text-gray-400 py-8">
          Start learning or playing games to see your activity here!
        </p>
      </div>
    </div>
  );
}
