
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
      } else {
        setStreak(0);
      }

    } catch (error) {
      console.error('Error submitting prediction:', error);
    }
  };

  if (loading && !challenge) {
    return (
      <div className="flex justify-center items-center h-64">
        <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-indigo-600"></div>
      </div>
    );
  }

  return (
    <div className="max-w-2xl mx-auto p-4">
      {/* Header Info */}
      <div className="flex justify-between items-center mb-6 bg-white p-4 rounded-xl shadow-sm">
        <div>
          <h2 className="text-sm text-gray-500 uppercase font-bold">Puntuación</h2>
          <p className="text-2xl font-bold text-indigo-600">{score}</p>
        </div>
        <div className="text-center">
          <h2 className="text-sm text-gray-500 uppercase font-bold">Racha</h2>
          <div className="flex items-center justify-center space-x-1">
            <span className="text-xl">🔥</span>
            <span className="text-xl font-bold text-orange-500">{streak}</span>
          </div>
        </div>
      </div>

      <AnimatePresence mode="wait">
        {challenge && (
          <motion.div
            key={challenge.id}
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            exit={{ opacity: 0, y: -20 }}
            className="bg-white rounded-2xl shadow-lg border border-slate-100 overflow-hidden"
          >
            {/* Asset Header */}
            <div className="p-6 border-b border-gray-100 flex justify-between items-start">
              <div>
                <div className="flex items-center space-x-2">
                  <span className="px-2 py-1 bg-blue-100 text-blue-700 text-xs font-bold rounded-md">
                    {challenge.asset.type.toUpperCase()}
                  </span>
                  <span className="text-gray-400 text-sm">{challenge.asset.sector}</span>
                </div>
                <h1 className="text-3xl font-bold text-gray-800 mt-1">{challenge.asset.symbol}</h1>
                <p className="text-gray-500">{challenge.asset.name}</p>
              </div>
              <div className="text-right">
                <span className="text-xs text-gray-400">Dificultad</span>
                <div className="flex space-x-1 mt-1">
                  {[...Array(3)].map((_, i) => (
                    <div 
                      key={i} 
                      className={`h-2 w-6 rounded-full ${i < challenge.difficulty ? 'bg-indigo-500' : 'bg-gray-200'}`}
                    />
                  ))}
                </div>
              </div>
            </div>

            {/* Chart Simulation (Simplified Bars) */}
            <div className="p-8 bg-slate-50 relative h-64 flex items-end justify-between space-x-2">
              {challenge.data_points.map((value, i) => {
                const max = Math.max(...challenge.data_points);
                const min = Math.min(...challenge.data_points);
                const range = max - min || 1;
                const normalize = (v: number) => ((v - min) / range) * 80 + 10; // 10% to 90% height
                
                const isLast = i === challenge.data_points.length - 1;
                
                return (
                  <div key={i} className="flex-1 flex flex-col items-center justify-end h-full group">
                    <div 
                      className={`w-full rounded-t-sm transition-all duration-500 ${isLast ? 'bg-blue-500' : 'bg-slate-300 group-hover:bg-slate-400'}`}
                      style={{ height: `${normalize(value)}%` }}
                    ></div>
                    {/* Tooltipish price */}
                    <span className="text-[10px] text-gray-400 mt-1">${value}</span>
                  </div>
                );
              })}
              
              {/* Mystery Bar */}
              <div className="flex-1 flex flex-col items-center justify-end h-full border-l-2 border-dashed border-gray-300 ml-4 pl-4 opacity-50">
                 <div className="h-full w-full flex items-center justify-center text-3xl">
                    ❓
                 </div>
              </div>
            </div>

            {/* Actions / Feedback */}
            <div className="p-6">
              {gameState === 'playing' ? (
                <div className="flex space-x-4">
                  <button
                    onClick={() => handlePrediction('DOWN')}
                    className="flex-1 py-4 bg-red-50 hover:bg-red-100 text-red-600 rounded-xl font-bold text-lg transition-colors border-2 border-transparent hover:border-red-200 flex items-center justify-center space-x-2"
                  >
                    <span>📉</span>
                    <span>BAJARÁ</span>
                  </button>
                  <button
                    onClick={() => handlePrediction('UP')}
                    className="flex-1 py-4 bg-green-50 hover:bg-green-100 text-green-600 rounded-xl font-bold text-lg transition-colors border-2 border-transparent hover:border-green-200 flex items-center justify-center space-x-2"
                  >
                    <span>📈</span>
                    <span>SUBIRÁ</span>
                  </button>
                </div>
              ) : (
                <div className="text-center animate-in fade-in zoom-in duration-300">
                  <div className={`text-xl font-bold mb-2 ${lastResult?.correct ? 'text-green-600' : 'text-red-500'}`}>
                    {lastResult?.correct ? '¡PREDICCIÓN CORRECTA! 🎉' : 'Oops... Predicción fallida ❌'}
                  </div>
                  <p className="text-gray-600 mb-6">
                    El mercado se movió hacia: <strong>{lastResult?.actual === 'UP' ? 'ALZA 📈' : 'BAJA 📉'}</strong>
                  </p>
                  <button
                    onClick={fetchChallenge}
                    className="px-8 py-3 bg-indigo-600 hover:bg-indigo-700 text-white rounded-full font-semibold shadow-lg shadow-indigo-200 transition-all hover:scale-105"
                  >
                    Siguiente Activo ➔
                  </button>
                </div>
              )}
            </div>
          </motion.div>
        )}
      </AnimatePresence>
    </div>
  );
}
