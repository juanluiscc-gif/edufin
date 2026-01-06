'use client';

import { motion } from 'framer-motion';
import type { Character } from '@/types/scenario';

interface ChatMessageProps {
  character: Character;
  message: string;
  timestamp?: string;
  isPlayer?: boolean;
}

export default function ChatMessage({
  character,
  message,
  timestamp,
  isPlayer = false,
}: ChatMessageProps) {
  // Get character trait badge color
  const getTraitColor = (trait: string): string => {
    const colors: Record<string, string> = {
      exigente: 'bg-red-100 text-red-800 dark:bg-red-900 dark:text-red-200',
      estafador: 'bg-orange-100 text-orange-800 dark:bg-orange-900 dark:text-orange-200',
      honesto: 'bg-green-100 text-green-800 dark:bg-green-900 dark:text-green-200',
      confundido: 'bg-yellow-100 text-yellow-800 dark:bg-yellow-900 dark:text-yellow-200',
      agresivo: 'bg-red-100 text-red-800 dark:bg-red-900 dark:text-red-200',
      amigable: 'bg-blue-100 text-blue-800 dark:bg-blue-900 dark:text-blue-200',
    };
    return colors[trait] || 'bg-gray-100 text-gray-800';
  };

  const getTraitEmoji = (trait: string): string => {
    const emojis: Record<string, string> = {
      exigente: '🚩',
      estafador: '⚠️',
      honesto: '✅',
      confundido: '❓',
      agresivo: '😠',
      amigable: '😊',
    };
    return emojis[trait] || '💬';
  };

  return (
    <motion.div
      className={`flex ${isPlayer ? 'justify-end' : 'justify-start'} mb-4`}
      initial={{ opacity: 0, y: 20 }}
      animate={{ opacity: 1, y: 0 }}
      transition={{ duration: 0.3 }}
    >
      <div className={`max-w-[70%] ${isPlayer ? 'items-end' : 'items-start'}`}>
        {/* Character Info (only for NPC) */}
        {!isPlayer && (
          <div className="flex items-center gap-2 mb-1 px-2">
            <span className="text-2xl">{character.avatar}</span>
            <div>
              <div className="font-semibold text-sm text-gray-900 dark:text-gray-100">
                {character.name}
              </div>
              <div className={`text-xs px-2 py-0.5 rounded-full inline-flex items-center gap-1 ${getTraitColor(character.trait)}`}>
                <span>{getTraitEmoji(character.trait)}</span>
                <span className="capitalize">{character.trait}</span>
              </div>
            </div>
          </div>
        )}

        {/* Message Bubble */}
        <motion.div
          className={`px-4 py-3 rounded-2xl ${
            isPlayer
              ? 'bg-blue-600 text-white rounded-tr-none'
              : 'bg-gray-200 dark:bg-gray-700 text-gray-900 dark:text-gray-100 rounded-tl-none'
          }`}
          initial={{ scale: 0.9 }}
          animate={{ scale: 1 }}
          transition={{ duration: 0.2 }}
        >
          <p className="text-sm md:text-base whitespace-pre-wrap leading-relaxed">{message}</p>
        </motion.div>

        {/* Timestamp */}
        {timestamp && (
          <div className={`text-xs text-gray-500 dark:text-gray-400 mt-1 px-2 ${isPlayer ? 'text-right' : 'text-left'}`}>
            {timestamp}
          </div>
        )}
      </div>
    </motion.div>
  );
}
