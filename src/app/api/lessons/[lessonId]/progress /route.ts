import { NextRequest, NextResponse } from 'next/server';
import { prisma } from '@/lib/prisma';
import { verifyToken, extractToken } from '@/lib/auth';

/**
 * POST /api/lessons/[lessonId]/progress
 * Update user's progress on a lesson
 * Body: { action: "start" | "update" | "complete", progress_percentage?: number, quizScore?: number }
 */
export async function POST(
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

    // Parse request body
    const body = await request.json();
    const { action, progress_percentage, quizScore } = body;

    if (!action || !['start', 'update', 'complete'].includes(action)) {
      return NextResponse.json(
        { error: 'Invalid action. Must be "start", "update", or "complete"' },
        { status: 400 }
      );
    }

    // Get lesson
    const lesson = await prisma.lesson.findUnique({
      where: { id: lessonId },
    });

    if (!lesson) {
      return NextResponse.json({ error: 'Lesson not found' }, { status: 404 });
    }

    // Check if lesson is locked
    const previousLesson = await prisma.lesson.findFirst({
      where: {
        display_order: lesson.display_order - 1,
      },
    });

    if (previousLesson) {
      const prevProgress = await prisma.userLessonProgress.findUnique({
        where: {
          user_id_lesson_id: {
            user_id: userId,
            lesson_id: previousLesson.id,
          },
        },
      });

      const isLocked = !prevProgress || prevProgress.status !== 'completed';
      if (isLocked) {
        return NextResponse.json(
          { error: 'Lesson is locked. Complete previous lesson first.' },
          { status: 403 }
        );
      }
    }

    // Handle different actions
    if (action === 'start') {
      // Create or update progress to in_progress
      const progress = await prisma.userLessonProgress.upsert({
        where: {
          user_id_lesson_id: {
            user_id: userId,
            lesson_id: lessonId,
          },
        },
        update: {
          status: 'in_progress',
          updated_at: new Date(),
        },
        create: {
          user_id: userId,
          lesson_id: lessonId,
          status: 'in_progress',
          progress_percentage: 0,
          started_at: new Date(),
        },
      });

      return NextResponse.json({
        success: true,
        progress: {
          status: progress.status,
          progress_percentage: progress.progress_percentage,
          started_at: progress.started_at,
          completed_at: progress.completed_at,
        },
      });
    }

    if (action === 'update') {
      // Update progress percentage
      if (typeof progress_percentage !== 'number' || progress_percentage < 0 || progress_percentage > 100) {
        return NextResponse.json(
          { error: 'progress_percentage must be a number between 0 and 100' },
          { status: 400 }
        );
      }

      const progress = await prisma.userLessonProgress.upsert({
        where: {
          user_id_lesson_id: {
            user_id: userId,
            lesson_id: lessonId,
          },
        },
        update: {
          progress_percentage,
          status: 'in_progress',
          updated_at: new Date(),
        },
        create: {
          user_id: userId,
          lesson_id: lessonId,
          status: 'in_progress',
          progress_percentage,
          started_at: new Date(),
        },
      });

      return NextResponse.json({
        success: true,
        progress: {
          status: progress.status,
          progress_percentage: progress.progress_percentage,
          started_at: progress.started_at,
          completed_at: progress.completed_at,
        },
      });
    }

    if (action === 'complete') {
      // Validate quiz score if provided
      let content;
      try {
        content = JSON.parse(lesson.content);
      } catch (error) {
        console.error('[API] Failed to parse lesson content:', error);
        return NextResponse.json({ error: 'Invalid lesson content' }, { status: 500 });
      }

      const passingScore = content.quiz?.passingScore || 70;

      if (typeof quizScore !== 'number') {
        return NextResponse.json(
          { error: 'quizScore is required for completion' },
          { status: 400 }
        );
      }

      if (quizScore < passingScore) {
        return NextResponse.json(
          {
            success: false,
            error: 'Quiz score too low',
            message: `You need ${passingScore}% to pass. You scored ${quizScore}%. Try again!`,
            requiredScore: passingScore,
            yourScore: quizScore,
          },
          { status: 400 }
        );
      }

      // Mark as completed
      const progress = await prisma.userLessonProgress.upsert({
        where: {
          user_id_lesson_id: {
            user_id: userId,
            lesson_id: lessonId,
          },
        },
        update: {
          status: 'completed',
          progress_percentage: 100,
          completed_at: new Date(),
          updated_at: new Date(),
        },
        create: {
          user_id: userId,
          lesson_id: lessonId,
          status: 'completed',
          progress_percentage: 100,
          started_at: new Date(),
          completed_at: new Date(),
        },
      });

      return NextResponse.json({
        success: true,
        progress: {
          status: progress.status,
          progress_percentage: progress.progress_percentage,
          started_at: progress.started_at,
          completed_at: progress.completed_at,
        },
        message: 'Congratulations! Lesson completed!',
      });
    }

    return NextResponse.json({ error: 'Invalid action' }, { status: 400 });
  } catch (error) {
    console.error('[API] Error updating lesson progress:', error);
    return NextResponse.json({ error: 'Internal server error' }, { status: 500 });
  }
}
