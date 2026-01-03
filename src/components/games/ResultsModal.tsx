'use client';

import Link from 'next/link';
import { calculatePerformanceRating, calculateLetterGrade } from '@/lib/scoring';

interface ResultsModalProps {
  gameTitle: string;
  score: number;
  maxScore: number;
  timeTaken: number;
  rank: {
    global: number | null;
    weekly: number | null;
    ageGroup: number | null;
  };
  isPersonalBest: boolean;
  improvement: number;
  averageScore: number;
  previousBest: number;
  locale: string;
  gameId: string;
  onPlayAgain: () => void;
}

export default function ResultsModal({
  gameTitle,
  score,
  maxScore,
  timeTaken,
  rank,
  isPersonalBest,
  improvement,
  averageScore,
  previousBest,
  locale,
  gameId,
  onPlayAgain
}: ResultsModalProps) {
  const performanceRating = calculatePerformanceRating(score, maxScore);
  const letterGrade = calculateLetterGrade(score, maxScore);
  const percentage = ((score / maxScore) * 100).toFixed(1);

  const formatTime = (seconds: number): string => {
    const mins = Math.floor(seconds / 60);
    const secs = seconds % 60;
    return `${mins}m ${secs}s`;
  };

  const getRankEmoji = (rank: number | null): string => {
    if (!rank) return '';
    if (rank === 1) return '🥇';
    if (rank === 2) return '🥈';
    if (rank === 3) return '🥉';
    if (rank <= 10) return '🏆';
    return '';
  };

  const getPerformanceColor = (): string => {
    if (performanceRating >= 4.5) return 'text-yellow-500';
    if (performanceRating >= 3.5) return 'text-green-500';
    if (performanceRating >= 2.5) return 'text-blue-500';
    return 'text-gray-500';
  };

  return (
    <div className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50 p-4">
      <div className="bg-white dark:bg-gray-800 rounded-xl shadow-2xl max-w-2xl w-full max-h-[90vh] overflow-y-auto">
        {/* Header */}
        <div className="bg-gradient-to-r from-blue-500 to-purple-600 p-8 text-center text-white">
          <div className="text-6xl mb-4">🎉</div>
          <h2 className="text-3xl font-bold mb-2">Game Complete!</h2>
          <div className="text-xl opacity-90">{gameTitle}</div>
        </div>

        {/* Score Display */}
        <div className="p-8">
          <div className="text-center mb-8">
            <div className={`text-6xl font-bold mb-2 ${getPerformanceColor()}`}>
              {score.toLocaleString()}
            </div>
            <div className="text-gray-600 dark:text-gray-400 mb-4">
              out of {maxScore.toLocaleString()} ({percentage}%)
            </div>

            {/* Stars and Grade */}
            <div className="flex items-center justify-center gap-6 mb-4">
              <div className="text-4xl">
                {'★'.repeat(performanceRating)}{'☆'.repeat(5 - performanceRating)}
              </div>
              <div className={`text-4xl font-bold ${getPerformanceColor()}`}>
                {letterGrade}
              </div>
            </div>

            {/* Personal Best Badge */}
            {isPersonalBest && (
              <div className="inline-block bg-yellow-100 dark:bg-yellow-900 text-yellow-800 dark:text-yellow-200 px-4 py-2 rounded-full font-semibold mb-2">
                🏆 New Personal Best!
              </div>
            )}

            {/* Improvement */}
            {previousBest > 0 && improvement !== 0 && (
              <div className="text-sm text-gray-600 dark:text-gray-400">
                {improvement > 0 ? (
                  <span className="text-green-600 dark:text-green-400">
                    ↑ +{improvement}% better than previous best
                  </span>
                ) : (
                  <span className="text-gray-500">
                    Previous best: {previousBest.toLocaleString()}
                  </span>
                )}
              </div>
            )}
          </div>

          {/* Leaderboard Ranks */}
          <div className="grid grid-cols-3 gap-4 mb-8">
            <div className="bg-gray-100 dark:bg-gray-700 p-4 rounded-lg text-center">
              <div className="text-2xl mb-1">
                {getRankEmoji(rank.global)} #{rank.global || '--'}
              </div>
              <div className="text-sm text-gray-600 dark:text-gray-400">Global Rank</div>
            </div>
            <div className="bg-gray-100 dark:bg-gray-700 p-4 rounded-lg text-center">
              <div className="text-2xl mb-1">
                {getRankEmoji(rank.weekly)} #{rank.weekly || '--'}
              </div>
              <div className="text-sm text-gray-600 dark:text-gray-400">This Week</div>
            </div>
            <div className="bg-gray-100 dark:bg-gray-700 p-4 rounded-lg text-center">
              <div className="text-2xl mb-1">
                {getRankEmoji(rank.ageGroup)} #{rank.ageGroup || '--'}
              </div>
              <div className="text-sm text-gray-600 dark:text-gray-400">Age Group</div>
            </div>
          </div>

          {/* Stats */}
          <div className="bg-gray-50 dark:bg-gray-900 rounded-lg p-6 mb-8">
            <h3 className="font-semibold text-gray-900 dark:text-gray-100 mb-4">
              Detailed Stats
            </h3>
            <div className="space-y-3 text-sm">
              <div className="flex justify-between">
                <span className="text-gray-600 dark:text-gray-400">Time Taken:</span>
                <span className="font-semibold text-gray-900 dark:text-gray-100">
                  {formatTime(timeTaken)}
                </span>
              </div>
              <div className="flex justify-between">
                <span className="text-gray-600 dark:text-gray-400">Your Score:</span>
                <span className="font-semibold text-gray-900 dark:text-gray-100">
                  {score.toLocaleString()}
                </span>
              </div>
              <div className="flex justify-between">
                <span className="text-gray-600 dark:text-gray-400">Average Score:</span>
                <span className="font-semibold text-gray-900 dark:text-gray-100">
                  {averageScore.toLocaleString()}
                </span>
              </div>
              {averageScore > 0 && (
                <div className="flex justify-between">
                  <span className="text-gray-600 dark:text-gray-400">vs. Average:</span>
                  <span className={`font-semibold ${
                    score > averageScore
                      ? 'text-green-600 dark:text-green-400'
                      : 'text-gray-600 dark:text-gray-400'
                  }`}>
                    {score > averageScore
                      ? `+${Math.round(((score - averageScore) / averageScore) * 100)}% above average`
                      : `${Math.round(((averageScore - score) / averageScore) * 100)}% below average`
                    }
                  </span>
                </div>
              )}
            </div>
          </div>

          {/* Action Buttons */}
          <div className="space-y-3">
            <button
              onClick={onPlayAgain}
              className="w-full bg-blue-600 hover:bg-blue-700 text-white font-semibold py-3 px-6 rounded-lg transition-colors"
            >
              Play Again
            </button>
            <Link
              href={`/${locale}/leaderboard?game=${gameId}`}
              className="block w-full bg-yellow-500 hover:bg-yellow-600 text-white font-semibold py-3 px-6 rounded-lg text-center transition-colors"
            >
              View Leaderboard
            </Link>
            <div className="grid grid-cols-2 gap-3">
              <Link
                href={`/${locale}/games`}
                className="bg-gray-200 dark:bg-gray-700 hover:bg-gray-300 dark:hover:bg-gray-600 text-gray-800 dark:text-gray-200 font-semibold py-3 px-6 rounded-lg text-center transition-colors"
              >
                More Games
              </Link>
              <Link
                href={`/${locale}/dashboard`}
                className="bg-gray-200 dark:bg-gray-700 hover:bg-gray-300 dark:hover:bg-gray-600 text-gray-800 dark:text-gray-200 font-semibold py-3 px-6 rounded-lg text-center transition-colors"
              >
                Dashboard
              </Link>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
