'use client';

import { motion } from 'framer-motion';

interface ConversationEndProps {
  status: 'win' | 'lose';
  finalBalance: number;
  finalReputation: number;
  message: string;
  correctDecisions: number;
  totalDecisions: number;
  timeTaken: number;
  finalScore: number;
  onPlayAgain?: () => void;
  onExit?: () => void;
}

export default function ConversationEnd({
  status,
  finalBalance,
  finalReputation,
  message,
  correctDecisions,
  totalDecisions,
  timeTaken,
  finalScore,
  onPlayAgain,
  onExit,
}: ConversationEndProps) {
  const formatTime = (seconds: number): string => {
    const mins = Math.floor(seconds / 60);
    const secs = seconds % 60;
    return `${mins}:${secs.toString().padStart(2, '0')}`;
  };

  const formatBalance = (amount: number): string => {
    return new Intl.NumberFormat('es-MX', {
      style: 'currency',
      currency: 'USD',
    }).format(amount);
  };

  const renderStars = () => {
    const stars = [];
    for (let i = 1; i <= 5; i++) {
      stars.push(
        <motion.span
          key={i}
          className={`text-3xl ${i <= finalReputation ? 'text-yellow-400' : 'text-gray-300'}`}
          initial={{ scale: 0, rotate: -180 }}
          animate={{ scale: 1, rotate: 0 }}
          transition={{ duration: 0.3, delay: i * 0.1 }}
        >
          ⭐
        </motion.span>
      );
    }
    return stars;
  };

  const decisionPercentage = Math.round((correctDecisions / totalDecisions) * 100);

  return (
    <motion.div
      className="min-h-screen bg-gradient-to-br from-gray-50 to-gray-100 dark:from-gray-900 dark:to-gray-800 flex items-center justify-center p-8"
      initial={{ opacity: 0 }}
      animate={{ opacity: 1 }}
      transition={{ duration: 0.5 }}
    >
      <motion.div
        className="bg-white dark:bg-gray-800 rounded-2xl shadow-2xl p-8 max-w-2xl w-full"
        initial={{ scale: 0.8, y: 50 }}
        animate={{ scale: 1, y: 0 }}
        transition={{ duration: 0.5, type: 'spring' }}
      >
        {/* Status Icon */}
        <motion.div
          className="text-center mb-6"
          initial={{ scale: 0 }}
          animate={{ scale: 1 }}
          transition={{ duration: 0.5, delay: 0.2, type: 'spring', stiffness: 200 }}
        >
          <div className="text-8xl mb-4">
            {status === 'win' ? '🎉' : '😔'}
          </div>
          <h1 className={`text-4xl font-bold ${
            status === 'win'
              ? 'text-green-600 dark:text-green-400'
              : 'text-red-600 dark:text-red-400'
          }`}>
            {status === 'win' ? '¡Felicitaciones!' : '¡Sigue Intentando!'}
          </h1>
        </motion.div>

        {/* Message */}
        <motion.p
          className="text-center text-lg text-gray-700 dark:text-gray-300 mb-8"
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          transition={{ delay: 0.4 }}
        >
          {message}
        </motion.p>

        {/* Stats Grid */}
        <div className="grid grid-cols-2 gap-4 mb-8">
          {/* Final Score */}
          <motion.div
            className="bg-gradient-to-br from-purple-500 to-purple-600 text-white rounded-lg p-4 text-center"
            initial={{ opacity: 0, x: -20 }}
            animate={{ opacity: 1, x: 0 }}
            transition={{ delay: 0.5 }}
          >
            <div className="text-sm opacity-90 mb-1">Puntuación Final</div>
            <div className="text-3xl font-bold">{finalScore.toLocaleString()}</div>
          </motion.div>

          {/* Balance */}
          <motion.div
            className="bg-gradient-to-br from-green-500 to-green-600 text-white rounded-lg p-4 text-center"
            initial={{ opacity: 0, x: 20 }}
            animate={{ opacity: 1, x: 0 }}
            transition={{ delay: 0.6 }}
          >
            <div className="text-sm opacity-90 mb-1">💰 Balance Final</div>
            <div className="text-2xl font-bold">{formatBalance(finalBalance)}</div>
          </motion.div>

          {/* Reputation */}
          <motion.div
            className="bg-gray-100 dark:bg-gray-700 rounded-lg p-4 text-center col-span-2"
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.7 }}
          >
            <div className="text-sm text-gray-600 dark:text-gray-400 mb-2">
              ⭐ Reputación Final
            </div>
            <div className="flex justify-center gap-1">
              {renderStars()}
            </div>
          </motion.div>

          {/* Decisions */}
          <motion.div
            className="bg-blue-50 dark:bg-blue-900/20 rounded-lg p-4"
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.8 }}
          >
            <div className="text-sm text-gray-600 dark:text-gray-400 mb-1">
              ✅ Decisiones Correctas
            </div>
            <div className="text-2xl font-bold text-blue-600 dark:text-blue-400">
              {correctDecisions}/{totalDecisions}
            </div>
            <div className="text-xs text-gray-500 dark:text-gray-400 mt-1">
              {decisionPercentage}% de acierto
            </div>
          </motion.div>

          {/* Time */}
          <motion.div
            className="bg-orange-50 dark:bg-orange-900/20 rounded-lg p-4"
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.9 }}
          >
            <div className="text-sm text-gray-600 dark:text-gray-400 mb-1">
              ⏰ Tiempo Total
            </div>
            <div className="text-2xl font-bold text-orange-600 dark:text-orange-400">
              {formatTime(timeTaken)}
            </div>
          </motion.div>
        </div>

        {/* Action Buttons */}
        <motion.div
          className="flex gap-4"
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          transition={{ delay: 1 }}
        >
          {onPlayAgain && (
            <button
              onClick={onPlayAgain}
              className="flex-1 bg-blue-600 hover:bg-blue-700 text-white font-bold py-3 px-6 rounded-lg transition-colors"
            >
              🔄 Jugar de Nuevo
            </button>
          )}
          {onExit && (
            <button
              onClick={onExit}
              className="flex-1 bg-gray-600 hover:bg-gray-700 text-white font-bold py-3 px-6 rounded-lg transition-colors"
            >
              ← Salir
            </button>
          )}
        </motion.div>
      </motion.div>
    </motion.div>
  );
}
