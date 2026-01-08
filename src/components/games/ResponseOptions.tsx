'use client';

import { motion } from 'framer-motion';
import type { ResponseOption } from '@/types/scenario';

interface ResponseOptionsProps {
  options: ResponseOption[];
  onSelect: (option: ResponseOption) => void;
  selectedOptionId?: string;
  showFeedback?: boolean;
  disabled?: boolean;
}

export default function ResponseOptions({
  options,
  onSelect,
  selectedOptionId,
  showFeedback = false,
  disabled = false,
}: ResponseOptionsProps) {
  const getImpactColor = (balanceChange: number, reputationChange: number): string => {
    const totalImpact = balanceChange / 100 + reputationChange;

    if (totalImpact > 2) return 'text-green-600 dark:text-green-400';
    if (totalImpact < -2) return 'text-red-600 dark:text-red-400';
    return 'text-yellow-600 dark:text-yellow-400';
  };

  const formatBalanceChange = (change: number): string => {
    if (change === 0) return '$0';
    const prefix = change > 0 ? '+' : '';
    return `${prefix}$${change}`;
  };

  const formatReputationChange = (change: number): string => {
    if (change === 0) return '0';
    const prefix = change > 0 ? '+' : '';
    return `${prefix}${change}`;
  };

  return (
    <div className="space-y-3">
      <div className="text-sm font-medium text-gray-700 dark:text-gray-300 mb-3">
        ¿Cómo respondes?
      </div>

      {options.map((option, index) => {
        const isSelected = selectedOptionId === option.id;
        const { balanceChange, reputationChange } = option.consequences;

        return (
          <motion.button
            key={option.id}
            onClick={() => !disabled && onSelect(option)}
            disabled={disabled}
            className={`w-full text-left p-4 rounded-lg border-2 transition-all ${
              isSelected
                ? option.isCorrect
                  ? 'border-green-500 bg-green-50 dark:bg-green-900/20'
                  : 'border-yellow-500 bg-yellow-50 dark:bg-yellow-900/20'
                : 'border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-800 hover:border-blue-500 hover:bg-blue-50 dark:hover:bg-blue-900/20'
            } ${disabled ? 'cursor-not-allowed opacity-60' : 'cursor-pointer'}`}
            initial={{ opacity: 0, x: -20 }}
            animate={{ opacity: 1, x: 0 }}
            transition={{ duration: 0.3, delay: index * 0.1 }}
            whileHover={!disabled ? { scale: 1.02 } : {}}
            whileTap={!disabled ? { scale: 0.98 } : {}}
          >
            {/* Option Label (A, B, C, D) */}
            <div className="flex items-start gap-3">
              <span className="flex-shrink-0 w-8 h-8 flex items-center justify-center bg-gray-200 dark:bg-gray-700 rounded-full font-bold text-gray-700 dark:text-gray-300">
                {String.fromCharCode(65 + index)}
              </span>

              <div className="flex-1">
                {/* Option Text */}
                <p className="text-gray-900 dark:text-gray-100 font-medium mb-2">
                  {option.text}
                </p>

                {/* Consequences Feedback (Hidden until selection) */}
                {isSelected && showFeedback && (
                  <div className="flex gap-3 text-sm mt-2 mb-2 p-2 bg-gray-50 dark:bg-gray-700/50 rounded">
                    <div className={`flex items-center gap-1 ${getImpactColor(balanceChange, reputationChange)}`}>
                      <span>💰</span>
                      <span className="font-semibold">{formatBalanceChange(balanceChange)}</span>
                    </div>
                    <div className={`flex items-center gap-1 ${getImpactColor(balanceChange, reputationChange)}`}>
                      <span>⭐</span>
                      <span className="font-semibold">{formatReputationChange(reputationChange)}</span>
                    </div>
                  </div>
                )}

                {/* Feedback (shown after selection) */}
                {isSelected && showFeedback && (
                  <motion.div
                    className="mt-3 p-3 bg-blue-100 dark:bg-blue-900/30 rounded text-sm text-blue-900 dark:text-blue-100"
                    initial={{ opacity: 0, height: 0 }}
                    animate={{ opacity: 1, height: 'auto' }}
                    transition={{ duration: 0.3 }}
                  >
                    <div className="flex items-start gap-2">
                      <span className="flex-shrink-0 mt-0.5">
                        {option.isCorrect ? '✅' : '💡'}
                      </span>
                      <p>{option.feedback}</p>
                    </div>
                  </motion.div>
                )}
              </div>
            </div>
          </motion.button>
        );
      })}
    </div>
  );
}
