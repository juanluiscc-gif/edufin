'use client';

import { useState, useEffect, useRef } from 'react';
import { motion, AnimatePresence } from 'framer-motion';
import MessageInbox, { type InboxMessage } from './MessageInbox';
import MinimizedChatBar, { type MinimizedChat } from './MinimizedChatBar';
import InventoryAlert from './InventoryAlert';
import SupplierDialog from './SupplierDialog';
import ScenarioStats from '../ScenarioStats';
import ChatMessage from '../ChatMessage';
import ResponseOptions from '../ResponseOptions';
import { getCurrentLevel, getLevelConfig, shouldLevelUp } from '@/lib/simulation/levelSystem';
import { processOrder, shouldShowAlert, getProfitPerUnit } from '@/lib/simulation/inventoryManager';
import { selectNextConversation, getConversationData } from '@/lib/simulation/conversationManager';
import { getConversationsForLevel } from '@/lib/simulation/conversationPool';
import { generateConversationTree } from '@/lib/simulation/conversationGenerator';
import { getRandomName, getRandomAvatar } from '@/lib/simulation/nameGenerator';
import type { SimulationGameState, SimulationMessage, GameEndResult } from '@/types/simulation';
import type { ConversationNode, ResponseOption } from '@/types/scenario';

interface UnifiedScenarioGameProps {
  onComplete: (score: number, timeTaken: number) => void;
  onExit: () => void;
}

const GAME_DURATION_SECONDS = 120; // 2 minutes
const MAX_CONVERSATIONS = 10;

