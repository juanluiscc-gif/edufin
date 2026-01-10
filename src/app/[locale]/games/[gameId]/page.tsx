'use client';

import { useEffect, useState } from 'react';
import { useParams, useRouter } from 'next/navigation';
import { useTranslations } from 'next-intl';
import QuizGame from '@/components/games/QuizGame';
import PuzzleGame from '@/components/games/PuzzleGame';
import MarketPuzzleGame from '@/components/games/MarketPuzzle';
import ScenarioGame from '@/components/games/ScenarioGame';
import ResultsModal from '@/components/games/ResultsModal';
import { GameType } from '@prisma/client';

interface Game {
  id: string;
  title: string;
  description: string;
  game_type: GameType;
  difficulty_level: number;
  max_score: number;
}

interface SubmitResponse {
  success: boolean;
  score: {
    id: string;
    score: number;
    rank: {
      global: number | null;
      weekly: number | null;
      ageGroup: number | null;
    };
    isPersonalBest: boolean;
    improvement: number;
    averageScore: number;
    previousBest: number;
  };
}

export default function GamePage() {
  const params = useParams();
  const router = useRouter();
  const gameId = params.gameId as string;
  const locale = params.locale as string;
  const t = useTranslations('games');

  const [game, setGame] = useState<Game | null>(null);
  const [gameData, setGameData] = useState<any>(null);
  const [loading, setLoading] = useState(true);
  const [showResults, setShowResults] = useState(false);
  const [results, setResults] = useState<SubmitResponse['score'] | null>(null);
  const [timeTaken, setTimeTaken] = useState(0);

  useEffect(() => {
    fetchGame();
  }, [gameId]);

  const fetchGame = async () => {
    try {
      const response = await fetch(`/api/games/${gameId}`);
      const data = await response.json();

      if (data.success) {
        setGame(data.game);
        // Parse game data from description JSON
        try {
          const parsedData = JSON.parse(data.game.description);
          setGameData(parsedData);
        } catch (e) {
          console.error('Error parsing game data:', e);
        }
      }
    } catch (error) {
      console.error('Error fetching game:', error);
    } finally {
      setLoading(false);
    }
  };

  const handleGameComplete = async (score: number, timeTakenSeconds: number) => {
    setTimeTaken(timeTakenSeconds);

    try {
      const response = await fetch('/api/games/submit', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          gameId,
          score,
          timeTaken: timeTakenSeconds,
          completed: true,
          gameData: {}
        })
      });

      const data: SubmitResponse = await response.json();

      if (data.success) {
        setResults(data.score);
        setShowResults(true);
      }
    } catch (error) {
      console.error('Error submitting score:', error);
      alert('Failed to submit score. Please try again.');
    }
  };

  const handlePlayAgain = () => {
    setShowResults(false);
    setResults(null);
    // Reload the page to reset the game
    router.refresh();
    window.location.reload();
  };

  if (loading) {
    return (
      <div className="min-h-screen bg-gray-50 dark:bg-gray-900 flex items-center justify-center">
        <div className="text-xl text-gray-600 dark:text-gray-400">{t('games.loadingGame')}</div>
      </div>
    );
  }

  if (!game || !gameData) {
    return (
      <div className="min-h-screen bg-gray-50 dark:bg-gray-900 flex items-center justify-center">
        <div className="text-center">
          <div className="text-6xl mb-4">😕</div>
          <div className="text-xl text-gray-600 dark:text-gray-400 mb-4">{t('games.gameNotFound')}</div>
          <button
            onClick={() => router.push(`/${locale}/games`)}
            className="bg-blue-600 hover:bg-blue-700 text-white font-semibold py-2 px-6 rounded-lg"
          >
            {t('games.backToGames')}
          </button>
        </div>
      </div>
    );
  }

  // Render the appropriate game component based on game type
  const renderGame = () => {
    switch (game.game_type) {
      case 'quiz':
        return (
          <QuizGame
            gameId={game.id}
            gameTitle={game.title}
            gameData={gameData}
            onComplete={handleGameComplete}
          />
        );

      case 'simulation':
        return (
          <div className="min-h-screen bg-gray-50 dark:bg-gray-900 flex items-center justify-center">
            <div className="text-center">
              <div className="text-6xl mb-4">🏪</div>
              <div className="text-xl text-gray-600 dark:text-gray-400 mb-4">
                {t('games.comingSoon.simulation')}
              </div>
              <button
                onClick={() => router.push(`/${locale}/games`)}
                className="bg-blue-600 hover:bg-blue-700 text-white font-semibold py-2 px-6 rounded-lg"
              >
                {t('games.backToGames')}
              </button>
            </div>
          </div>
        );

      case 'puzzle':
        // Check if game is the new "Market Predictor" or the old "Needs vs Wants"
        if (game.id.includes('market') || game.description.includes('stock')) {
           return <MarketPuzzleGame />;
        }
        
        return (
          <PuzzleGame
            gameId={game.id}
            gameTitle={game.title}
            gameData={gameData}
            onComplete={handleGameComplete}
          />
        );

      case 'scenario':
        return (
          <ScenarioGame
            gameId={game.id}
            gameTitle={game.title}
            gameData={gameData}
            onComplete={handleGameComplete}
          />
        );

      default:
        return (
          <div className="min-h-screen bg-gray-50 dark:bg-gray-900 flex items-center justify-center">
            <div className="text-xl text-gray-600 dark:text-gray-400">Unknown game type</div>
          </div>
        );
    }
  };

  return (
    <>
      {renderGame()}

      {/* Results Modal */}
      {showResults && results && (
        <ResultsModal
          gameTitle={game.title}
          score={results.score}
          maxScore={game.max_score}
          timeTaken={timeTaken}
          rank={results.rank}
          isPersonalBest={results.isPersonalBest}
          improvement={results.improvement}
          averageScore={results.averageScore}
          previousBest={results.previousBest}
          locale={locale}
          gameId={game.id}
          onPlayAgain={handlePlayAgain}
        />
      )}
    </>
  );
}
