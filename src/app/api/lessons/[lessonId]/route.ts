import { NextRequest, NextResponse } from 'next/server';
import { prisma } from '@/lib/prisma';
import { verifyToken, extractToken } from '@/lib/auth';

/**
 * GET /api/lessons/[lessonId]
 * Get full lesson content with user progress
 */
export async function GET(
  request: NextRequest,
  { params }: { params: Promise<{ lessonId: string }> }
) {
  try {
    const { lessonId } = await params;

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
    const userAgeCategory = payload.age_category;

    // Get lesson
    const lesson = await prisma.lesson.findUnique({
      where: { id: lessonId },
    });

    if (!lesson) {
      return NextResponse.json({ error: 'Lesson not found' }, { status: 404 });
    }

    // Check if lesson is locked (previous lesson not completed)
    const previousLesson = await prisma.lesson.findFirst({
      where: {
        display_order: lesson.display_order - 1,
      },
    });

    let isLocked = false;
    if (previousLesson) {
      const prevProgress = await prisma.userLessonProgress.findUnique({
        where: {
          user_id_lesson_id: {
            user_id: userId,
            lesson_id: previousLesson.id,
          },
        },
      });

      isLocked = !prevProgress || prevProgress.status !== 'completed';
    }

    if (isLocked) {
      return NextResponse.json(
        { error: 'Lesson is locked. Complete previous lesson first.' },
        { status: 403 }
      );
    }

    // Get user progress
    const progress = await prisma.userLessonProgress.findUnique({
      where: {
        user_id_lesson_id: {
          user_id: userId,
          lesson_id: lessonId,
        },
      },
    });

    // Parse content JSON
    let content;
    try {
      content = JSON.parse(lesson.content);
    } catch (error) {
      console.error('[API] Failed to parse lesson content:', error);
      return NextResponse.json({ error: 'Invalid lesson content' }, { status: 500 });
    }

    // Get next and previous lesson IDs in the same category range
    const nextLesson = await prisma.lesson.findFirst({
      where: {
        display_order: lesson.display_order + 1,
      },
      select: { id: true },
    });

    const prevLessonId = previousLesson?.id || null;
    const nextLessonId = nextLesson?.id || null;

    return NextResponse.json({
      lesson: {
        id: lesson.id,
        title: lesson.title,
        description: lesson.description,
        difficulty_level: lesson.difficulty_level,
        estimated_minutes: lesson.estimated_minutes,
        age_group: lesson.age_group,
        content,
      },
      progress: progress
        ? {
            status: progress.status,
            progress_percentage: progress.progress_percentage,
            started_at: progress.started_at,
            completed_at: progress.completed_at,
          }
        : {
            status: 'not_started',
            progress_percentage: 0,
            started_at: null,
            completed_at: null,
          },
      isLocked,
      previousLesson: prevLessonId,
      nextLesson: nextLessonId,
      userAgeCategory,
    });
  } catch (error) {
    console.error('[API] Error fetching lesson:', error);
    return NextResponse.json({ error: 'Internal server error' }, { status: 500 });
  }
}
