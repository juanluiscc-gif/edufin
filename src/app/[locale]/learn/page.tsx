import { Metadata } from 'next';
import Link from 'next/link';
import { useTranslations } from 'next-intl';
import { getTranslations } from 'next-intl/server';

export async function generateMetadata({ params }: { params: Promise<{ locale: string }> }): Promise<Metadata> {
  const { locale } = await params;
  const t = await getTranslations({ locale, namespace: 'learning' });

  return {
    title: t('learningCenter.title'),
    description: t('learningCenter.description'),
  };
}

async function getCategories() {
  // This will be called on the server, so we need to use absolute URL
  const baseUrl = process.env.NEXT_PUBLIC_APP_URL || 'http://localhost:3000';

  try {
    const response = await fetch(`${baseUrl}/api/lessons/categories`, {
      headers: {
        // In production, we'd get the cookie from the request
        cookie: '', // Server components need to pass cookies differently
      },
      cache: 'no-store', // Always get fresh data
    });

    if (!response.ok) {
      console.error('Failed to fetch categories:', response.status);
      return { categories: [] };
    }

    return await response.json();
  } catch (error) {
    console.error('Error fetching categories:', error);
    return { categories: [] };
  }
}

export default async function LearnPage({ params }: { params: Promise<{ locale: string }> }) {
  const { locale } = await params;
  const { categories } = await getCategories();

  return (
    <div className="min-h-screen bg-gradient-to-br from-blue-50 to-indigo-100 py-12 px-4 sm:px-6 lg:px-8">
      <div className="max-w-7xl mx-auto">
        {/* Header */}
        <div className="text-center mb-12">
          <h1 className="text-4xl font-bold text-gray-900 mb-4">
            Learning Center
          </h1>
          <p className="text-xl text-gray-600 max-w-2xl mx-auto">
            Master financial literacy through interactive lessons organized by topic
          </p>
        </div>

        {/* Categories Grid */}
        <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
          {categories.map((category: any, index: number) => {
            const completionPercentage = category.lessonCount > 0
              ? Math.round((category.completedCount / category.lessonCount) * 100)
              : 0;

            return (
              <Link
                key={category.id}
                href={`/${locale}/learn/${category.id}`}
                className={`block bg-white rounded-xl shadow-md hover:shadow-xl transition-all duration-300 overflow-hidden ${
                  category.isLocked ? 'opacity-60 cursor-not-allowed' : 'hover:-translate-y-1'
                }`}
                onClick={(e) => {
                  if (category.isLocked) {
                    e.preventDefault();
                  }
                }}
              >
                {/* Category Card */}
                <div className="p-6">
                  {/* Icon and Title */}
                  <div className="flex items-start justify-between mb-4">
                    <div className="flex items-center space-x-3">
                      <span className="text-4xl">{category.icon}</span>
                      <div>
                        <h3 className="text-xl font-bold text-gray-900">
                          {category.title}
                        </h3>
                        {category.isLocked && (
                          <span className="inline-block mt-1 px-2 py-1 text-xs font-semibold text-red-800 bg-red-100 rounded">
                            🔒 Locked
                          </span>
                        )}
                      </div>
                    </div>
                    <span className="text-2xl font-bold text-gray-400">
                      {category.order}
                    </span>
                  </div>

                  {/* Description */}
                  <p className="text-gray-600 text-sm mb-4 line-clamp-2">
                    {category.description}
                  </p>

                  {/* Stats */}
                  <div className="space-y-3">
                    {/* Progress Bar */}
                    <div>
                      <div className="flex justify-between text-sm mb-1">
                        <span className="text-gray-700 font-medium">Progress</span>
                        <span className="text-gray-500">
                          {category.completedCount}/{category.lessonCount} lessons
                        </span>
                      </div>
                      <div className="w-full bg-gray-200 rounded-full h-2">
                        <div
                          className={`h-2 rounded-full transition-all duration-300 ${
                            completionPercentage === 100
                              ? 'bg-green-500'
                              : completionPercentage > 0
                              ? 'bg-blue-500'
                              : 'bg-gray-300'
                          }`}
                          style={{ width: `${completionPercentage}%` }}
                        />
                      </div>
                    </div>

                    {/* Metadata */}
                    <div className="flex items-center justify-between text-sm text-gray-500">
                      <span className="flex items-center">
                        📚 {category.lessonCount} lessons
                      </span>
                      <span className="flex items-center">
                        ⏱️ {category.totalMinutes} min
                      </span>
                    </div>
                  </div>

                  {/* CTA */}
                  {!category.isLocked && (
                    <div className="mt-4 pt-4 border-t border-gray-100">
                      <span className="text-blue-600 font-semibold text-sm flex items-center">
                        {category.completedCount === 0 ? 'Start Learning' : 'Continue'}
                        <svg
                          className="w-4 h-4 ml-1"
                          fill="none"
                          stroke="currentColor"
                          viewBox="0 0 24 24"
                        >
                          <path
                            strokeLinecap="round"
                            strokeLinejoin="round"
                            strokeWidth={2}
                            d="M9 5l7 7-7 7"
                          />
                        </svg>
                      </span>
                    </div>
                  )}

                  {category.isLocked && (
                    <div className="mt-4 pt-4 border-t border-gray-100">
                      <p className="text-sm text-gray-500">
                        Complete the previous category to unlock
                      </p>
                    </div>
                  )}
                </div>
              </Link>
            );
          })}
        </div>

        {/* Empty State */}
        {categories.length === 0 && (
          <div className="text-center py-12">
            <div className="text-6xl mb-4">📚</div>
            <h3 className="text-xl font-semibold text-gray-900 mb-2">No lessons yet</h3>
            <p className="text-gray-600">
              Lessons will appear here once they are added to the database.
            </p>
          </div>
        )}
      </div>
    </div>
  );
}
