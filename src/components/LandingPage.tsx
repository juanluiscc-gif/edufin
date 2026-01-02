'use client';

import { useTranslations } from 'next-intl';
import { Locale } from '@/i18n';

export default function LandingPage({ locale }: { locale: Locale }) {
  const t = useTranslations('common.auth');

  const handleGoogleSignIn = () => {
    window.location.href = `/api/auth/google?locale=${locale}`;
  };

  const handleAppleSignIn = () => {
    window.location.href = `/api/auth/apple?locale=${locale}`;
  };

  return (
    <div className="min-h-screen bg-gradient-to-br from-blue-50 to-indigo-100 dark:from-gray-900 dark:to-gray-800">
      {/* Hero Section */}
      <div className="container mx-auto px-4 py-16">
        <div className="max-w-4xl mx-auto text-center">
          {/* Logo/Brand */}
          <h1 className="text-6xl font-bold text-indigo-600 dark:text-indigo-400 mb-4">
            EduFin
          </h1>

          {/* Tagline */}
          <p className="text-2xl text-gray-700 dark:text-gray-300 mb-8">
            Learn financial literacy through interactive lessons and games
          </p>

          {/* Auth Buttons */}
          <div className="flex flex-col sm:flex-row gap-4 justify-center mb-16">
            <button
              onClick={handleGoogleSignIn}
              className="flex items-center justify-center gap-3 bg-white dark:bg-gray-800 px-8 py-4 rounded-lg shadow-lg hover:shadow-xl transition-all text-gray-800 dark:text-gray-200 font-semibold"
            >
              <svg className="w-6 h-6" viewBox="0 0 24 24">
                <path
                  fill="#4285F4"
                  d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z"
                />
                <path
                  fill="#34A853"
                  d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z"
                />
                <path
                  fill="#FBBC05"
                  d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l2.85-2.22.81-.62z"
                />
                <path
                  fill="#EA4335"
                  d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z"
                />
              </svg>
              {t('signInWithGoogle')}
            </button>

            <button
              onClick={handleAppleSignIn}
              className="flex items-center justify-center gap-3 bg-black dark:bg-white px-8 py-4 rounded-lg shadow-lg hover:shadow-xl transition-all text-white dark:text-black font-semibold"
            >
              <svg className="w-6 h-6" fill="currentColor" viewBox="0 0 24 24">
                <path d="M17.05 20.28c-.98.95-2.05.8-3.08.35-1.09-.46-2.09-.48-3.24 0-1.44.62-2.2.44-3.06-.35C2.79 15.25 3.51 7.59 9.05 7.31c1.35.07 2.29.74 3.08.8 1.18-.24 2.31-.93 3.57-.84 1.51.12 2.65.72 3.4 1.8-3.12 1.87-2.38 5.98.48 7.13-.57 1.5-1.31 2.99-2.54 4.09l.01-.01zM12.03 7.25c-.15-2.23 1.66-4.07 3.74-4.25.29 2.58-2.34 4.5-3.74 4.25z" />
              </svg>
              {t('signInWithApple')}
            </button>
          </div>

          {/* Feature Highlights */}
          <div className="grid md:grid-cols-3 gap-8 mt-16">
            {/* Feature 1 */}
            <div className="bg-white dark:bg-gray-800 p-8 rounded-xl shadow-lg">
              <div className="text-5xl mb-4">📚</div>
              <h3 className="text-xl font-semibold text-gray-800 dark:text-gray-200 mb-2">
                Interactive Learning
              </h3>
              <p className="text-gray-600 dark:text-gray-400">
                Age-appropriate lessons that adapt to your needs, from basic money concepts to advanced investing.
              </p>
            </div>

            {/* Feature 2 */}
            <div className="bg-white dark:bg-gray-800 p-8 rounded-xl shadow-lg">
              <div className="text-5xl mb-4">🎮</div>
              <h3 className="text-xl font-semibold text-gray-800 dark:text-gray-200 mb-2">
                Educational Games
              </h3>
              <p className="text-gray-600 dark:text-gray-400">
                Learn through play with quizzes, simulations, puzzles, and real-world scenarios.
              </p>
            </div>

            {/* Feature 3 */}
            <div className="bg-white dark:bg-gray-800 p-8 rounded-xl shadow-lg">
              <div className="text-5xl mb-4">💰</div>
              <h3 className="text-xl font-semibold text-gray-800 dark:text-gray-200 mb-2">
                Expense Tracking
              </h3>
              <p className="text-gray-600 dark:text-gray-400">
                For adults: Track expenses, set budgets, and get AI-powered financial insights.
              </p>
            </div>
          </div>

          {/* Additional Features for Adults */}
          <div className="mt-12 bg-white dark:bg-gray-800 p-8 rounded-xl shadow-lg">
            <h3 className="text-2xl font-semibold text-gray-800 dark:text-gray-200 mb-4">
              For Business Owners
            </h3>
            <p className="text-gray-600 dark:text-gray-400 mb-4">
              Connect your e-commerce and accounting platforms to manage orders, inventory, invoices, and more - all while learning best practices.
            </p>
            <div className="flex flex-wrap justify-center gap-4">
              <span className="px-4 py-2 bg-indigo-100 dark:bg-indigo-900 rounded-full text-indigo-800 dark:text-indigo-200 font-medium">
                Shopify
              </span>
              <span className="px-4 py-2 bg-indigo-100 dark:bg-indigo-900 rounded-full text-indigo-800 dark:text-indigo-200 font-medium">
                WooCommerce
              </span>
              <span className="px-4 py-2 bg-indigo-100 dark:bg-indigo-900 rounded-full text-indigo-800 dark:text-indigo-200 font-medium">
                QuickBooks
              </span>
              <span className="px-4 py-2 bg-indigo-100 dark:bg-indigo-900 rounded-full text-indigo-800 dark:text-indigo-200 font-medium">
                Xero
              </span>
            </div>
          </div>
        </div>
      </div>

      {/* Footer */}
      <footer className="bg-white dark:bg-gray-800 border-t border-gray-200 dark:border-gray-700 mt-16 py-8">
        <div className="container mx-auto px-4 text-center">
          <div className="flex justify-center gap-8 mb-4">
            <a href="#" className="text-gray-600 dark:text-gray-400 hover:text-indigo-600 dark:hover:text-indigo-400">
              About
            </a>
            <a href="#" className="text-gray-600 dark:text-gray-400 hover:text-indigo-600 dark:hover:text-indigo-400">
              Privacy Policy
            </a>
            <a href="#" className="text-gray-600 dark:text-gray-400 hover:text-indigo-600 dark:hover:text-indigo-400">
              Terms of Service
            </a>
          </div>
          <p className="text-gray-600 dark:text-gray-400">
            © 2025 EduFin. All rights reserved.
          </p>
        </div>
      </footer>
    </div>
  );
}
