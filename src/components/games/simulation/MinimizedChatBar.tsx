'use client';

import { motion } from 'framer-motion';

export interface MinimizedChat {
  id: string;
  sender: string;
  avatar: string;
  type: 'client' | 'supplier' | 'government';
}

interface MinimizedChatBarProps {
  chats: MinimizedChat[];
  onChatRestore: (chatId: string) => void;
}

export default function MinimizedChatBar({ chats, onChatRestore }: MinimizedChatBarProps) {
  if (chats.length === 0) {
    return null;
  }

  const getTypeBorderColor = (type: string) => {
    switch (type) {
      case 'client':
        return 'border-blue-500';
      case 'supplier':
        return 'border-green-500';
      case 'government':
        return 'border-red-500';
      default:
        return 'border-gray-500';
    }
  };

  return (
    <div className="fixed bottom-0 left-0 right-0 bg-gray-100 dark:bg-gray-900 border-t-2 border-gray-300 dark:border-gray-700 p-2 z-10">
      <div className="container mx-auto flex items-center space-x-2 overflow-x-auto">
        <span className="text-sm text-gray-600 dark:text-gray-400 font-semibold whitespace-nowrap mr-2">
          📌 Chats minimizados:
        </span>
        {chats.map((chat) => (
          <motion.button
            key={chat.id}
            onClick={() => onChatRestore(chat.id)}
            className={`flex items-center space-x-2 bg-white dark:bg-gray-800 px-3 py-2 rounded-lg border-2 ${getTypeBorderColor(
              chat.type
            )} hover:bg-gray-50 dark:hover:bg-gray-700 transition-colors whitespace-nowrap`}
            initial={{ scale: 0 }}
            animate={{ scale: 1 }}
            exit={{ scale: 0 }}
            whileHover={{ scale: 1.05 }}
            whileTap={{ scale: 0.95 }}
          >
            <span className="text-2xl">{chat.avatar}</span>
            <span className="text-sm font-medium text-gray-900 dark:text-gray-100">
              {chat.sender}
            </span>
          </motion.button>
        ))}
      </div>
    </div>
  );
}
