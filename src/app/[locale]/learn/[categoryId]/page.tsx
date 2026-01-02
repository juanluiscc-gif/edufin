import { Metadata } from 'next';
import Link from 'next/link';
import { notFound } from 'next/navigation';

export async function generateMetadata({
  params,
}: {
  params: Promise<{ locale: string; categoryId: string }>;
}): Promise<Metadata> {
  const { categoryId } = await params;

  return {
    title: `${categoryId} Lessons`,
    description: `Learn about ${categoryId} through interactive lessons`,
  };
}

async function getCategoryLessons(categoryId: string) {
  const baseUrl = process.env.NEXT_PUBLIC_APP_URL || 'http://localhost:3000';

  try {
    const response = await fetch(`${baseUrl}/api/lessons/category/${categoryId}`, {
      cache: 'no-store',
    });

    if (!response.ok) {
      if (response.status === 404) return null;
      console.error('Failed to fetch category lessons:', response.status);
      return null;
    }

    return await response.json();
  } catch (error) {
    console.error('Error fetching category lessons:', error);
    return null;
  }
}

export default async function CategoryPage({
  params,
}: {
  params: Promise<{ locale: string; categoryId: string }>;
}) {
  const { locale, categoryId } = await params;
  const data = await getCategoryLessons(categoryId);

  if (!data) {
    notFound();
  }

  const { category, lessons } = data;

  const completedLessons = lessons.filter((l: any) => l.status === 'completed').length;
  const totalLessons = lessons.length;
  const progressPercentage = totalLessons > 0 ? Math.round((completedLessons / totalLessons) * 100) : 0;

  return (
    <div className="min-h-screen bg-gradient-to-br from-blue-50 to-indigo-100 py-8 px-4 sm:px-6 lg:px-8">
      <div className="max-w-4xl mx-auto">
        {/* Breadcrumb */}
        <nav className="mb-6">
          <Link
            href={`/${locale}/learn`}
            className="text-blue-600 hover:text-blue-800 font-medium flex items-center"
          >
            <svg
              className="w-4 h-4 mr-2"
              fill="none"
              stroke="currentColor"
              viewBox="0 0 24 24"
            >
              <path
                strokeLinecap="round"
                strokeLinejoin="round"
                strokeWidth={2}
                d="M15 19l-7-7 7-7"
              />
            </svg>
            Back to Learning Center
          </Link>
        </nav>

        {/* Category Header */}
        <div className="bg-white rounded-xl shadow-md p-8 mb-8">
          <h1 className="text-3xl font-bold text-gray-900 mb-2">{category.title}</h1>
          <p className="text-gray-600 mb-6">{category.description}</p>

          {/* Progress Overview */}
          <div className="space-y-2">
            <div className="flex justify-between items-center text-sm">
              <span className="font-semibold text-gray-700">Overall Progress</span>
              <span className="text-gray-600">
                {completedLessons}/{totalLessons} lessons completed
              </span>
            </div>
            <div className="w-full bg-gray-200 rounded-full h-3">
              <div
                className={`h-3 rounded-full transition-all duration-300 ${
                  progressPercentage === 100
                    ? 'bg-green-500'
                    : progressPercentage > 0
                    ? 'bg-blue-500'
                    : 'bg-gray-300'
                }`}
                style={{ width: `${progressPercentage}%` }}
              />
            </div>
          </div>
        </div>

        {/* Lessons List */}
        <div className="space-y-4">
          {lessons.map((lesson: any, index: number) => {
            const difficultyColors = {
              1: 'text-green-600 bg-green-100',
              2: 'text-yellow-600 bg-yellow-100',
              3: 'text-red-600 bg-red-100',
            };

            const difficultyLabels = {
              1: 'Easy',
              2: 'Medium',
              3: 'Hard',
            };

            const statusIcons = {
              completed: '✓',
              in_progress: '▶',
              not_started: index + 1,
            };

            const statusColors = {
              completed: 'bg-green-500 text-white',
              in_progress: 'bg-blue-500 text-white',
              not_started: 'bg-gray-200 text-gray-600',
            };

            const canAccess = !lesson.isLocked;

            return (
              <Link
                key={lesson.id}
                href={canAccess ? `/${locale}/learn/lesson/${lesson.id}` : '#'}
                className={`block bg-white rounded-lg shadow-sm hover:shadow-md transition-all duration-200 ${
                  lesson.isLocked ? 'opacity-50 cursor-not-allowed' : ''
                }`}
                onClick={(e) => {
                  if (lesson.isLocked) {
                    e.preventDefault();
                  }
                }}
              >
                <div className="p-6">
                  <div className="flex items-start">
                    {/* Number/Status Badge */}
                    <div
                      className={`flex-shrink-0 w-10 h-10 rounded-full flex items-center justify-center font-bold text-sm mr-4 ${
                        statusColors[lesson.status as keyof typeof statusColors]
                      }`}
                    >
                      {statusIcons[lesson.status as keyof typeof statusIcons]}
                    </div>

                    {/* Lesson Info */}
                    <div className="flex-1">
                      <div className="flex items-start justify-between">
                        <div>
                          <h3 className="text-lg font-semibold text-gray-900 mb-1">
                            {lesson.title}
                          </h3>
                          <p className="text-sm text-gray-600 mb-3">{lesson.description}</p>
                        </div>
                        {lesson.isLocked && (
                          <span className="ml-2 text-gray-400 text-xl">🔒</span>
                        )}
                      </div>

                      {/* Metadata */}
                      <div className="flex items-center space-x-4 text-sm">
                        <span
                          className={`px-2 py-1 rounded font-medium ${
                            difficultyColors[lesson.difficulty_level as keyof typeof difficultyColors]
                          }`}
                        >
                          {difficultyLabels[lesson.difficulty_level as keyof typeof difficultyLabels]}
                        </span>
                        <span className="text-gray-500">
                          ⏱️ {lesson.estimated_minutes} min
                        </span>
                        {lesson.progress_percentage > 0 && lesson.status !== 'completed' && (
                          <span className="text-blue-600 font-medium">
                            {lesson.progress_percentage}% complete
                          </span>
                        )}
                      </div>

                      {/* Progress Bar (for in-progress lessons) */}
                      {lesson.status === 'in_progress' && (
                        <div className="mt-3 w-full bg-gray-200 rounded-full h-1.5">
                          <div
                            className="bg-blue-500 h-1.5 rounded-full transition-all duration-300"
                            style={{ width: `${lesson.progress_percentage}%` }}
                          />
                        </div>
                      )}

                      {/* Lock Message */}
                      {lesson.isLocked && (
                        <p className="mt-2 text-xs text-gray-500">
                          Complete the previous lesson to unlock this one
                        </p>
                      )}
                    </div>
                  </div>
                </div>
              </Link>
            );
          })}
        </div>

        {/* Empty State */}
        {lessons.length === 0 && (
          <div className="bg-white rounded-lg shadow-md p-12 text-center">
            <div className="text-6xl mb-4">📚</div>
            <h3 className="text-xl font-semibold text-gray-900 mb-2">No lessons in this category</h3>
            <p className="text-gray-600">Check back later for new content!</p>
          </div>
        )}
      </div>
    </div>
  );
}
