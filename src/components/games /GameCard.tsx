'use client';

import Link from 'next/link';
import { GameType } from '@prisma/client';

interface GameCardProps {
  id: string;
  title: string;
  gameType: GameType;
  difficultyLevel: number;
  maxScore: number;
  userHighScore: number | null;
  hasPlayed: boolean;
  locale: string;
}

const gameTypeEmojis: Record<GameType, string> = {
  quiz: '📝',
  simulation: '🏪',
  puzzle: '🧩',
  scenario: '🎭'
};

const gameTypeLabels: Record<GameType, string> = {
  quiz: 'QUIZ',
  simulation: 'SIMULATION',
  puzzle: 'PUZZLE',
  scenario: 'SCENARIO'
};

const difficultyLabels = ['Beginner', 'Easy', 'Medium', 'Hard', 'Expert'];

export default function GameCard({
  id,
  title,
  gameType,
  difficultyLevel,
  maxScore,
  userHighScore,
  hasPlayed,
  locale
}: GameCardProps) {
  const emoji = gameTypeEmojis[gameType] || '🎮';
  const typeLabel = gameTypeLabels[gameType] || gameType.toUpperCase();
  const difficultyLabel = difficultyLabels[difficultyLevel] || 'Normal';

  return (
    <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6 hover:scale-105 transition-transform duration-200 flex flex-col">
      {/* Game Icon */}
      <div className="text-5xl mb-4 text-center">{emoji}</div>

      {/* Game Title */}
      <h3 className="text-lg font-bold text-gray-900 dark:text-gray-100 text-center mb-2">
        {title}
      </h3>

      {/* Game Type and Difficulty */}
      <div className="flex justify-between items-center mb-3 text-xs">
        <span className="bg-blue-100 dark:bg-blue-900 text-blue-800 dark:text-blue-200 px-2 py-1 rounded font-semibold">
          {typeLabel}
        </span>
        <span className="text-gray-600 dark:text-gray-400">
          {difficultyLabel}
        </span>
      </div>

      {/* High Score Display */}
      <div className="mb-4 text-center">
        {hasPlayed && userHighScore !== null ? (
          <div>
            <div className="text-sm text-gray-600 dark:text-gray-400">High Score</div>
            <div className="text-2xl font-bold text-green-600 dark:text-green-400">
              {userHighScore.toLocaleString()}
            </div>
            <div className="text-xs text-gray-500">
              Max: {maxScore.toLocaleString()}
            </div>
          </div>
        ) : (
          <div className="text-sm text-gray-500 dark:text-gray-400 italic">
            Not Played Yet
          </div>
        )}
      </div>

      {/* Play Button */}
      <Link
        href={`/${locale}/games/${id}`}
        className="mt-auto w-full bg-blue-600 hover:bg-blue-700 text-white font-semibold py-2 px-4 rounded text-center transition-colors duration-200"
      >
        Play Now
      </Link>
    </div>
  );
}
