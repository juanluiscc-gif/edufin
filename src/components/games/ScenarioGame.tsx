'use client';

import { useState, useEffect, useRef } from 'react';
import { motion, AnimatePresence } from 'framer-motion';
import type {
  ScenarioGameProps,
  GameState,
  ConversationNode,
  ResponseOption,
  GameEndState,
} from '@/types/scenario';
import ChatMessage from './ChatMessage';
import ResponseOptions from './ResponseOptions';
import ScenarioStats from './ScenarioStats';
import ConversationEnd from './ConversationEnd';

export default function ScenarioGame({
  gameId,
  gameTitle,
  gameData,
  onComplete,
}: ScenarioGameProps) {
  const { instructions, initialState, conversationTree, winConditions, loseConditions } = gameData;

  // Game state
  const [gameState, setGameState] = useState<GameState>({
    balance: initialState.balance,
    reputation: initialState.reputation,
    currentNodeId: conversationTree[0]?.id || '',
    conversationHistory: [],
    correctDecisions: 0,
    totalDecisions: 0,
    startTime: Date.now(),
  });

  const [currentMessages, setCurrentMessages] = useState<ConversationNode[]>([]);
  const [showInstructions, setShowInstructions] = useState(true);
  const [selectedOption, setSelectedOption] = useState<ResponseOption | null>(null);
  const [showFeedback, setShowFeedback] = useState(false);
  const [elapsedTime, setElapsedTime] = useState(0);
  const [gameEnd, setGameEnd] = useState<GameEndState>({ status: 'playing' });

  const chatContainerRef = useRef<HTMLDivElement>(null);

  // Timer
  useEffect(() => {
    if (showInstructions || gameEnd.status !== 'playing') return;

    const timer = setInterval(() => {
      setElapsedTime(Math.floor((Date.now() - gameState.startTime) / 1000));
    }, 1000);

    return () => clearInterval(timer);
  }, [showInstructions, gameState.startTime, gameEnd.status]);

  // Auto-scroll to bottom of chat
  useEffect(() => {
    if (chatContainerRef.current) {
      chatContainerRef.current.scrollTop = chatContainerRef.current.scrollHeight;
    }
  }, [currentMessages]);

  // Load first node
  useEffect(() => {
    if (!showInstructions && currentMessages.length === 0) {
      loadNode(gameState.currentNodeId);
    }
  }, [showInstructions]);

  const loadNode = (nodeId: string) => {
    const node = conversationTree.find((n) => n.id === nodeId);
    if (!node) return;

    // Add message to chat
    setCurrentMessages((prev) => [...prev, node]);

    // If it's an NPC message and has auto-advance, proceed automatically
    if (!node.isPlayerTurn && node.autoAdvanceDelay) {
      setTimeout(() => {
        // Find the next node (should have only one option)
        if (node.options && node.options[0]) {
          processResponse(node.options[0]);
        }
      }, node.autoAdvanceDelay);
    }
  };

  const handleOptionSelect = (option: ResponseOption) => {
    setSelectedOption(option);
    setShowFeedback(true);

    // Update state with consequences
    const newBalance = gameState.balance + option.consequences.balanceChange;
    const newReputation = Math.max(
      0,
      Math.min(5, gameState.reputation + option.consequences.reputationChange)
    );

    const newTotalDecisions = gameState.totalDecisions + 1;
    const newCorrectDecisions = option.isCorrect
      ? gameState.correctDecisions + 1
      : gameState.correctDecisions;

    setGameState((prev) => ({
      ...prev,
      balance: newBalance,
      reputation: newReputation,
      totalDecisions: newTotalDecisions,
      correctDecisions: newCorrectDecisions,
      conversationHistory: [
        ...prev.conversationHistory,
        {
          nodeId: prev.currentNodeId,
          selectedOptionId: option.id,
          timestamp: Date.now(),
        },
      ],
    }));

    // Wait for feedback, then process response
    setTimeout(() => {
      processResponse(option, newBalance, newReputation, newTotalDecisions, newCorrectDecisions);
    }, 2500);
  };

  const processResponse = (
    option: ResponseOption,
    balance?: number,
    reputation?: number,
    totalDecisions?: number,
    correctDecisions?: number
  ) => {
    const currentBalance = balance ?? gameState.balance;
    const currentReputation = reputation ?? gameState.reputation;
    const currentTotal = totalDecisions ?? gameState.totalDecisions;
    const currentCorrect = correctDecisions ?? gameState.correctDecisions;

    setShowFeedback(false);
    setSelectedOption(null);

    // Check for game end conditions
    const nextNodeId = option.consequences.nextNodeId;

    // Check explicit WIN/LOSE
    if (nextNodeId === 'WIN' || nextNodeId === 'LOSE') {
      endGame(
        nextNodeId === 'WIN' ? 'win' : 'lose',
        currentBalance,
        currentReputation,
        currentTotal,
        currentCorrect,
        nextNodeId === 'WIN'
          ? winConditions[0]?.message || '¡Excelente trabajo!'
          : loseConditions[0]?.message || 'Intenta de nuevo'
      );
      return;
    }

    // Check win conditions
    for (const condition of winConditions) {
      if (condition.type === 'balance' && currentBalance >= condition.threshold) {
        endGame('win', currentBalance, currentReputation, currentTotal, currentCorrect, condition.message);
        return;
      }
      if (condition.type === 'reputation' && currentReputation >= condition.threshold) {
        endGame('win', currentBalance, currentReputation, currentTotal, currentCorrect, condition.message);
        return;
      }
      if (condition.type === 'decisions' && currentCorrect >= condition.threshold) {
        endGame('win', currentBalance, currentReputation, currentTotal, currentCorrect, condition.message);
        return;
      }
    }

    // Check lose conditions
    for (const condition of loseConditions) {
      if (condition.type === 'balance' && currentBalance <= condition.threshold) {
        endGame('lose', currentBalance, currentReputation, currentTotal, currentCorrect, condition.message);
        return;
      }
      if (condition.type === 'reputation' && currentReputation <= condition.threshold) {
        endGame('lose', currentBalance, currentReputation, currentTotal, currentCorrect, condition.message);
        return;
      }
    }

    // Check for END
    if (nextNodeId === 'END') {
      // Determine win/lose based on final state
      const isWin = currentBalance >= initialState.balance && currentReputation >= 3;
      endGame(
        isWin ? 'win' : 'lose',
        currentBalance,
        currentReputation,
        currentTotal,
        currentCorrect,
        isWin
          ? '¡Completaste el escenario exitosamente!'
          : 'Completaste el escenario, pero podrías mejorar.'
      );
      return;
    }

    // Continue to next node
    if (nextNodeId) {
      setGameState((prev) => ({ ...prev, currentNodeId: nextNodeId }));
      loadNode(nextNodeId);
    }
  };

  const endGame = (
    status: 'win' | 'lose',
    finalBalance: number,
    finalReputation: number,
    totalDecisions: number,
    correctDecisions: number,
    message: string
  ) => {
    const timeTaken = Math.floor((Date.now() - gameState.startTime) / 1000);

    // Calculate final score
    const balanceDelta = finalBalance - initialState.balance;
    const balanceScore = balanceDelta * 10;
    const reputationScore = finalReputation * 200;
    const decisionScore = correctDecisions * 50;
    const timepenalty = timeTaken;
    const finalScore = Math.max(0, balanceScore + reputationScore + decisionScore - timepenalty);

    setGameEnd({
      status,
      finalBalance,
      finalReputation,
      message,
    });

    // Call parent completion handler
    onComplete(finalScore, timeTaken);
  };

  const handleStartGame = () => {
    setShowInstructions(false);
    setGameState((prev) => ({ ...prev, startTime: Date.now() }));
  };

  const handlePlayAgain = () => {
    // Reset to initial state
    setGameState({
      balance: initialState.balance,
      reputation: initialState.reputation,
      currentNodeId: conversationTree[0]?.id || '',
      conversationHistory: [],
      correctDecisions: 0,
      totalDecisions: 0,
      startTime: Date.now(),
    });
    setCurrentMessages([]);
    setShowInstructions(true);
    setSelectedOption(null);
    setShowFeedback(false);
    setElapsedTime(0);
    setGameEnd({ status: 'playing' });
  };

  const handleExit = () => {
    window.history.back();
  };

  // Show instructions
  if (showInstructions) {
    return (
      <div className="min-h-screen bg-gray-50 dark:bg-gray-900 flex items-center justify-center p-8">
        <motion.div
          className="bg-white dark:bg-gray-800 rounded-lg shadow-xl p-8 max-w-2xl"
          initial={{ scale: 0.9, opacity: 0 }}
          animate={{ scale: 1, opacity: 1 }}
          transition={{ duration: 0.3 }}
        >
          <h1 className="text-3xl font-bold text-gray-900 dark:text-gray-100 mb-4">
            {gameTitle}
          </h1>
          <div className="text-gray-700 dark:text-gray-300 mb-6 whitespace-pre-line">
            {instructions}
          </div>
          <div className="space-y-2 mb-6 text-sm text-gray-600 dark:text-gray-400">
            <p>💰 Balance inicial: ${initialState.balance.toLocaleString()}</p>
            <p>⭐ Reputación inicial: {initialState.reputation} estrellas</p>
            <p>📊 Tus decisiones afectarán tu dinero y reputación</p>
            <p>🎯 Objetivo: Completa el escenario exitosamente</p>
          </div>
          <button
            onClick={handleStartGame}
            className="w-full bg-blue-600 hover:bg-blue-700 text-white font-bold py-3 px-6 rounded-lg transition-colors"
          >
            Comenzar
          </button>
        </motion.div>
      </div>
    );
  }

  // Show game end screen
  if (gameEnd.status !== 'playing') {
    return (
      <ConversationEnd
        status={gameEnd.status}
        finalBalance={gameEnd.finalBalance}
        finalReputation={gameEnd.finalReputation}
        message={gameEnd.message}
        correctDecisions={gameState.correctDecisions}
        totalDecisions={gameState.totalDecisions}
        timeTaken={elapsedTime}
        finalScore={
          (gameEnd.finalBalance - initialState.balance) * 10 +
          gameEnd.finalReputation * 200 +
          gameState.correctDecisions * 50 -
          elapsedTime
        }
        onPlayAgain={handlePlayAgain}
        onExit={handleExit}
      />
    );
  }

  // Main game interface
  const currentNode = conversationTree.find((n) => n.id === gameState.currentNodeId);

  return (
    <div className="min-h-screen bg-gray-50 dark:bg-gray-900 flex">
      {/* Left Sidebar - Stats */}
      <div className="w-80 bg-gray-200 dark:bg-gray-800 border-r-2 border-gray-300 dark:border-gray-700 p-6 flex flex-col">
        <div className="mb-6">
          <h2 className="text-lg font-bold text-gray-900 dark:text-gray-100">{gameTitle}</h2>
        </div>

        <ScenarioStats
          balance={gameState.balance}
          reputation={gameState.reputation}
          decisionsCount={gameState.totalDecisions}
          totalDecisions={conversationTree.filter((n) => n.isPlayerTurn).length}
          timeElapsed={elapsedTime}
        />

        <button
          onClick={handleExit}
          className="mt-auto bg-red-500 hover:bg-red-600 text-white font-semibold py-2 px-4 rounded transition-colors"
        >
          Salir
        </button>
      </div>

      {/* Main Chat Area */}
      <div className="flex-1 flex flex-col">
        {/* Chat Messages */}
        <div
          ref={chatContainerRef}
          className="flex-1 overflow-y-auto p-6 space-y-4"
          style={{ maxHeight: 'calc(100vh - 300px)' }}
        >
          <AnimatePresence>
            {currentMessages.map((msg, index) => (
              <ChatMessage
                key={`${msg.id}-${index}`}
                character={msg.character}
                message={msg.message}
                timestamp={new Date().toLocaleTimeString('es-MX', {
                  hour: '2-digit',
                  minute: '2-digit',
                })}
                isPlayer={false}
              />
            ))}
          </AnimatePresence>
        </div>

        {/* Response Options Area */}
        {currentNode && currentNode.isPlayerTurn && currentNode.options && (
          <div className="border-t-2 border-gray-300 dark:border-gray-700 bg-white dark:bg-gray-800 p-6">
            <ResponseOptions
              options={currentNode.options}
              onSelect={handleOptionSelect}
              selectedOptionId={selectedOption?.id}
              showFeedback={showFeedback}
              disabled={showFeedback}
            />
          </div>
        )}
      </div>
    </div>
  );
}