export default function UnifiedScenarioGame({ onComplete, onExit }: UnifiedScenarioGameProps) {
  // Game state
  const [gameState, setGameState] = useState<SimulationGameState>({
    balance: 100,
    reputation: 3,
    inventory: 10,
    currentLevel: 1,
    messages: [],
    activeChatId: null,
    conversationsCompleted: 0,
    sessionStartTime: Date.now(),
    elapsedTime: 0,
    hoaxEncounters: [],
    showInventoryAlert: false,
    showSupplierDialog: false,
    gameStatus: 'playing',
  });

  const [showInstructions, setShowInstructions] = useState(true);
  const [selectedOption, setSelectedOption] = useState<ResponseOption | null>(null);
  const [showFeedback, setShowFeedback] = useState(false);
  const [currentNodeIndex, setCurrentNodeIndex] = useState(0);
  const [conversationHistory, setConversationHistory] = useState<ConversationNode[]>([]);

  const chatContainerRef = useRef<HTMLDivElement>(null);
  const messageIntervalRef = useRef<NodeJS.Timeout | null>(null);

  // Timer
  useEffect(() => {
    if (showInstructions || gameState.gameStatus !== 'playing') return;

    const timer = setInterval(() => {
      const elapsed = Math.floor((Date.now() - gameState.sessionStartTime) / 1000);
      setGameState((prev) => ({ ...prev, elapsedTime: elapsed }));

      // Check time limit
      if (elapsed >= GAME_DURATION_SECONDS) {
        endGame('completed', 'Jornada completada - Tiempo cumplido');
      }
    }, 1000);

    return () => clearInterval(timer);
  }, [showInstructions, gameState.sessionStartTime, gameState.gameStatus]);

  // Auto-scroll chat
  useEffect(() => {
    if (chatContainerRef.current) {
      chatContainerRef.current.scrollTop = chatContainerRef.current.scrollHeight;
    }
  }, [conversationHistory]);

  // Check inventory alert
  useEffect(() => {
    if (shouldShowAlert(gameState.inventory) && !gameState.showInventoryAlert) {
      setGameState((prev) => ({ ...prev, showInventoryAlert: true }));
    }
  }, [gameState.inventory, gameState.showInventoryAlert]);

  // Check level up
  useEffect(() => {
    if (shouldLevelUp(gameState.balance, gameState.currentLevel)) {
      const newLevel = gameState.currentLevel + 1;
      setGameState((prev) => ({ ...prev, currentLevel: newLevel }));
      // TODO: Show level up notification
    }
  }, [gameState.balance, gameState.currentLevel]);

  // Message generation system
  useEffect(() => {
    if (showInstructions || gameState.gameStatus !== 'playing') return;

    const levelConfig = getLevelConfig(gameState.currentLevel);
    const intervalMs = levelConfig.messageIntervalSeconds * 1000;

    // Generate first message immediately
    if (gameState.messages.length === 0) {
      generateNewMessage();
    }

    // Set up interval for subsequent messages
    messageIntervalRef.current = setInterval(() => {
      const pendingCount = gameState.messages.filter((m) => m.status === 'pending').length;
      const activeCount = gameState.messages.filter(
        (m) => m.status === 'active' || m.status === 'minimized'
      ).length;

      // Don't generate if we've reached max simultaneous messages
      if (pendingCount + activeCount < levelConfig.simultaneousMessages) {
        generateNewMessage();
      }
    }, intervalMs);

    return () => {
      if (messageIntervalRef.current) {
        clearInterval(messageIntervalRef.current);
      }
    };
  }, [
    showInstructions,
    gameState.gameStatus,
    gameState.currentLevel,
    gameState.messages.length,
  ]);

  const generateNewMessage = () => {
    // Get currently active conversation IDs to avoid repetition
    const activeIds = gameState.messages.map((m) => m.conversationId);

    // Select next conversation using manager logic (handles suppliers, etc.)
    const candidateMetadata = selectNextConversation(
      gameState.currentLevel,
      gameState.inventory,
      activeIds
    );

    if (!candidateMetadata) {
      // Pool exhausted or no suitable conversation found
      return;
    }

    // Retrieve full conversation data from the pool
    const fullData = getConversationData(candidateMetadata.id);

    if (!fullData) {
      console.error(`Conversation data not found for ID: ${candidateMetadata.id}`);
      return;
    }

    // Check if we already have this message active (sanity check)
    if (activeIds.includes(candidateMetadata.id)) {
      return;
    }

    // Generate random identity
    const randomName = getRandomName();
    const randomAvatar = getRandomAvatar(fullData.type);

    // HOAX LOGIC: 25% chance of being a hoax/trap
    const isHoax = Math.random() < 0.25;

    // Generate conversation tree based on metadata
    // We cast fullData to any because the type definition in manager might be partial 
    // compared to the runtime data from pool
    const conversationTree = generateConversationTree({
      id: fullData.id,
      name: randomName, // Use dynamic name
      avatar: randomAvatar, // Use dynamic avatar
      type: fullData.type,
      trait: fullData.trait || 'regular',
      difficulty: fullData.difficulty || 1,
      initialMessage: fullData.initialMessage || '...',
      scenarioContext: fullData.scenarioContext || '',
      isHoax: isHoax,
    });

    // Map conversation type to message type
    const messageType = fullData.type;

    const newMessage: SimulationMessage = {
      id: `msg-${Date.now()}-${Math.random()}`,
      conversationId: fullData.id,
      sender: randomName, // Use dynamic name
      avatar: randomAvatar, // Use dynamic avatar
      type: messageType,
      preview: (fullData.initialMessage || '').substring(0, 60) + '...',
      status: 'pending',
      receivedAt: Date.now(),
      conversationData: conversationTree,
      currentNodeIndex: 0,
            
      // Metadata fields
      name: randomName, // Use dynamic name
      trait: fullData.trait,
      difficulty: fullData.difficulty,
      initialMessage: fullData.initialMessage,
      scenarioContext: fullData.scenarioContext,
      isHoax: isHoax,
    };

    setGameState((prev) => ({
      ...prev,
      messages: [...prev.messages, newMessage],
      hoaxEncounters: isHoax 
        ? [...prev.hoaxEncounters, fullData.trait || 'regular']
        : prev.hoaxEncounters,
    }));
  };

  const handleMessageOpen = (messageId: string) => {
    const message = gameState.messages.find((m) => m.id === messageId);
    if (!message) return;

    // Minimize currently active chat if any
    setGameState((prev) => ({
      ...prev,
      messages: prev.messages.map((m) =>
        m.status === 'active' ? { ...m, status: 'minimized' } : m
      ),
      activeChatId: messageId,
    }));

    // Set message as active
    setGameState((prev) => ({
      ...prev,
      messages: prev.messages.map((m) => (m.id === messageId ? { ...m, status: 'active' } : m)),
    }));

    // Load conversation
    setCurrentNodeIndex(0);
    setConversationHistory([message.conversationData[0]]);
  };

  const handleChatRestore = (chatId: string) => {
    const message = gameState.messages.find((m) => m.id === chatId);
    if (!message) return;

    // Minimize current active
    setGameState((prev) => ({
      ...prev,
      messages: prev.messages.map((m) =>
        m.status === 'active' ? { ...m, status: 'minimized' } : m
      ),
      activeChatId: chatId,
    }));

    // Restore this chat
    setGameState((prev) => ({
      ...prev,
      messages: prev.messages.map((m) => (m.id === chatId ? { ...m, status: 'active' } : m)),
    }));

    // Reload conversation history for this chat
    setCurrentNodeIndex(message.currentNodeIndex);
    setConversationHistory(message.conversationData.slice(0, message.currentNodeIndex + 1));
  };

  const handleOptionSelect = (option: ResponseOption) => {
    setSelectedOption(option);
    setShowFeedback(true);

    // Apply consequences
    const newBalance = gameState.balance + option.consequences.balanceChange;
    const newReputation = Math.max(0, Math.min(5, gameState.reputation + option.consequences.reputationChange));

    // Update inventory if it was a sale
    let newInventory = gameState.inventory;
    if (option.consequences.balanceChange > 0 && gameState.inventory > 0) {
      newInventory = gameState.inventory - 1; // Sold 1 unit
    }

    setGameState((prev) => ({
      ...prev,
      balance: newBalance,
      reputation: newReputation,
      inventory: newInventory,
    }));

    // Check game over conditions
    if (newBalance <= 0) {
      setTimeout(() => {
        endGame('game_over', 'Te has quedado sin fondos');
      }, 2500);
      return;
    }

    if (newReputation <= 0) {
      setTimeout(() => {
        endGame('game_over', 'Has perdido toda tu reputación');
      }, 2500);
      return;
    }

    // Continue conversation or end
    setTimeout(() => {
      processResponse(option, newBalance, newReputation, newInventory);
    }, 2500);
  };

  const processResponse = (
    option: ResponseOption,
    balance: number,
    reputation: number,
    inventory: number
  ) => {
    setShowFeedback(false);
    setSelectedOption(null);

    const nextNodeId = option.consequences.nextNodeId;

    // Check if conversation ended
    if (nextNodeId === 'END' || nextNodeId === 'WIN' || nextNodeId === 'LOSE') {
      completeConversation();
      return;
    }

    // Continue to next node (if exists)
    const activeMessage = gameState.messages.find((m) => m.status === 'active');
    if (!activeMessage) return;

    const nextNode = activeMessage.conversationData.find((n) => n.id === nextNodeId);
    if (nextNode) {
      setCurrentNodeIndex((prev) => prev + 1);
      setConversationHistory((prev) => [...prev, nextNode]);

      // Update message's current node
      setGameState((prev) => ({
        ...prev,
        messages: prev.messages.map((m) =>
          m.id === activeMessage.id ? { ...m, currentNodeIndex: currentNodeIndex + 1 } : m
        ),
      }));
    } else {
      completeConversation();
    }
  };

  const completeConversation = () => {
    const activeMessageId = gameState.activeChatId;
    if (!activeMessageId) return;

    // Remove completed message
    setGameState((prev) => ({
      ...prev,
      messages: prev.messages.filter((m) => m.id !== activeMessageId),
      activeChatId: null,
      conversationsCompleted: prev.conversationsCompleted + 1,
    }));

    setConversationHistory([]);
    setCurrentNodeIndex(0);

    // Check if reached max conversations
    if (gameState.conversationsCompleted + 1 >= MAX_CONVERSATIONS) {
      endGame('completed', 'Jornada completada - Conversaciones máximas alcanzadas');
    }
  };

  const handleSupplierOrder = (quantity: 10 | 50 | 100) => {
    const result = processOrder(gameState.balance, gameState.inventory, quantity);

    if (result.success) {
      setGameState((prev) => ({
        ...prev,
        balance: result.newBalance,
        inventory: result.newInventory,
        showSupplierDialog: false,
        showInventoryAlert: false,
      }));
    } else {
      // Show error message
      alert(result.message);
    }
  };

  const endGame = (status: 'completed' | 'game_over', reason: string) => {
    setGameState((prev) => ({
      ...prev,
      gameStatus: status === 'completed' ? 'completed' : 'game_over',
    }));

    // Calculate final score
    const balanceDelta = gameState.balance - 100;
    const balanceScore = balanceDelta * 10;
    const reputationScore = gameState.reputation * 200;
    const conversationScore = gameState.conversationsCompleted * 50;
    const levelBonus = gameState.currentLevel * 100;
    const timePenalty = gameState.elapsedTime;

    const finalScore = Math.max(0, balanceScore + reputationScore + conversationScore + levelBonus - timePenalty);

    // We do NOT call onComplete here anymore to prevent auto-closing.
    // The user must click "Salir" or "Jugar de nuevo".
  };

  const handleStartGame = () => {
    setShowInstructions(false);
    setGameState((prev) => ({ ...prev, sessionStartTime: Date.now() }));
  };

  // Instructions screen
  if (showInstructions) {
    return (
      <div className="min-h-screen bg-gray-50 dark:bg-gray-900 flex items-center justify-center p-8">
        <motion.div
          className="bg-white dark:bg-gray-800 rounded-lg shadow-xl p-8 max-w-2xl"
          initial={{ scale: 0.9, opacity: 0 }}
          animate={{ scale: 1, opacity: 1 }}
        >
          <h1 className="text-3xl font-bold text-gray-900 dark:text-gray-100 mb-4">
            🏪 Simulación de Comercio Digital
          </h1>
          <div className="text-gray-700 dark:text-gray-300 mb-6 space-y-3">
            <p>Gestiona tu negocio digital respondiendo a clientes y proveedores.</p>
            <div className="bg-blue-50 dark:bg-blue-900 p-4 rounded">
              <p className="font-semibold mb-2">📋 Objetivo:</p>
              <ul className="list-disc list-inside space-y-1 text-sm">
                <li>Mantén tu presupuesto positivo</li>
                <li>Conserva tu reputación (⭐ estrellas)</li>
                <li>Gestiona tu inventario</li>
                <li>Completa {MAX_CONVERSATIONS} conversaciones o {GAME_DURATION_SECONDS / 60} minutos</li>
              </ul>
            </div>
            <div className="space-y-2 text-sm">
              <p>💰 Presupuesto inicial: $100</p>
              <p>⭐ Reputación inicial: 3 estrellas</p>
              <p>📦 Inventario inicial: 10 unidades</p>
              <p>⏱️ Duración: {GAME_DURATION_SECONDS / 60} minutos</p>
            </div>
          </div>
          <button
            onClick={handleStartGame}
            className="w-full bg-blue-600 hover:bg-blue-700 text-white font-bold py-3 px-6 rounded-lg transition-colors"
          >
            Comenzar Jornada
          </button>
        </motion.div>
      </div>
    );
  }

  // Game over screen
  if (gameState.gameStatus !== 'playing') {
    // Determine feedback based on hoax encounters
    let feedbackPhrase = "La duda puede ser una gran herramienta a tu favor."; // Default
    
    if (gameState.hoaxEncounters.length > 0) {
      // Prioritize unique hoaxes
      if (gameState.hoaxEncounters.includes('indeciso')) {
        feedbackPhrase = "A veces dedicarle mucho tiempo a un cliente, puede hacerte perder a otros clientes.";
      } else if (gameState.hoaxEncounters.includes('rapido') || gameState.hoaxEncounters.includes('agresivo')) {
        feedbackPhrase = "No siempre la prisa es real, sino una forma de presionarte y obtener de ti lo que quieren.";
      } else if (gameState.hoaxEncounters.includes('amigable') || gameState.hoaxEncounters.includes('regular')) {
        feedbackPhrase = "La confianza se gana o se pierde, y no dudes en arriesgarte cuando lo creas necesario.";
      }
    }

    const calculateFinalScore = () => {
      const balanceDelta = gameState.balance - 100;
      const balanceScore = balanceDelta * 10;
      const reputationScore = gameState.reputation * 200;
      const conversationScore = gameState.conversationsCompleted * 50;
      const levelBonus = gameState.currentLevel * 100;
      const timePenalty = gameState.elapsedTime;
      return Math.max(0, balanceScore + reputationScore + conversationScore + levelBonus - timePenalty);
    };

    const finalScore = calculateFinalScore();

    return (
      <div className="min-h-screen bg-gray-50 dark:bg-gray-900 flex items-center justify-center p-8">
        <motion.div
          className="bg-white dark:bg-gray-800 rounded-lg shadow-xl p-8 max-w-lg w-full"
          initial={{ scale: 0.9, opacity: 0 }}
          animate={{ scale: 1, opacity: 1 }}
        >
          <div className="text-center mb-6">
            <span className="text-6xl mb-4 block">
              {gameState.gameStatus === 'completed' ? '🏆' : '📉'}
            </span>
            <h2 className="text-3xl font-bold text-gray-900 dark:text-gray-100">
              {gameState.gameStatus === 'completed' ? '¡Jornada Completa!' : 'Jornada Terminada'}
            </h2>
            <p className="text-gray-500 dark:text-gray-400 mt-2">
              {gameState.gameStatus === 'completed' 
                ? 'Has gestionado tu negocio exitosamente.' 
                : 'Tu negocio no ha podido continuar.'}
            </p>
          </div>

          {/* Feedback Section */}
          <div className="bg-yellow-50 dark:bg-yellow-900/30 border-l-4 border-yellow-500 p-4 mb-6 rounded-r">
            <h3 className="font-bold text-yellow-800 dark:text-yellow-200 text-sm uppercase tracking-wide mb-1">
              Reflexión del Día
            </h3>
            <p className="text-yellow-900 dark:text-yellow-100 italic">
              "{feedbackPhrase}"
            </p>
          </div>

          <div className="grid grid-cols-2 gap-4 mb-8 text-center">
            <div className="bg-gray-100 dark:bg-gray-700 p-3 rounded">
              <p className="text-xs text-gray-500 uppercase">Puntaje</p>
              <p className="text-2xl font-bold text-blue-600 dark:text-blue-400">{finalScore}</p>
            </div>
            <div className="bg-gray-100 dark:bg-gray-700 p-3 rounded">
              <p className="text-xs text-gray-500 uppercase">Balance</p>
              <p className={`text-2xl font-bold ${gameState.balance >= 100 ? 'text-green-600' : 'text-red-600'}`}>
                ${gameState.balance}
              </p>
            </div>
            <div className="bg-gray-100 dark:bg-gray-700 p-3 rounded">
              <p className="text-xs text-gray-500 uppercase">Reputación</p>
              <p className="text-2xl font-bold text-yellow-600">{'⭐'.repeat(gameState.reputation)}</p>
            </div>
            <div className="bg-gray-100 dark:bg-gray-700 p-3 rounded">
              <p className="text-xs text-gray-500 uppercase">Nivel</p>
              <p className="text-2xl font-bold text-purple-600">{gameState.currentLevel}</p>
            </div>
          </div>

          <div className="flex gap-4">
            <button
              onClick={() => {
                // Determine final reason or just generic
                onExit();
                 // We call onComplete too to save score if needed, but onExit handles navigation
                 onComplete(finalScore, gameState.elapsedTime);
              }}
              className="flex-1 bg-gray-200 hover:bg-gray-300 dark:bg-gray-700 dark:hover:bg-gray-600 text-gray-800 dark:text-gray-200 font-bold py-3 px-6 rounded-lg transition-colors"
            >
              Salir
            </button>
            <button
              onClick={() => {
                // Reset State completely
                setGameState({
                  balance: 100,
                  reputation: 3,
                  inventory: 10,
                  currentLevel: 1,
                  messages: [],
                  activeChatId: null,
                  conversationsCompleted: 0,
                  sessionStartTime: Date.now(),
                  elapsedTime: 0,
                  showInventoryAlert: false,
                  showSupplierDialog: false,
                  gameStatus: 'playing',
                  hoaxEncounters: [],
                });
                setShowInstructions(false); // Skip instructions on replay? Or true to show again?
                                          // Let's skip to keep it fluid
              }}
              className="flex-1 bg-blue-600 hover:bg-blue-700 text-white font-bold py-3 px-6 rounded-lg transition-colors"
            >
              Jugar de Nuevo
            </button>
          </div>
        </motion.div>
      </div>
    );
  }

  // Main game interface
  const activeMessage = gameState.messages.find((m) => m.status === 'active');
  const currentNode = activeMessage?.conversationData[currentNodeIndex];
  const pendingMessages = gameState.messages.filter((m) => m.status === 'pending');
  const minimizedChats = gameState.messages.filter((m) => m.status === 'minimized');

  return (
    <div className="min-h-screen bg-gray-50 dark:bg-gray-900 flex pb-20">
      {/* Left Sidebar - Stats */}
      <div className="w-80 bg-gray-200 dark:bg-gray-800 border-r-2 border-gray-300 dark:border-gray-700 p-6 flex flex-col">
        <div className="mb-6">
          <h2 className="text-lg font-bold text-gray-900 dark:text-gray-100">
            🏪 Simulación Comercial
          </h2>
          <p className="text-sm text-gray-600 dark:text-gray-400">Nivel {gameState.currentLevel}</p>
        </div>

        <ScenarioStats
          balance={gameState.balance}
          reputation={gameState.reputation}
          decisionsCount={gameState.conversationsCompleted}
          totalDecisions={MAX_CONVERSATIONS}
          timeElapsed={gameState.elapsedTime}
        />

        <div className="mt-4 p-3 bg-white dark:bg-gray-700 rounded">
          <p className="text-sm font-semibold text-gray-700 dark:text-gray-300">
            📦 Inventario
          </p>
          <p className="text-2xl font-bold text-blue-600 dark:text-blue-400">
            {gameState.inventory} unidades
          </p>
        </div>

        <button
          onClick={onExit}
          className="mt-auto bg-red-500 hover:bg-red-600 text-white font-semibold py-2 px-4 rounded transition-colors"
        >
          Salir
        </button>
      </div>

      {/* Main Area */}
      <div className="flex-1 flex flex-col p-6 space-y-4">
        {/* Message Inbox */}
        {pendingMessages.length > 0 && (
          <MessageInbox
            messages={pendingMessages.map((m) => ({
              id: m.id,
              sender: m.sender,
              avatar: m.avatar,
              preview: m.preview,
              type: m.type,
              receivedAt: m.receivedAt,
            }))}
            onMessageOpen={handleMessageOpen}
          />
        )}

        {/* Active Chat Window */}
        {activeMessage && currentNode && (
          <div className="flex-1 bg-white dark:bg-gray-800 rounded-lg shadow-lg p-6 flex flex-col">
            <div className="flex items-center justify-between mb-4 pb-3 border-b border-gray-200 dark:border-gray-700">
              <div className="flex items-center space-x-2">
                <span className="text-3xl">{activeMessage.avatar}</span>
                <div>
                  <p className="font-bold text-gray-900 dark:text-gray-100">
                    {activeMessage.sender}
                  </p>
                  <p className="text-xs text-gray-500 dark:text-gray-400">
                    {activeMessage.type === 'client' ? 'Cliente' : 'Proveedor'}
                  </p>
                </div>
              </div>
              <button
                onClick={() => {
                  setGameState((prev) => ({
                    ...prev,
                    messages: prev.messages.map((m) =>
                      m.id === activeMessage.id ? { ...m, status: 'minimized' } : m
                    ),
                    activeChatId: null,
                  }));
                  setConversationHistory([]);
                }}
                className="text-gray-500 hover:text-gray-700 dark:text-gray-400 dark:hover:text-gray-200"
              >
                ➖ Minimizar
              </button>
            </div>

            {/* Chat messages */}
            <div ref={chatContainerRef} className="flex-1 overflow-y-auto space-y-3 mb-4">
              <AnimatePresence>
                {conversationHistory.map((node, idx) => (
                  <ChatMessage
                    key={`${node.id}-${idx}`}
                    character={node.character}
                    message={node.message}
                    timestamp={new Date().toLocaleTimeString('es-MX', {
                      hour: '2-digit',
                      minute: '2-digit',
                    })}
                    isPlayer={false}
                  />
                ))}
              </AnimatePresence>
            </div>

            {/* Response options */}
            {currentNode.isPlayerTurn && currentNode.options && (
              <ResponseOptions
                options={currentNode.options}
                onSelect={handleOptionSelect}
                selectedOptionId={selectedOption?.id}
                showFeedback={showFeedback}
                disabled={showFeedback}
              />
            )}
          </div>
        )}

        {/* No active chat message */}
        {!activeMessage && pendingMessages.length === 0 && (
          <div className="flex-1 flex items-center justify-center bg-white dark:bg-gray-800 rounded-lg">
            <p className="text-gray-500 dark:text-gray-400">
              Esperando nuevos mensajes...
            </p>
          </div>
        )}
      </div>

      {/* Inventory Alert */}
      {gameState.showInventoryAlert && (
        <InventoryAlert
          inventory={gameState.inventory}
          onOpenSupplierDialog={() =>
            setGameState((prev) => ({ ...prev, showSupplierDialog: true }))
          }
          onDismiss={() => setGameState((prev) => ({ ...prev, showInventoryAlert: false }))}
        />
      )}

      {/* Supplier Dialog */}
      <SupplierDialog
        isOpen={gameState.showSupplierDialog}
        currentBalance={gameState.balance}
        onClose={() => setGameState((prev) => ({ ...prev, showSupplierDialog: false }))}
        onOrder={handleSupplierOrder}
      />

      {/* Minimized Chats Bar */}
      <MinimizedChatBar
        chats={minimizedChats.map((m) => ({
          id: m.id,
          sender: m.sender,
          avatar: m.avatar,
          type: m.type,
        }))}
        onChatRestore={handleChatRestore}
      />
    </div>
  );
}
