'use client';

import { useState, useEffect, useCallback } from 'react';
import { motion, AnimatePresence } from 'framer-motion';

interface PuzzleItem {
  id: number;
  text: string;
  type: 'need' | 'want';
  icon: string;
}

interface PuzzleGameData {
  instructions: string;
  items: PuzzleItem[];
}

interface PuzzleGameProps {
  gameId: string;
  gameTitle: string;
  gameData: PuzzleGameData;
  onComplete: (score: number, timeTaken: number) => void;
}

const GAME_DURATION = 60; // 60 seconds

export default function PuzzleGame({ gameId, gameTitle, gameData, onComplete }: PuzzleGameProps) {
  const [items, setItems] = useState<PuzzleItem[]>([]);
  const [currentItem, setCurrentItem] = useState<PuzzleItem | null>(null);
  const [score, setScore] = useState(0);
  const [streak, setStreak] = useState(0);
  const [timeLeft, setTimeLeft] = useState(GAME_DURATION);
  const [isPlaying, setIsPlaying] = useState(false);
  const [showInstructions, setShowInstructions] = useState(true);
  const [feedback, setFeedback] = useState<'correct' | 'wrong' | null>(null);

  // Initialize game
  useEffect(() => {
    // Shuffle items
    const shuffled = [...gameData.items].sort(() => Math.random() - 0.5);
    setItems(shuffled);
    setCurrentItem(shuffled[0]);
  }, [gameData]);

  // Timer
  useEffect(() => {
    if (!isPlaying || timeLeft <= 0) return;

    const timer = setInterval(() => {
      setTimeLeft((prev) => {
        if (prev <= 1) {
          endGame();
          return 0;
        }
        return prev - 1;
      });
    }, 1000);

    return () => clearInterval(timer);
  }, [isPlaying, timeLeft]);

  const endGame = useCallback(() => {
    setIsPlaying(false);
    onComplete(score, GAME_DURATION - timeLeft);
  }, [score, timeLeft, onComplete]);

  const handleSort = (type: 'need' | 'want') => {
    if (!currentItem || !isPlaying) return;

    const isCorrect = currentItem.type === type;

    if (isCorrect) {
      // Logic for correct answer
      setScore((prev) => prev + 100 + (streak * 10)); // Streak bonus
      setStreak((prev) => prev + 1);
      setFeedback('correct');
      
      // Play sound? (Optional)
    } else {
      // Logic for wrong answer
      setStreak(0);
      setFeedback('wrong');
      setTimeLeft((prev) => Math.max(0, prev - 5)); // Penalty: -5 seconds
    }

    // Reset feedback after short delay
    setTimeout(() => setFeedback(null), 500);

    // Next item
    const remainingItems = items.slice(1);
    
    if (remainingItems.length > 0) {
      setItems(remainingItems);
      setCurrentItem(remainingItems[0]);
    } else {
      // No more items - End Game (Win)
      // Bonus for time left
      setScore((prev) => prev + (timeLeft * 10));
      endGame();
    }
  };

  const startGame = () => {
    setShowInstructions(false);
    setIsPlaying(true);
  };

  const handleExit = () => {
         if (confirm('Are you sure you want to stop?')) {
             onComplete(score, GAME_DURATION - timeLeft);
         }
  };

  if (showInstructions) {
    return (
      <div className="min-h-screen bg-gray-50 dark:bg-gray-900 flex items-center justify-center p-8">
        <div className="bg-white dark:bg-gray-800 rounded-lg shadow-xl p-8 max-w-2xl">
          <h1 className="text-3xl font-bold text-gray-900 dark:text-gray-100 mb-4">
            {gameTitle}
          </h1>
          <div className="text-gray-700 dark:text-gray-300 mb-6 whitespace-pre-line">
            {gameData.instructions}
          </div>
          
          <div className="grid grid-cols-2 gap-4 mb-8">
            <div className="bg-green-100 dark:bg-green-900 p-4 rounded-lg text-center">
              <span className="text-4xl block mb-2">🍞</span>
              <h3 className="font-bold text-green-800 dark:text-green-200">Needs (Necesidad)</h3>
              <p className="text-sm text-green-700 dark:text-green-300">Essential for survival or basic living.</p>
            </div>
            <div className="bg-purple-100 dark:bg-purple-900 p-4 rounded-lg text-center">
              <span className="text-4xl block mb-2">🎮</span>
              <h3 className="font-bold text-purple-800 dark:text-purple-200">Wants (Deseo)</h3>
              <p className="text-sm text-purple-700 dark:text-purple-300">Nice to have, but you can live without it.</p>
            </div>
          </div>

          <button
            onClick={startGame}
            className="w-full bg-blue-600 hover:bg-blue-700 text-white font-bold py-3 px-6 rounded-lg transition-colors text-xl"
          >
            Start Sorting!
          </button>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gray-100 dark:bg-gray-900 flex flex-col items-center justify-center p-4 overflow-hidden">
      {/* Header Stats */}
      <div className="absolute top-0 left-0 right-0 p-6 flex justify-between items-start max-w-4xl mx-auto w-full">
         <div className="bg-white dark:bg-gray-800 p-3 rounded-lg shadow-md">
            <p className="text-xs uppercase text-gray-500 font-bold">Score</p>
            <p className="text-2xl font-bold text-blue-600 dark:text-blue-400">{score}</p>
         </div>
         
         <div className="flex flex-col items-center">
            <div className="text-3xl font-mono font-bold text-gray-800 dark:text-gray-200">
               {Math.floor(timeLeft / 60)}:{(timeLeft % 60).toString().padStart(2, '0')}
            </div>
            <div className="w-64 h-2 bg-gray-300 rounded-full mt-2 overflow-hidden">
               <div 
                  className={`h-full transition-all duration-1000 ${timeLeft < 10 ? 'bg-red-500' : 'bg-blue-500'}`}
                  style={{ width: `${(timeLeft / GAME_DURATION) * 100}%` }}
               />
            </div>
         </div>

         <div className="bg-white dark:bg-gray-800 p-3 rounded-lg shadow-md">
            <p className="text-xs uppercase text-gray-500 font-bold">Streak</p>
            <p className="text-2xl font-bold text-orange-500">🔥 {streak}</p>
         </div>
      </div>

       {/* Exit Button */}
      <button 
        onClick={handleExit}
        className="absolute top-6 right-6 text-gray-500 hover:text-red-500"
      >
        Exit
      </button>

      {/* Main Game Area */}
      <div className="relative w-full max-w-2xl flex flex-col items-center">
        
        {/* Feedback Overlay */}
        <AnimatePresence>
          {feedback && (
             <motion.div 
               initial={{ opacity: 0, scale: 0.5, y: 0 }}
               animate={{ opacity: 1, scale: 1.2, y: -50 }}
               exit={{ opacity: 0 }}
               className={`absolute top-0 z-50 text-6xl font-bold ${feedback === 'correct' ? 'text-green-500' : 'text-red-500'}`}
             >
                {feedback === 'correct' ? '✅' : '❌'}
             </motion.div>
          )}
        </AnimatePresence>
        
        {/* Sorting Buttons & Card Container */}
        <div className="flex items-center justify-between w-full gap-8 mt-12">
           {/* Left Target: NEED */}
           <motion.button
              whileTap={{ scale: 0.95 }}
              onClick={() => handleSort('need')}
              className="flex-1 h-64 border-4 border-dashed border-green-300 dark:border-green-700 rounded-2xl flex flex-col items-center justify-center bg-green-50 dark:bg-green-900/20 hover:bg-green-100 dark:hover:bg-green-900/40 transition-colors group"
           >
              <div className="text-6xl mb-4 group-hover:scale-110 transition-transform">🍞</div>
              <span className="text-2xl font-black text-green-700 dark:text-green-300 uppercase tracking-wider">NEED</span>
              <span className="text-sm font-medium text-green-600 dark:text-green-400 mt-2 opacity-0 group-hover:opacity-100">(Left)</span>
           </motion.button>

           {/* Center Card (The Item) */}
           <div className="relative w-64 h-80 perspective-1000">
             <AnimatePresence mode='popLayout'>
                {currentItem && (
                   <motion.div
                      key={currentItem.id}
                      initial={{ scale: 0.5, opacity: 0, y: 100 }}
                      animate={{ scale: 1, opacity: 1, y: 0 }}
                      exit={{ scale: 0.5, opacity: 0, transition: { duration: 0.2 } }}
                      className="absolute inset-0 bg-white dark:bg-gray-800 rounded-xl shadow-2xl border border-gray-200 dark:border-gray-700 flex flex-col items-center justify-center p-6 text-center z-10"
                   >
                      <div className="text-8xl mb-6">{currentItem.icon}</div>
                      <h2 className="text-2xl font-bold text-gray-900 dark:text-gray-100">{currentItem.text}</h2>
                   </motion.div>
                )}
             </AnimatePresence>
             {/* Stack effect below */}
             <div className="absolute top-2 left-2 right-[-8px] bottom-[-8px] bg-gray-200 dark:bg-gray-700 rounded-xl -z-10" />
           </div>

           {/* Right Target: WANT */}
           <motion.button
              whileTap={{ scale: 0.95 }}
              onClick={() => handleSort('want')}
              className="flex-1 h-64 border-4 border-dashed border-purple-300 dark:border-purple-700 rounded-2xl flex flex-col items-center justify-center bg-purple-50 dark:bg-purple-900/20 hover:bg-purple-100 dark:hover:bg-purple-900/40 transition-colors group"
           >
              <div className="text-6xl mb-4 group-hover:scale-110 transition-transform">🎮</div>
              <span className="text-2xl font-black text-purple-700 dark:text-purple-300 uppercase tracking-wider">WANT</span>
              <span className="text-sm font-medium text-purple-600 dark:text-purple-400 mt-2 opacity-0 group-hover:opacity-100">(Right)</span>
           </motion.button>
        </div>

        <p className="text-gray-400 mt-8 text-sm">
           Tap the correct side to sort the item!
        </p>

      </div>
    </div>
  );
}
