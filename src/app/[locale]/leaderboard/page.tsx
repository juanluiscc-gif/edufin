'use client';

import { useEffect, useState } from 'react';
import { useParams, useSearchParams } from 'next/navigation';
import Link from 'next/link';

// Mark this page as dynamic to prevent prerendering during build
export const dynamic = 'force-dynamic';

interface LeaderboardEntry {
  id: string;
  userId: string;
  userName: string;
  profilePicture?: string;
  score: number;
  rank: number;
  achievedAt: Date;
}

export default function LeaderboardPage() {
  const params = useParams();
  const searchParams = useSearchParams();
  const locale = params.locale as string;
  const gameId = searchParams.get('game');

  const [leaderboard, setLeaderboard] = useState<LeaderboardEntry[]>([]);
  const [loading, setLoading] = useState(true);
  const [leaderboardType, setLeaderboardType] = useState<'global' | 'weekly' | 'age_group'>('global');

  useEffect(() => {
    fetchLeaderboard();
  }, [gameId, leaderboardType]);

  const fetchLeaderboard = async () => {
    setLoading(true);
    try {
      let url;
      if (gameId) {
        url = `/api/leaderboard/${gameId}?type=${leaderboardType}`;
      } else {
        url = `/api/leaderboard/global`;
      }

      const response = await fetch(url);
      const data = await response.json();

      if (data.success) {
        setLeaderboard(data.leaderboard);
      }
    } catch (error) {
      console.error('Error fetching leaderboard:', error);
    } finally {
      setLoading(false);
    }
  };

  const getRankEmoji = (rank: number): string => {
    if (rank === 1) return '🥇';
    if (rank === 2) return '🥈';
    if (rank === 3) return '🥉';
    return '';
  };

  const getRankClass = (rank: number): string => {
    if (rank === 1) return 'bg-yellow-50 dark:bg-yellow-900 border-yellow-400';
    if (rank === 2) return 'bg-gray-50 dark:bg-gray-700 border-gray-400';
    if (rank === 3) return 'bg-orange-50 dark:bg-orange-900 border-orange-400';
    return 'bg-white dark:bg-gray-800 border-gray-200 dark:border-gray-700';
  };

  return (
    <div className="min-h-screen bg-gray-50 dark:bg-gray-900 p-8">
      <div className="max-w-5xl mx-auto">
        {/* Header */}
        <div className="mb-8">
          <h1 className="text-4xl font-bold text-gray-900 dark:text-gray-100 mb-2">
            🏆 Leaderboards
          </h1>
          <p className="text-gray-600 dark:text-gray-400">
            Compete with players worldwide
          </p>
        </div>

        {/* Back to Games */}
        <div className="mb-6">
          <Link
            href={`/${locale}/games`}
            className="text-blue-600 dark:text-blue-400 hover:underline"
          >
            ← Back to Games
          </Link>
        </div>

        {/* Leaderboard Type Filters */}
        {gameId && (
          <div className="flex gap-3 mb-8">
            <button
              onClick={() => setLeaderboardType('global')}
              className={`px-5 py-2 rounded-lg font-medium transition-colors ${
                leaderboardType === 'global'
                  ? 'bg-blue-600 text-white'
                  : 'bg-white dark:bg-gray-800 text-gray-800 dark:text-gray-200 hover:bg-gray-100 dark:hover:bg-gray-700'
              }`}
            >
              🌍 Global
            </button>
            <button
              onClick={() => setLeaderboardType('weekly')}
              className={`px-5 py-2 rounded-lg font-medium transition-colors ${
                leaderboardType === 'weekly'
                  ? 'bg-blue-600 text-white'
                  : 'bg-white dark:bg-gray-800 text-gray-800 dark:text-gray-200 hover:bg-gray-100 dark:hover:bg-gray-700'
              }`}
            >
              📅 This Week
            </button>
            <button
              onClick={() => setLeaderboardType('age_group')}
              className={`px-5 py-2 rounded-lg font-medium transition-colors ${
                leaderboardType === 'age_group'
                  ? 'bg-blue-600 text-white'
                  : 'bg-white dark:bg-gray-800 text-gray-800 dark:text-gray-200 hover:bg-gray-100 dark:hover:bg-gray-700'
              }`}
            >
              👥 My Age Group
            </button>
          </div>
        )}

        {/* Leaderboard Table */}
        {loading ? (
          <div className="text-center py-12">
            <div className="text-xl text-gray-600 dark:text-gray-400">Loading leaderboard...</div>
          </div>
        ) : leaderboard.length > 0 ? (
          <div className="space-y-3">
            {leaderboard.map((entry) => (
              <div
                key={entry.id}
                className={`flex items-center gap-4 p-4 rounded-lg border-2 ${getRankClass(entry.rank)}`}
              >
                {/* Rank */}
                <div className="text-2xl font-bold w-16 text-center">
                  {getRankEmoji(entry.rank)}
                  {entry.rank <= 3 ? '' : `#${entry.rank}`}
                </div>

                {/* Profile Picture */}
                {entry.profilePicture ? (
                  <img
                    src={entry.profilePicture}
                    alt={entry.userName}
                    className="w-12 h-12 rounded-full"
                  />
                ) : (
                  <div className="w-12 h-12 rounded-full bg-gray-300 dark:bg-gray-600 flex items-center justify-center text-xl">
                    👤
                  </div>
                )}

                {/* Name */}
                <div className="flex-1">
                  <div className="font-semibold text-gray-900 dark:text-gray-100">
                    {entry.userName}
                  </div>
                </div>

                {/* Score */}
                <div className="text-right">
                  <div className="text-2xl font-bold text-blue-600 dark:text-blue-400">
                    {entry.score.toLocaleString()}
                  </div>
                  <div className="text-xs text-gray-500">points</div>
                </div>
              </div>
            ))}
          </div>
        ) : (
          <div className="text-center py-12">
            <div className="text-6xl mb-4">🏆</div>
            <div className="text-xl text-gray-600 dark:text-gray-400 mb-2">
              No entries yet
            </div>
            <p className="text-gray-500">Be the first to play and claim the top spot!</p>
          </div>
        )}
      </div>
    </div>
  );
}
