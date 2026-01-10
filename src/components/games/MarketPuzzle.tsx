
'use client';

import React, { useState, useEffect } from 'react';
import { motion, AnimatePresence } from 'framer-motion';
// import { format } from 'date-fns';
// import { es } from 'date-fns/locale';

interface MarketChallenge {
  id: string;
  asset: {
    symbol: string;
    name: string;
    sector: string;
    type: string;
  };
  data_points: number[];
  difficulty: number;
}

export default function MarketPuzzleGame() {
  const [challenge, setChallenge] = useState<MarketChallenge | null>(null);
  const [loading, setLoading] = useState(true);
  const [gameState, setGameState] = useState<'playing' | 'result'>('playing');
  const [lastResult, setLastResult] = useState<{ correct: boolean; actual: string } | null>(null);
  const [score, setScore] = useState(0);
  const [streak, setStreak] = useState(0);

  const fetchChallenge = async () => {
    setLoading(true);
    setGameState('playing');
    setLastResult(null);
    try {
      const res = await fetch('/api/games/market');
      const data = await res.json();
      if (data.success) {
        setChallenge(data.challenge);
      }
    } catch (error) {
      console.error('Error loading challenge:', error);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchChallenge();
  }, []);

  const handlePrediction = async (prediction: 'UP' | 'DOWN') => {
    if (!challenge) return;

    try {
      const res = await fetch('/api/games/market', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          challengeId: challenge.id,
          prediction
        })
      });
      const data = await res.json();
      
      setLastResult({
        correct: data.correct,
        actual: data.actualOutcome
      });
      setGameState('result');

      if (data.correct) {
        setScore(s => s + 100 + (streak * 10)); // Bonus for streak
        setStreak(s => s + 1);
        // Auto advance on correct? Maybe wait for user to see result.
      } else {
        setStreak(0);
      }

    } catch (error) {
      console.error('Error submitting prediction:', error);
    }
  };

  if (loading && !challenge) {
    return (
      <div className="flex justify-center items-center min-h-screen bg-gray-50">
        <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-indigo-600"></div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gray-100 flex flex-col items-center justify-center p-4 overflow-hidden font-sans">
      
      {/* Header Stats */}
      <div className="absolute top-0 left-0 right-0 p-6 flex justify-between items-start max-w-4xl mx-auto w-full">
         <div className="bg-white p-3 rounded-lg shadow-md">
            <p className="text-xs uppercase text-gray-500 font-bold">Puntuación</p>
            <p className="text-2xl font-bold text-indigo-600">{score}</p>
         </div>
         
         <div className="bg-white p-3 rounded-lg shadow-md">
            <p className="text-xs uppercase text-gray-500 font-bold">Racha</p>
            <p className="text-2xl font-bold text-orange-500">🔥 {streak}</p>
         </div>
      </div>

      <div className="relative w-full max-w-5xl flex flex-col items-center">
        
        {/* Feedback Overlay */}
        <AnimatePresence>
          {gameState === 'result' && lastResult && (
             <motion.div 
               initial={{ opacity: 0, scale: 0.5, y: 0 }}
               animate={{ opacity: 1, scale: 1.2, y: -50 }}
               exit={{ opacity: 0 }}
               className="absolute top-[-100px] z-50 flex flex-col items-center"
             >
                <div className={`text-6xl font-bold ${lastResult.correct ? 'text-green-500' : 'text-red-500'}`}>
                   {lastResult.correct ? '✅' : '❌'}
                </div>
                <div className="bg-white px-4 py-2 rounded-full shadow-lg mt-4 text-sm font-bold text-gray-600">
                   El precio {lastResult.actual === 'UP' ? 'SUBIÓ 📈' : 'BAJÓ 📉'}
                </div>
                <button
                    onClick={fetchChallenge}
                    className="mt-4 px-6 py-2 bg-indigo-600 text-white rounded-full font-bold shadow-lg hover:scale-105 transition-transform"
                  >
                    Siguiente ➔
                </button>
             </motion.div>
          )}
        </AnimatePresence>

        {/* 3-Column Layout */}
        <div className="flex items-center justify-between w-full gap-4 md:gap-8 mt-12">
           
           {/* LEFT: BAJA */}
           <motion.button
              whileTap={{ scale: 0.95 }}
              onClick={() => gameState === 'playing' && handlePrediction('DOWN')}
              disabled={gameState !== 'playing'}
              className={`flex-1 h-64 border-4 border-dashed rounded-2xl flex flex-col items-center justify-center transition-all group
                ${gameState === 'playing' 
                  ? 'border-red-300 bg-red-50 hover:bg-red-100 cursor-pointer' 
                  : 'border-gray-200 bg-gray-50 opacity-50 cursor-not-allowed'}`}
           >
              <div className="text-5xl mb-4 group-hover:scale-110 transition-transform">📉</div>
              <span className={`text-2xl font-black uppercase tracking-wider ${gameState === 'playing' ? 'text-red-600' : 'text-gray-400'}`}>
                BAJA
              </span>
              <span className="text-sm font-medium text-red-400 mt-2 opacity-0 group-hover:opacity-100">
                (Vender)
              </span>
           </motion.button>

           {/* CENTER: ASSET CARD */}
           <div className="relative w-80 md:w-96 perspective-1000">
             <AnimatePresence mode='wait'>
                {challenge && (
                   <motion.div
                      key={challenge.id}
                      initial={{ scale: 0.8, opacity: 0, y: 50 }}
                      animate={{ scale: 1, opacity: 1, y: 0 }}
                      exit={{ scale: 0.8, opacity: 0, transition: { duration: 0.2 } }}
                      className="bg-white rounded-xl shadow-2xl border border-gray-200 p-6 text-center z-10 w-full"
                   >
                      <div className="flex justify-between items-center mb-4 border-b border-gray-100 pb-2">
                        <span className="text-xs font-bold bg-gray-100 text-gray-600 px-2 py-1 rounded">
                          {challenge.asset.type.toUpperCase()}
                        </span>
                        <span className="text-xs text-gray-400">{challenge.asset.sector}</span>
                      </div>
                      
                      <div className="mb-6">
                        <h2 className="text-4xl font-black text-gray-900 mb-1">{challenge.asset.symbol}</h2>
                        <p className="text-gray-500 font-medium">{challenge.asset.name}</p>
                      </div>

                      {/* Mini Chart */}
                      <div className="h-32 flex items-end justify-between space-x-1 mb-4">
                        {challenge.data_points.map((value, i) => {
                           const min = Math.min(...challenge.data_points);
                           const max = Math.max(...challenge.data_points);
                           const range = max - min || 1;
                           const h = ((value - min) / range) * 80 + 10;
                           return (
                             <div key={i} className="flex-1 bg-indigo-100 rounded-t-sm relative group">
                               <div 
                                 className="absolute bottom-0 left-0 right-0 bg-indigo-500 rounded-t-sm transition-all"
                                 style={{ height: `${h}%` }}
                               />
                             </div>
                           )
                        })}
                        {/* Question Mark Bar */}
                        <div className="flex-1 flex items-center justify-center text-2xl opacity-50">❓</div>
                      </div>
                      
                      <p className="text-xs text-gray-400">¿Cuál será el siguiente movimiento?</p>
                   </motion.div>
                )}
             </AnimatePresence>
             
             {/* Card Stack Effect */}
             <div className="absolute top-2 left-2 right-[-8px] bottom-[-8px] bg-gray-200 rounded-xl -z-10" />
           </div>

           {/* RIGHT: ALZA */}
           <motion.button
              whileTap={{ scale: 0.95 }}
              onClick={() => gameState === 'playing' && handlePrediction('UP')}
              disabled={gameState !== 'playing'}
              className={`flex-1 h-64 border-4 border-dashed rounded-2xl flex flex-col items-center justify-center transition-all group
                ${gameState === 'playing' 
                  ? 'border-green-300 bg-green-50 hover:bg-green-100 cursor-pointer' 
                  : 'border-gray-200 bg-gray-50 opacity-50 cursor-not-allowed'}`}
           >
              <div className="text-5xl mb-4 group-hover:scale-110 transition-transform">📈</div>
              <span className={`text-2xl font-black uppercase tracking-wider ${gameState === 'playing' ? 'text-green-600' : 'text-gray-400'}`}>
                ALZA
              </span>
              <span className="text-sm font-medium text-green-400 mt-2 opacity-0 group-hover:opacity-100">
                (Comprar)
              </span>
           </motion.button>
        </div>

        <p className="text-gray-400 mt-8 text-sm font-medium animate-pulse">
           Toca el lado correcto para predecir el mercado
        </p>

      </div>
    </div>
  );
}
