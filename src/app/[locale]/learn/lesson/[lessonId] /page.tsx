'use client';

import { useEffect, useState } from 'react';
import { useParams, useRouter } from 'next/navigation';
import LessonContent from '@/components/lessons/LessonContent';

export default function LessonPage() {
  const params = useParams();
  const router = useRouter();
  const locale = params.locale as string;
  const lessonId = params.lessonId as string;

  const [lesson, setLesson] = useState<any>(null);
  const [progress, setProgress] = useState<any>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    fetchLesson();
  }, [lessonId]);

  const fetchLesson = async () => {
    try {
      setLoading(true);
      const response = await fetch(`/api/lessons/${lessonId}`);

      if (!response.ok) {
        if (response.status === 403) {
          setError('This lesson is locked. Complete the previous lesson first.');
        } else if (response.status === 404) {
          setError('Lesson not found.');
        } else {
          setError('Failed to load lesson.');
        }
        setLoading(false);
        return;
      }

      const data = await response.json();
      setLesson(data.lesson);
      setProgress(data.progress);
      setLoading(false);

      // Mark as started if not already
      if (data.progress.status === 'not_started') {
        handleProgressUpdate(0, 'start');
      }
    } catch (err) {
      console.error('Error fetching lesson:', err);
      setError('Failed to load lesson.');
      setLoading(false);
    }
  };

  const handleProgressUpdate = async (percentage: number, action: string = 'update') => {
    try {
      const response = await fetch(`/api/lessons/${lessonId}/progress`, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          action: action === 'start' ? 'start' : 'update',
          progress_percentage: percentage,
        }),
      });

      if (response.ok) {
        const data = await response.json();
        setProgress(data.progress);
      }
    } catch (err) {
      console.error('Error updating progress:', err);
    }
  };

  const handleComplete = async (quizScore: number) => {
    try {
      const response = await fetch(`/api/lessons/${lessonId}/progress`, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          action: 'complete',
          quizScore,
        }),
      });

      const data = await response.json();

      if (response.ok && data.success) {
        setProgress(data.progress);
        // Optionally show success message or redirect
      } else {
        // Quiz score too low - user can retry
        console.log('Quiz not passed:', data.message);
      }
    } catch (err) {
      console.error('Error completing lesson:', err);
    }
  };

  if (loading) {
    return (
      <div className="min-h-screen bg-gray-50 flex items-center justify-center">
        <div className="text-center">
          <div className="animate-spin rounded-full h-16 w-16 border-b-2 border-blue-600 mx-auto mb-4"></div>
          <p className="text-gray-600 text-lg">Loading lesson...</p>
        </div>
      </div>
    );
  }

  if (error) {
    return (
      <div className="min-h-screen bg-gray-50 flex items-center justify-center px-4">
        <div className="max-w-md w-full bg-white rounded-lg shadow-md p-8 text-center">
          <div className="text-6xl mb-4">🔒</div>
          <h2 className="text-2xl font-bold text-gray-900 mb-2">Cannot Access Lesson</h2>
          <p className="text-gray-600 mb-6">{error}</p>
          <button
            onClick={() => router.push(`/${locale}/learn`)}
            className="px-6 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition-colors"
          >
            Back to Learning Center
          </button>
        </div>
      </div>
    );
  }

  if (!lesson) {
    return (
      <div className="min-h-screen bg-gray-50 flex items-center justify-center">
        <p className="text-gray-600">Lesson not found</p>
      </div>
    );
  }

  return (
    <LessonContent
      lesson={lesson}
      progress={progress}
      locale={locale}
      onProgressUpdate={(percentage) => handleProgressUpdate(percentage, 'update')}
      onComplete={handleComplete}
    />
  );
}
