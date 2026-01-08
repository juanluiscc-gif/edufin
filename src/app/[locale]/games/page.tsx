'use client';

import { useEffect, useState } from 'react';
import { useParams } from 'next/navigation';
import { useTranslations } from 'next-intl';
import Link from 'next/link';
import GameCard from '@/components/games/GameCard';
import { GameType } from '@prisma/client';

interface Game {
  id: string;
  title: string;
  game_type: GameType;
  difficulty_level: number;
  max_score: number;
  userHighScore: number | null;
  hasPlayed: boolean;
}

type FilterType = 'all' | GameType;

export default function GamesPage() {
  const params = useParams();
  const locale = params.locale as string;
  const t = useTranslations('games');
  const tTypes = useTranslations('games.gameTypes');

  const [games, setGames] = useState<Game[]>([]);
  const [filteredGames, setFilteredGames] = useState<Game[]>([]);
  const [loading, setLoading] = useState(true);
  const [activeFilter, setActiveFilter] = useState<FilterType>('all');

  // Fetch games on mount
  useEffect(() => {
    fetchGames();
  }, []);

  // Filter games when filter changes
  useEffect(() => {
    if (activeFilter === 'all') {
      setFilteredGames(games);
    } else {
      setFilteredGames(games.filter(g => g.game_type === activeFilter));
    }
  }, [activeFilter, games]);

  const fetchGames = async () => {
    try {
      const response = await fetch('/api/games/list');
      const data = await response.json();

      if (data.success) {
        setGames(data.games);
        setFilteredGames(data.games);
      }
    } catch (error) {
      console.error('Error fetching games:', error);
    } finally {
      setLoading(false);
    }
  };

  const filterButtons: { type: FilterType; emoji: string }[] = [
    { type: 'all', emoji: '🎮' },
    { type: 'quiz', emoji: '📝' },
    { type: 'simulation', emoji: '🏪' },
    { type: 'puzzle', emoji: '🧩' },
    { type: 'scenario', emoji: '🎭' }
  ];

  if (loading) {
    return (
      <div className="min-h-screen bg-gray-50 dark:bg-gray-900 p-8">
        <div className="max-w-7xl mx-auto text-center">
          <div className="text-xl text-gray-600 dark:text-gray-400">{t('games.loadingGames')}</div>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gray-50 dark:bg-gray-900 p-8">
      <div className="max-w-7xl mx-auto">
        {/* Header */}
        <div className="mb-8 flex justify-between items-center">
          <div>
            <h1 className="text-4xl font-bold text-gray-900 dark:text-gray-100 mb-2">
              🎮 {t('games.title')}
            </h1>
            <p className="text-gray-600 dark:text-gray-400">
              {t('games.subtitle')}
            </p>
          </div>
          <Link
            href={`/${locale}/dashboard`}
            className="px-4 py-2 bg-indigo-600 hover:bg-indigo-700 text-white rounded-lg transition-colors flex items-center gap-2"
          >
            ← {t('games.backToHome')}
          </Link>
        </div>

        {/* Top Bar with Profile and Leaderboard Links */}
        <div className="flex justify-end gap-4 mb-6">
          <Link
            href={`/${locale}/profile`}
            className="px-4 py-2 bg-gray-200 dark:bg-gray-700 text-gray-800 dark:text-gray-200 rounded-lg hover:bg-gray-300 dark:hover:bg-gray-600 transition-colors"
          >
            👤 {t('games.profile')}
          </Link>
          <Link
            href={`/${locale}/leaderboard`}
            className="px-4 py-2 bg-yellow-500 text-white rounded-lg hover:bg-yellow-600 transition-colors"
          >
            🏆 {t('games.leaderboard')}
          </Link>
        </div>



        {/* Games Grid */}
        {filteredGames.length > 0 ? (
          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-6">
            {filteredGames.map(game => (
              <GameCard
                key={game.id}
                id={game.id}
                title={game.title}
                gameType={game.game_type}
                difficultyLevel={game.difficulty_level}
                maxScore={game.max_score}
                userHighScore={game.userHighScore}
                hasPlayed={game.hasPlayed}
                locale={locale}
              />
            ))}
          </div>
        ) : (
          <div className="text-center py-12">
            <div className="text-4xl mb-4">🎮</div>
            <div className="text-xl text-gray-600 dark:text-gray-400">
              {t('games.noGamesFound')}
            </div>
          </div>
        )}

        {/* Stats Summary */}
        <div className="mt-12 grid grid-cols-1 md:grid-cols-3 gap-6">
          <div className="bg-white dark:bg-gray-800 p-6 rounded-lg text-center">
            <div className="text-3xl font-bold text-blue-600">{games.length}</div>
            <div className="text-gray-600 dark:text-gray-400">{t('games.totalGames')}</div>
          </div>
          <div className="bg-white dark:bg-gray-800 p-6 rounded-lg text-center">
            <div className="text-3xl font-bold text-green-600">
              {games.filter(g => g.hasPlayed).length}
            </div>
            <div className="text-gray-600 dark:text-gray-400">{t('games.gamesPlayed')}</div>
          </div>
          <div className="bg-white dark:bg-gray-800 p-6 rounded-lg text-center">
            <div className="text-3xl font-bold text-purple-600">
              {games.reduce((sum, g) => sum + (g.userHighScore || 0), 0).toLocaleString()}
            </div>
            <div className="text-gray-600 dark:text-gray-400">{t('games.totalScore')}</div>
          </div>
        </div>
      </div>
    </div>
  );
}
