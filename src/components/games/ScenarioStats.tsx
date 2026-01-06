'use client';

import { motion } from 'framer-motion';

interface ScenarioStatsProps {
  balance: number;
  reputation: number;
  decisionsCount: number;
  totalDecisions: number;
  timeElapsed?: number;
}

export default function ScenarioStats({
  balance,
  reputation,
  decisionsCount,
  totalDecisions,
  timeElapsed,
}: ScenarioStatsProps) {
  // Convert reputation (0-5) to star display
  const renderStars = () => {
    const stars = [];
    for (let i = 1; i <= 5; i++) {
      stars.push(
        <span key={i} className={i <= reputation ? 'text-yellow-400' : 'text-gray-300'}>
          ⭐
        </span>
      );
    }
    return stars;
  };

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

  return (
    <div className="space-y-4">
      {/* Balance */}
      <motion.div
        className="bg-white dark:bg-gray-700 rounded-lg p-4"
        initial={{ scale: 0.9, opacity: 0 }}
        animate={{ scale: 1, opacity: 1 }}
        transition={{ duration: 0.3 }}
      >
        <div className="text-sm text-gray-600 dark:text-gray-400 mb-1">💰 Balance</div>
        <motion.div
          className={`text-2xl font-bold ${
            balance >= 5000
              ? 'text-green-600 dark:text-green-400'
              : balance >= 3000
              ? 'text-yellow-600 dark:text-yellow-400'
              : 'text-red-600 dark:text-red-400'
          }`}
          key={balance}
          initial={{ scale: 1.2 }}
          animate={{ scale: 1 }}
          transition={{ duration: 0.2 }}
        >
          {formatBalance(balance)}
        </motion.div>
      </motion.div>

      {/* Reputation */}
      <motion.div
        className="bg-white dark:bg-gray-700 rounded-lg p-4"
        initial={{ scale: 0.9, opacity: 0 }}
        animate={{ scale: 1, opacity: 1 }}
        transition={{ duration: 0.3, delay: 0.1 }}
      >
        <div className="text-sm text-gray-600 dark:text-gray-400 mb-1">⭐ Reputación</div>
        <div className="flex gap-1">{renderStars()}</div>
        <div className="text-xs text-gray-500 dark:text-gray-400 mt-1">
          {reputation}/5 estrellas
        </div>
      </motion.div>

      {/* Progress */}
      <motion.div
        className="bg-white dark:bg-gray-700 rounded-lg p-4"
        initial={{ scale: 0.9, opacity: 0 }}
        animate={{ scale: 1, opacity: 1 }}
        transition={{ duration: 0.3, delay: 0.2 }}
      >
        <div className="text-sm text-gray-600 dark:text-gray-400 mb-2">📊 Progreso</div>
        <div className="text-lg font-semibold text-gray-900 dark:text-gray-100">
          {decisionsCount}/{totalDecisions}
        </div>
        <div className="w-full bg-gray-200 dark:bg-gray-600 rounded-full h-2 mt-2">
          <motion.div
            className="bg-blue-600 h-2 rounded-full"
            initial={{ width: 0 }}
            animate={{ width: `${(decisionsCount / totalDecisions) * 100}%` }}
            transition={{ duration: 0.5 }}
          />
        </div>
      </motion.div>

      {/* Time (if provided) */}
      {timeElapsed !== undefined && (
        <motion.div
          className="bg-white dark:bg-gray-700 rounded-lg p-4"
          initial={{ scale: 0.9, opacity: 0 }}
          animate={{ scale: 1, opacity: 1 }}
          transition={{ duration: 0.3, delay: 0.3 }}
        >
          <div className="text-sm text-gray-600 dark:text-gray-400 mb-1">⏰ Tiempo</div>
          <div className="text-xl font-bold text-blue-600 dark:text-blue-400">
            {formatTime(timeElapsed)}
          </div>
        </motion.div>
      )}
    </div>
  );
}
