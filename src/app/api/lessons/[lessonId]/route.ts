import { NextRequest, NextResponse } from 'next/server';
import { prisma } from '@/lib/prisma';
import { verifyToken, extractToken } from '@/lib/auth';
import { Language } from '@prisma/client';

/**
 * GET /api/lessons/[lessonId]
 * Get full lesson content with user progress
 * Supports multilingual content via ContentTranslation table
 */
export async function GET(
  request: NextRequest,
  { params }: { params: Promise<{ lessonId: string }> }
) {
  try {
    const { lessonId } = await params;

    // Get locale from query parameter or header (default to 'en')
    const url = new URL(request.url);
    const locale = (url.searchParams.get('locale') ||
                   request.headers.get('accept-language')?.split(',')[0]?.split('-')[0] ||
                   'en') as Language;

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

    // Parse content JSON (always in English from DB)
    let content;
    try {
      content = JSON.parse(lesson.content);
    } catch (error) {
      console.error('[API] Failed to parse lesson content:', error);
      return NextResponse.json({ error: 'Invalid lesson content' }, { status: 500 });
    }

    // If locale is not English, apply translations from ContentTranslation table
    if (locale !== 'en') {
      try {
        // Get all translations for this lesson in the target language
        const translations = await prisma.contentTranslation.findMany({
          where: {
            content_type: 'lesson',
            content_id: lessonId,
            target_language: locale,
          },
        });

        // Apply translations to content
        for (const translation of translations) {
          const fieldPath = translation.field_name;
          const translatedText = translation.translated_text;

          // Parse field path (e.g., "sections[0].title", "quiz.questions[1].options[2]")
          const pathParts = fieldPath.match(/([^\[\.]+)|\[(\d+)\]/g);

          if (pathParts) {
            let current: any = content;

            // Navigate to the field
            for (let i = 0; i < pathParts.length - 1; i++) {
              const part = pathParts[i];
              if (part.startsWith('[')) {
                const index = parseInt(part.slice(1, -1));
                current = current[index];
              } else {
                current = current[part];
              }
            }

            // Set the translated value
            const lastPart = pathParts[pathParts.length - 1];
            if (lastPart.startsWith('[')) {
              const index = parseInt(lastPart.slice(1, -1));
              current[index] = translatedText;
            } else {
              current[lastPart] = translatedText;
            }
          }
        }
      } catch (error) {
        console.error('[API] Failed to apply translations:', error);
        // Continue with English content if translations fail
      }
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
