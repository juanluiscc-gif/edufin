import { NextRequest, NextResponse } from 'next/server';
import { prisma } from '@/lib/prisma';
import { verifyToken, extractToken } from '@/lib/auth';

/**
 * GET /api/lessons/stats
 * Get learning statistics for the authenticated user
 * Returns: totalLessons, completedLessons, inProgressLessons, currentStreak
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

    // Get total lessons count
    const totalLessons = await prisma.lesson.count();

    // Get completed lessons count
    const completedLessons = await prisma.userLessonProgress.count({
      where: {
        user_id: userId,
        status: 'completed',
      },
    });

    // Get in-progress lessons count
    const inProgressLessons = await prisma.userLessonProgress.count({
      where: {
        user_id: userId,
        status: 'in_progress',
      },
    });

    // Calculate current streak (consecutive days with at least 1 lesson completed)
    const currentStreak = await calculateStreak(userId);

    return NextResponse.json({
      totalLessons,
      completedLessons,
      inProgressLessons,
      currentStreak,
    });
  } catch (error) {
    console.error('[API] Error fetching lesson stats:', error);
    return NextResponse.json({ error: 'Internal server error' }, { status: 500 });
  }
}

/**
 * Calculate consecutive days streak for lesson completion
 */
async function calculateStreak(userId: string): Promise<number> {
  try {
    // Get all completed lessons sorted by completion date (descending)
    const completedLessons = await prisma.userLessonProgress.findMany({
      where: {
        user_id: userId,
        status: 'completed',
        completed_at: {
          not: null,
        },
      },
      select: {
        completed_at: true,
      },
      orderBy: {
        completed_at: 'desc',
      },
    });

    if (completedLessons.length === 0) {
      return 0;
    }

    // Get unique dates (ignore time)
    const uniqueDates = new Set<string>();
    completedLessons.forEach((lesson) => {
      if (lesson.completed_at) {
        const dateStr = lesson.completed_at.toISOString().split('T')[0];
        uniqueDates.add(dateStr);
      }
    });

    const sortedDates = Array.from(uniqueDates).sort((a, b) => b.localeCompare(a));

    // Check if most recent completion was today or yesterday
    const today = new Date();
    today.setHours(0, 0, 0, 0);
    const todayStr = today.toISOString().split('T')[0];

    const yesterday = new Date(today);
    yesterday.setDate(yesterday.getDate() - 1);
    const yesterdayStr = yesterday.toISOString().split('T')[0];

    // If most recent is not today or yesterday, streak is 0
    if (sortedDates[0] !== todayStr && sortedDates[0] !== yesterdayStr) {
      return 0;
    }

    // Count consecutive days
    let streak = 0;
    let currentDate = new Date(sortedDates[0]);

    for (const dateStr of sortedDates) {
      const checkDate = new Date(dateStr);
      const diffDays = Math.floor(
        (currentDate.getTime() - checkDate.getTime()) / (1000 * 60 * 60 * 24)
      );

      if (diffDays <= 1 && diffDays >= 0) {
        streak++;
        currentDate = checkDate;
      } else {
        break;
      }
    }

    return streak;
  } catch (error) {
    console.error('[API] Error calculating streak:', error);
    return 0;
  }
}
