import { Metadata } from 'next';
import Link from 'next/link';
import { notFound } from 'next/navigation';
import { getTranslations } from 'next-intl/server';
import { cookies } from 'next/headers';
import { verifyToken } from '@/lib/auth';
import { prisma } from '@/lib/prisma';

export async function generateMetadata({
  params,
}: {
  params: Promise<{ locale: string; categoryId: string }>;
}): Promise<Metadata> {
  const { locale, categoryId } = await params;
  const t = await getTranslations({ locale, namespace: 'learning' });

  return {
    title: t('learningCenter.title'),
    description: t('learningCenter.description'),
  };
}

async function getCategoryLessons(categoryId: string, userId: string) {
  try {
    // For now, we just show all lessons since we have a single category
    const lessons = await prisma.lesson.findMany({
      select: {
        id: true,
        title: true,
        description: true,
        difficulty_level: true,
        display_order: true,
        estimated_minutes: true,
        age_group: true,
        user_progress: {
          where: {
            user_id: userId,
          },
          select: {
            status: true,
            progress_percentage: true,
          },
        },
      },
      orderBy: {
        display_order: 'asc',
      },
    });

    // Transform lessons with progress data
    const lessonsWithProgress = lessons.map((lesson, index) => {
      const progress = lesson.user_progress[0];
      const status = progress?.status || 'not_started';
      const progressPercentage = progress?.progress_percentage || 0;

      // First lesson is always unlocked, others require previous completion
      const isLocked = index > 0 && lessons[index - 1].user_progress[0]?.status !== 'completed';

      return {
        id: lesson.id,
        title: lesson.title,
        description: lesson.description,
        difficulty_level: lesson.difficulty_level,
        estimated_minutes: lesson.estimated_minutes,
        status,
        progress_percentage: progressPercentage,
        isLocked,
      };
    });

    return {
      category: {
        id: categoryId,
        title: 'Financial Education',
        description: 'Complete financial literacy curriculum',
      },
      lessons: lessonsWithProgress,
    };
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
  const t = await getTranslations({ locale, namespace: 'learning' });

  // Get user from cookie
  const cookieStore = await cookies();
  const token = cookieStore.get('token')?.value;
  const payload = token ? await verifyToken(token) : null;
  const userId = payload?.user_id || 'guest';

  const data = await getCategoryLessons(categoryId, userId);

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
            {t('learning.backToLearningCenter')}
          </Link>
        </nav>

        {/* Category Header */}
        <div className="bg-white rounded-xl shadow-md p-8 mb-8">
          <h1 className="text-3xl font-bold text-gray-900 mb-2">{category.title}</h1>
          <p className="text-gray-600 mb-6">{category.description}</p>

          {/* Progress Overview */}
          <div className="space-y-2">
            <div className="flex justify-between items-center text-sm">
              <span className="font-semibold text-gray-700">{t('learning.overallProgress')}</span>
              <span className="text-gray-600">
                {t('learning.lessonsCompleted', { completed: completedLessons, total: totalLessons })}
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
              1: t('learning.easy'),
              2: t('learning.medium'),
              3: t('learning.hard'),
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

            const lessonContent = (
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
                          {t('learning.completePreviousLesson')}
                        </p>
                      )}
                    </div>
                  </div>
                </div>
            );

            // Render as div if locked, Link if unlocked
            if (lesson.isLocked) {
              return (
                <div
                  key={lesson.id}
                  className="block bg-white rounded-lg shadow-sm transition-all duration-200 opacity-50 cursor-not-allowed"
                >
                  {lessonContent}
                </div>
              );
            }

            return (
              <Link
                key={lesson.id}
                href={`/${locale}/learn/lesson/${lesson.id}`}
                className="block bg-white rounded-lg shadow-sm hover:shadow-md transition-all duration-200"
              >
                {lessonContent}
              </Link>
            );
          })}
        </div>

        {/* Empty State */}
        {lessons.length === 0 && (
          <div className="bg-white rounded-lg shadow-md p-12 text-center">
            <div className="text-6xl mb-4">📚</div>
            <h3 className="text-xl font-semibold text-gray-900 mb-2">{t('learning.noLessonsInCategory')}</h3>
            <p className="text-gray-600">{t('learning.checkBackLater')}</p>
          </div>
        )}
      </div>
    </div>
  );
}
