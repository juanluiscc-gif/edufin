import { NextRequest, NextResponse } from 'next/server';
import { prisma } from '@/lib/prisma';
import { verifyToken, extractToken } from '@/lib/auth';

// Category definitions (same as in categories route)
const CATEGORIES = [
  { id: 'money-basics', title: 'Money Basics', description: 'Understanding currency, value, and exchange', orderStart: 1, orderEnd: 5 },
  { id: 'earning-money', title: 'Earning Money', description: 'Ways to make income and build career skills', orderStart: 6, orderEnd: 9 },
  { id: 'smart-spending', title: 'Smart Spending', description: 'Make wise purchasing decisions and avoid traps', orderStart: 10, orderEnd: 13 },
  { id: 'saving-goals', title: 'Saving Goals', description: 'Build emergency funds and achieve financial goals', orderStart: 14, orderEnd: 18 },
  { id: 'budgeting-planning', title: 'Budgeting & Planning', description: 'Create and manage effective budgets', orderStart: 19, orderEnd: 23 },
  { id: 'investing-basics', title: 'Investing Basics', description: 'Introduction to stocks, bonds, and growing wealth', orderStart: 24, orderEnd: 28 },
  { id: 'business-finance', title: 'Business Finance', description: 'Entrepreneurship and business money management', orderStart: 29, orderEnd: 32 },
  { id: 'credit-debt', title: 'Credit & Debt', description: 'Understanding credit, loans, and debt management', orderStart: 33, orderEnd: 37 },
];

/**
 * GET /api/lessons/category/[categoryId]
 * Get all lessons in a category with user progress
 */
export async function GET(
  request: NextRequest,
  { params }: { params: Promise<{ categoryId: string }> }
) {
  try {
    const { categoryId } = await params;

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

    // Find category
    const category = CATEGORIES.find((c) => c.id === categoryId);
    if (!category) {
      return NextResponse.json({ error: 'Category not found' }, { status: 404 });
    }

    // Get all lessons in this category
    const lessons = await prisma.lesson.findMany({
      where: {
        display_order: {
          gte: category.orderStart,
          lte: category.orderEnd,
        },
      },
      orderBy: {
        display_order: 'asc',
      },
      select: {
        id: true,
        title: true,
        description: true,
        difficulty_level: true,
        estimated_minutes: true,
        display_order: true,
      },
    });

    // Get progress for all lessons
    const lessonIds = lessons.map((l) => l.id);
    const progressRecords = await prisma.userLessonProgress.findMany({
      where: {
        user_id: userId,
        lesson_id: { in: lessonIds },
      },
    });

    // Create a map for quick lookup
    const progressMap = new Map(progressRecords.map((p) => [p.lesson_id, p]));

    // Build response with progress and lock status
    const lessonsWithProgress = lessons.map((lesson, index) => {
      const progress = progressMap.get(lesson.id);

      // Check if lesson is locked (previous lesson not completed)
      let isLocked = false;
      if (index > 0) {
        const prevLesson = lessons[index - 1];
        const prevProgress = progressMap.get(prevLesson.id);
        isLocked = !prevProgress || prevProgress.status !== 'completed';
      }

      return {
        id: lesson.id,
        title: lesson.title,
        description: lesson.description,
        difficulty_level: lesson.difficulty_level,
        estimated_minutes: lesson.estimated_minutes,
        display_order: lesson.display_order,
        status: progress?.status || 'not_started',
        progress_percentage: progress?.progress_percentage || 0,
        isLocked,
        started_at: progress?.started_at || null,
        completed_at: progress?.completed_at || null,
      };
    });

    return NextResponse.json({
      category: {
        id: category.id,
        title: category.title,
        description: category.description,
      },
      lessons: lessonsWithProgress,
    });
  } catch (error) {
    console.error('[API] Error fetching category lessons:', error);
    return NextResponse.json({ error: 'Internal server error' }, { status: 500 });
  }
}
