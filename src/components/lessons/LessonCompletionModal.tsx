'use client';

import { useRouter } from 'next/navigation';

interface Game {
  id: string;
  title: string;
  description: string;
}

interface LessonCompletionModalProps {
  lessonTitle: string;
  recommendedGame: Game | null;
  onClose: () => void;
  locale: string;
}

export default function LessonCompletionModal({
  lessonTitle,
  recommendedGame,
  onClose,
  locale,
}: LessonCompletionModalProps) {
  const router = useRouter();

  const handlePlayGame = () => {
    if (recommendedGame) {
      router.push(`/${locale}/games/${recommendedGame.id}`);
    }
  };

  const handleContinueLearning = () => {
    router.push(`/${locale}/learn`);
    onClose();
  };

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center p-4 bg-black bg-opacity-50">
      <div className="bg-white rounded-lg shadow-xl max-w-md w-full p-6 relative animate-fade-in">
        {/* Close button */}
        <button
          onClick={onClose}
          className="absolute top-4 right-4 text-gray-400 hover:text-gray-600 transition-colors"
          aria-label="Close"
        >
          <svg
            className="w-6 h-6"
            fill="none"
            strokeLinecap="round"
            strokeLinejoin="round"
            strokeWidth="2"
            viewBox="0 0 24 24"
            stroke="currentColor"
          >
            <path d="M6 18L18 6M6 6l12 12" />
          </svg>
        </button>

        {/* Success animation */}
        <div className="text-center mb-6">
          <div className="inline-flex items-center justify-center w-20 h-20 bg-green-100 rounded-full mb-4">
            <svg
              className="w-12 h-12 text-green-600"
              fill="none"
              stroke="currentColor"
              viewBox="0 0 24 24"
            >
              <path
                strokeLinecap="round"
                strokeLinejoin="round"
                strokeWidth="2"
                d="M5 13l4 4L19 7"
              />
            </svg>
          </div>
          <h2 className="text-3xl font-bold text-gray-900 mb-2">Congratulations!</h2>
          <p className="text-gray-600">
            You completed <strong className="text-gray-900">{lessonTitle}</strong>
          </p>
        </div>

        {/* Recommended game section */}
        {recommendedGame && (
          <div className="mb-6 p-4 bg-blue-50 border-2 border-blue-200 rounded-lg">
            <p className="text-sm font-semibold text-blue-900 mb-3">
              Want to practice? Try this game:
            </p>
            <div className="bg-white rounded-lg p-4 mb-3">
              <h3 className="font-semibold text-gray-900 mb-1">{recommendedGame.title}</h3>
              <p className="text-sm text-gray-600">{recommendedGame.description}</p>
            </div>
            <button
              onClick={handlePlayGame}
              className="w-full py-2 px-4 bg-blue-600 hover:bg-blue-700 text-white font-semibold rounded-lg transition-colors"
            >
              Play Game 🎮
            </button>
          </div>
        )}

        {/* Continue learning button */}
        <button
          onClick={handleContinueLearning}
          className={`w-full py-3 px-6 font-semibold rounded-lg transition-colors ${
            recommendedGame
              ? 'bg-gray-100 hover:bg-gray-200 text-gray-900'
              : 'bg-blue-600 hover:bg-blue-700 text-white'
          }`}
        >
          Continue Learning →
        </button>
      </div>

      <style jsx>{`
        @keyframes fade-in {
          from {
            opacity: 0;
            transform: scale(0.9);
          }
          to {
            opacity: 1;
            transform: scale(1);
          }
        }
        .animate-fade-in {
          animation: fade-in 0.2s ease-out;
        }
      `}</style>
    </div>
  );
}
