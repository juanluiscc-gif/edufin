'use client';

import { useState, useEffect } from 'react';
import ReactMarkdown from 'react-markdown';
import remarkGfm from 'remark-gfm';
import LessonQuiz, { Quiz } from './LessonQuiz';
import LessonCompletionModal from './LessonCompletionModal';

interface Section {
  title: string;
  content: string;
  order: number;
}

interface LessonData {
  id: string;
  title: string;
  description: string;
  difficulty_level: number;
  estimated_minutes: number;
  content: {
    sections: Section[];
    quiz: Quiz;
    recommendedGame?: string | null;
  };
}

interface Progress {
  status: string;
  progress_percentage: number;
  started_at: string | null;
  completed_at: string | null;
}

interface LessonContentProps {
  lesson: LessonData;
  progress: Progress;
  locale: string;
  onProgressUpdate: (percentage: number) => void;
  onComplete: (quizScore: number) => void;
}

export default function LessonContent({
  lesson,
  progress,
  locale,
  onProgressUpdate,
  onComplete,
}: LessonContentProps) {
  const [currentSectionIndex, setCurrentSectionIndex] = useState(0);
  const [showQuiz, setShowQuiz] = useState(false);
  const [showCompletionModal, setShowCompletionModal] = useState(false);
  const [quizPassed, setQuizPassed] = useState(false);

  const sections = lesson.content.sections.sort((a, b) => a.order - b.order);
  const totalSections = sections.length;
  const currentSection = sections[currentSectionIndex];

  // Calculate progress based on current section
  useEffect(() => {
    if (!showQuiz && !showCompletionModal) {
      const progressPercentage = Math.round(((currentSectionIndex + 1) / totalSections) * 80); // 80% for sections, 20% for quiz
      onProgressUpdate(progressPercentage);
    }
  }, [currentSectionIndex, totalSections, showQuiz, showCompletionModal, onProgressUpdate]);

  const handleNext = () => {
    if (currentSectionIndex < totalSections - 1) {
      setCurrentSectionIndex(currentSectionIndex + 1);
    } else {
      // Last section, show quiz
      setShowQuiz(true);
    }
  };

  const handlePrevious = () => {
    if (currentSectionIndex > 0) {
      setCurrentSectionIndex(currentSectionIndex - 1);
    }
  };

  const handleQuizComplete = async (score: number, passed: boolean) => {
    setQuizPassed(passed);

    if (passed) {
      // Call the completion handler
      onComplete(score);
      // Show completion modal
      setTimeout(() => {
        setShowCompletionModal(true);
      }, 500);
    }
  };

  const difficultyLabel = ['', 'Easy', 'Medium', 'Hard'][lesson.difficulty_level] || 'Medium';
  const difficultyColor = ['', 'text-green-600', 'text-yellow-600', 'text-red-600'][
    lesson.difficulty_level
  ] || 'text-yellow-600';

  return (
    <div className="flex min-h-screen bg-gray-50">
      {/* Sidebar */}
      <aside className="w-64 bg-white border-r border-gray-200 p-6 overflow-y-auto">
        <div className="mb-6">
          <h2 className="text-lg font-bold text-gray-900 mb-2">Lesson Progress</h2>
          <div className="w-full bg-gray-200 rounded-full h-2 mb-2">
            <div
              className="bg-blue-600 h-2 rounded-full transition-all duration-300"
              style={{ width: `${progress.progress_percentage}%` }}
            />
          </div>
          <p className="text-sm text-gray-600">{progress.progress_percentage}% Complete</p>
        </div>

        <div className="space-y-2">
          <h3 className="text-sm font-semibold text-gray-700 uppercase mb-3">Sections</h3>
          {sections.map((section, index) => (
            <button
              key={index}
              onClick={() => {
                if (!showQuiz) {
                  setCurrentSectionIndex(index);
                }
              }}
              disabled={showQuiz}
              className={`w-full text-left p-3 rounded-lg transition-colors ${
                currentSectionIndex === index && !showQuiz
                  ? 'bg-blue-100 text-blue-900 font-semibold'
                  : 'text-gray-700 hover:bg-gray-100'
              } ${showQuiz ? 'opacity-50 cursor-not-allowed' : ''}`}
            >
              <div className="flex items-center">
                {currentSectionIndex > index && !showQuiz ? (
                  <span className="mr-2 text-green-600">✓</span>
                ) : (
                  <span className="mr-2 text-gray-400">{index + 1}</span>
                )}
                <span className="text-sm">{section.title}</span>
              </div>
            </button>
          ))}

          <button
            onClick={() => setShowQuiz(true)}
            disabled={!showQuiz && currentSectionIndex < totalSections - 1}
            className={`w-full text-left p-3 rounded-lg transition-colors ${
              showQuiz
                ? 'bg-blue-100 text-blue-900 font-semibold'
                : 'text-gray-700 hover:bg-gray-100'
            } ${!showQuiz && currentSectionIndex < totalSections - 1 ? 'opacity-50' : ''}`}
          >
            <div className="flex items-center">
              {quizPassed ? (
                <span className="mr-2 text-green-600">✓</span>
              ) : (
                <span className="mr-2">📝</span>
              )}
              <span className="text-sm">Final Quiz</span>
            </div>
          </button>
        </div>
      </aside>

      {/* Main Content */}
      <main className="flex-1 p-8 overflow-y-auto">
        <div className="max-w-4xl mx-auto">
          {/* Header */}
          <div className="bg-white rounded-lg shadow-sm p-6 mb-6">
            <div className="flex items-start justify-between mb-4">
              <div>
                <h1 className="text-3xl font-bold text-gray-900 mb-2">{lesson.title}</h1>
                <p className="text-gray-600">{lesson.description}</p>
              </div>
              <div className="flex flex-col items-end gap-2">
                <span className={`text-sm font-semibold ${difficultyColor}`}>
                  {difficultyLabel}
                </span>
                <span className="text-sm text-gray-500">⏱️ {lesson.estimated_minutes} min</span>
              </div>
            </div>

            <div className="w-full bg-gray-200 rounded-full h-3">
              <div
                className="bg-gradient-to-r from-blue-500 to-blue-600 h-3 rounded-full transition-all duration-300"
                style={{ width: `${progress.progress_percentage}%` }}
              />
            </div>
          </div>

          {/* Section Content or Quiz */}
          {!showQuiz ? (
            <div className="bg-white rounded-lg shadow-sm p-8">
              <h2 className="text-2xl font-bold text-gray-900 mb-6">{currentSection.title}</h2>
              <div className="prose prose-lg max-w-none">
                <ReactMarkdown remarkPlugins={[remarkGfm]}>{currentSection.content}</ReactMarkdown>
              </div>

              {/* Navigation */}
              <div className="flex justify-between items-center mt-8 pt-6 border-t border-gray-200">
                <button
                  onClick={handlePrevious}
                  disabled={currentSectionIndex === 0}
                  className={`px-6 py-2 rounded-lg font-semibold transition-colors ${
                    currentSectionIndex === 0
                      ? 'bg-gray-100 text-gray-400 cursor-not-allowed'
                      : 'bg-gray-200 text-gray-700 hover:bg-gray-300'
                  }`}
                >
                  ← Previous
                </button>

                <span className="text-sm text-gray-500">
                  Section {currentSectionIndex + 1} of {totalSections}
                </span>

                <button
                  onClick={handleNext}
                  className="px-6 py-2 rounded-lg font-semibold bg-blue-600 text-white hover:bg-blue-700 transition-colors"
                >
                  {currentSectionIndex < totalSections - 1 ? 'Next →' : 'Take Quiz →'}
                </button>
              </div>
            </div>
          ) : (
            <LessonQuiz quiz={lesson.content.quiz} onComplete={handleQuizComplete} />
          )}
        </div>
      </main>

      {/* Completion Modal */}
      {showCompletionModal && (
        <LessonCompletionModal
          lessonTitle={lesson.title}
          recommendedGame={null} // TODO: Fetch game data if recommendedGame ID exists
          onClose={() => setShowCompletionModal(false)}
          locale={locale}
        />
      )}
    </div>
  );
}
