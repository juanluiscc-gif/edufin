'use client';

import { useState } from 'react';
import { useRouter, useParams } from 'next/navigation';
import UnifiedScenarioGame from '@/components/games/simulation/UnifiedScenarioGame';

export default function SimulationGamePage() {
  const router = useRouter();
  const params = useParams();
  const locale = params.locale as string;
  const [isPlaying, setIsPlaying] = useState(true);

  const handleComplete = async (score: number, timeTaken: number) => {
    try {
      // TODO: Get game ID from database (for now using placeholder)
      const gameId = 'simulation-unified'; // This should come from /api/games/list

      // Save score to API
      const response = await fetch('/api/games/submit', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          gameId,
          score,
          timeTaken,
          completed: true,
        }),
      });

      if (response.ok) {
        const data = await response.json();
        console.log('Score saved:', data);
      }

      // Redirect to games list
      router.push(`/${locale}/games`);
    } catch (error) {
      console.error('Error saving score:', error);
      // Still redirect even if save fails
      router.push(`/${locale}/games`);
    }
  };

  const handleExit = () => {
    // Confirm exit if game is in progress
    const confirmExit = confirm('¿Seguro que quieres salir? Se perderá tu progreso.');
    if (confirmExit) {
      router.push(`/${locale}/games`);
    }
  };

  if (!isPlaying) {
    return (
      <div className="min-h-screen bg-gray-50 dark:bg-gray-900 flex items-center justify-center">
        <div className="text-center">
          <div className="text-4xl mb-4">🎮</div>
          <div className="text-xl text-gray-600 dark:text-gray-400">Cargando juego...</div>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gray-50 dark:bg-gray-900">
      <UnifiedScenarioGame
        onComplete={handleComplete}
        onExit={handleExit}
      />
    </div>
  );
}
