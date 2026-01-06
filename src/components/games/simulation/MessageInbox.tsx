'use client';

import { motion } from 'framer-motion';

export interface InboxMessage {
  id: string;
  sender: string;
  avatar: string;
  preview: string;
  type: 'client' | 'supplier' | 'government';
  receivedAt: number;
}

interface MessageInboxProps {
  messages: InboxMessage[];
  onMessageOpen: (messageId: string) => void;
}

export default function MessageInbox({ messages, onMessageOpen }: MessageInboxProps) {
  if (messages.length === 0) {
    return (
      <div className="w-full bg-gray-100 dark:bg-gray-800 p-4 rounded-lg">
        <p className="text-gray-500 dark:text-gray-400 text-center text-sm">
          📬 No hay mensajes nuevos
        </p>
      </div>
    );
  }

  const getTypeIcon = (type: string) => {
    switch (type) {
      case 'client':
        return '👤';
      case 'supplier':
        return '📦';
      case 'government':
        return '🏛️';
      default:
        return '💬';
    }
  };

  const getTypeBgColor = (type: string) => {
    switch (type) {
      case 'client':
        return 'bg-blue-500';
      case 'supplier':
        return 'bg-green-500';
      case 'government':
        return 'bg-red-500';
      default:
        return 'bg-gray-500';
    }
  };

  return (
    <div className="w-full space-y-2">
      <h3 className="text-sm font-semibold text-gray-700 dark:text-gray-300 mb-2">
        📬 Mensajes Nuevos ({messages.length})
      </h3>
      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-2">
        {messages.map((message) => (
          <motion.button
            key={message.id}
            onClick={() => onMessageOpen(message.id)}
            className="relative bg-white dark:bg-gray-800 rounded-lg shadow-md hover:shadow-lg transition-all p-4 text-left border-2 border-transparent hover:border-blue-400"
            initial={{ scale: 0.9, opacity: 0 }}
            animate={{ scale: 1, opacity: 1 }}
            whileHover={{ scale: 1.02 }}
            whileTap={{ scale: 0.98 }}
          >
            {/* Type indicator badge */}
            <div
              className={`absolute top-2 right-2 ${getTypeBgColor(message.type)} text-white text-xs px-2 py-1 rounded-full`}
            >
              {getTypeIcon(message.type)}
            </div>

            {/* Sender info */}
            <div className="flex items-center space-x-2 mb-2">
              <div className="text-3xl">{message.avatar}</div>
              <div className="flex-1">
                <p className="font-semibold text-gray-900 dark:text-gray-100 text-sm">
                  {message.sender}
                </p>
                <p className="text-xs text-gray-500 dark:text-gray-400">
                  Hace {Math.floor((Date.now() - message.receivedAt) / 1000)}s
                </p>
              </div>
            </div>

            {/* Message preview */}
            <p className="text-sm text-gray-700 dark:text-gray-300 line-clamp-2">
              {message.preview}
            </p>

            {/* Open button */}
            <div className="mt-3">
              <span className="text-blue-600 dark:text-blue-400 text-sm font-semibold">
                Abrir mensaje →
              </span>
            </div>
          </motion.button>
        ))}
      </div>
    </div>
  );
}
