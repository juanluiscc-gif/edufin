'use client';

import { useRouter } from 'next/navigation';
import UnifiedScenarioGame from '@/components/games/simulation/UnifiedScenarioGame';

export default function SimulationGamePage({
  params: { locale },
}: {
  params: { locale: string };
}) {
  const router = useRouter();

  const handleGameComplete = async (score: number, timeTaken: number) => {
    try {
      // Send results to API
      const response = await fetch('/api/game-session/end', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          score,
          timeTaken,
          // Add other necessary data if needed, but UnifiedScenarioGame 
          // seems to calculate score internally and pass it up.
          // However, the backend might expect more data like gameId.
          // For now we trust the onComplete signature.
        }),
      });

      if (!response.ok) {
        console.error('Failed to save game results');
      }
      
      // Navigate to games list or dashboard
      router.push(`/${locale}/games`);
    } catch (error) {
      console.error('Error saving game results:', error);
      router.push(`/${locale}/games`);
    }
  };

  const handleExit = () => {
    router.push(`/${locale}/games`);
  };

  return (
    <div className="min-h-screen bg-gray-50 dark:bg-gray-900">
      <UnifiedScenarioGame 
        onComplete={handleGameComplete} 
        onExit={handleExit} 
      />
    </div>
  );
}
