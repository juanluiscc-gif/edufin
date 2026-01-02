import { NextRequest, NextResponse } from 'next/server';
import { prisma } from '@/lib/prisma';
import { verifyToken, extractToken } from '@/lib/auth';

/**
 * GET /api/lessons/categories
 * Get all lesson categories with progress for authenticated user
 */
export async function GET(request: NextRequest) {
  try {
    // Verify authentication
    const token = extractToken(
      request.headers.get('cookie') || undefined,
      request.headers.get('authorization') || undefined
    );

    if (!token) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
    }

    const payload = await verifyToken(token);
    if (!payload) {
      return NextResponse.json({ error: 'Invalid token' }, { status: 401 });
    }

    const userId = payload.user_id;

    // Define categories based on seed structure
    // In the seed file, we set display_order 1-5 for money-basics, etc.
    // We'll identify categories by display_order ranges
    const categories = [
      {
        id: 'money-basics',
        title: 'Money Basics',
        description: 'Understanding currency, value, and exchange',
        icon: '💰',
        orderRangeStart: 1,
        orderRangeEnd: 5,
        order: 1,
      },
      {
        id: 'earning-money',
        title: 'Earning Money',
        description: 'Ways to make income and build career skills',
        icon: '💵',
        orderRangeStart: 6,
        orderRangeEnd: 9,
        order: 2,
      },
      {
        id: 'smart-spending',
        title: 'Smart Spending',
        description: 'Make wise purchasing decisions and avoid traps',
        icon: '🛒',
        orderRangeStart: 10,
        orderRangeEnd: 13,
        order: 3,
      },
      {
        id: 'saving-goals',
        title: 'Saving Goals',
        description: 'Build emergency funds and achieve financial goals',
        icon: '🏦',
        orderRangeStart: 14,
        orderRangeEnd: 18,
        order: 4,
      },
      {
        id: 'budgeting-planning',
        title: 'Budgeting & Planning',
        description: 'Create and manage effective budgets',
        icon: '📊',
        orderRangeStart: 19,
        orderRangeEnd: 23,
        order: 5,
      },
      {
        id: 'investing-basics',
        title: 'Investing Basics',
        description: 'Introduction to stocks, bonds, and growing wealth',
        icon: '📈',
        orderRangeStart: 24,
        orderRangeEnd: 28,
        order: 6,
      },
      {
        id: 'business-finance',
        title: 'Business Finance',
        description: 'Entrepreneurship and business money management',
        icon: '🏢',
        orderRangeStart: 29,
        orderRangeEnd: 32,
        order: 7,
      },
      {
        id: 'credit-debt',
        title: 'Credit & Debt',
        description: 'Understanding credit, loans, and debt management',
        icon: '💳',
        orderRangeStart: 33,
        orderRangeEnd: 37,
        order: 8,
      },
    ];

    // Build response for each category
    const categoriesWithProgress = await Promise.all(
      categories.map(async (category) => {
        // Get all lessons in this category
        const lessons = await prisma.lesson.findMany({
          where: {
            display_order: {
              gte: category.orderRangeStart,
              lte: category.orderRangeEnd,
            },
          },
          select: {
            id: true,
            estimated_minutes: true,
          },
        });

        const lessonIds = lessons.map((l) => l.id);

        // Get completed count for user
        const completedCount = await prisma.userLessonProgress.count({
          where: {
            user_id: userId,
            lesson_id: { in: lessonIds },
            status: 'completed',
          },
        });

        // Calculate total minutes
        const totalMinutes = lessons.reduce((sum, l) => sum + l.estimated_minutes, 0);

        // Determine if locked (must complete previous category first)
        let isLocked = false;
        if (category.order > 1) {
          // Get previous category
          const prevCategory = categories.find((c) => c.order === category.order - 1);
          if (prevCategory) {
            const prevLessons = await prisma.lesson.findMany({
              where: {
                display_order: {
                  gte: prevCategory.orderRangeStart,
                  lte: prevCategory.orderRangeEnd,
                },
              },
              select: { id: true },
            });

            const prevLessonIds = prevLessons.map((l) => l.id);
            const prevCompletedCount = await prisma.userLessonProgress.count({
              where: {
                user_id: userId,
                lesson_id: { in: prevLessonIds },
                status: 'completed',
              },
            });

            // Lock if previous category not 100% complete
            isLocked = prevCompletedCount < prevLessons.length;
          }
        }

        return {
          id: category.id,
          title: category.title,
          description: category.description,
          icon: category.icon,
          lessonCount: lessons.length,
          completedCount,
          totalMinutes,
          isLocked,
          order: category.order,
        };
      })
    );

    return NextResponse.json({
      categories: categoriesWithProgress,
    });
  } catch (error) {
    console.error('[API] Error fetching lesson categories:', error);
    return NextResponse.json({ error: 'Internal server error' }, { status: 500 });
  }
}
