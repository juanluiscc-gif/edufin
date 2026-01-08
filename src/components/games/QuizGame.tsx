'use client';

import { useState, useEffect } from 'react';
import { calculateQuizScore } from '@/lib/scoring';

interface QuizQuestion {
  id: number;
  text: string;
  options: string[];
  correctIndex: number;
  explanation: string;
}

interface QuizGameData {
  instructions: string;
  questions: QuizQuestion[];
}

interface QuizGameProps {
  gameId: string;
  gameTitle: string;
  gameData: QuizGameData;
  onComplete: (score: number, timeTaken: number) => void;
}

export default function QuizGame({ gameId, gameTitle, gameData, onComplete }: QuizGameProps) {
  const [currentQuestion, setCurrentQuestion] = useState(0);
  const [score, setScore] = useState(0);
  const [correctAnswers, setCorrectAnswers] = useState(0);
  const [answeredQuestions, setAnsweredQuestions] = useState<Set<number>>(new Set());
  const [selectedAnswer, setSelectedAnswer] = useState<number | null>(null);
  const [showFeedback, setShowFeedback] = useState(false);
  const [startTime] = useState(Date.now());
  const [elapsedTime, setElapsedTime] = useState(0);
  const [questionStartTime, setQuestionStartTime] = useState(Date.now());
  const [showInstructions, setShowInstructions] = useState(true);

  const { instructions, questions } = gameData;
  const totalQuestions = questions.length;
  const currentQ = questions[currentQuestion];

  // Update elapsed time every second
  useEffect(() => {
    const timer = setInterval(() => {
      setElapsedTime(Math.floor((Date.now() - startTime) / 1000));
    }, 1000);

    return () => clearInterval(timer);
  }, [startTime]);

  const handleAnswerSelect = (answerIndex: number) => {
    if (showFeedback) return; // Prevent changing answer during feedback

    setSelectedAnswer(answerIndex);
    setShowFeedback(true);

    const isCorrect = answerIndex === currentQ.correctIndex;
    const timeTaken = Math.floor((Date.now() - questionStartTime) / 1000);

    if (isCorrect) {
      // Calculate points for this question
      const basePoints = 100;
      const timeBonus = Math.max(0, 50 - timeTaken);
      const questionPoints = basePoints + timeBonus;

      setScore(prev => prev + questionPoints);
      setCorrectAnswers(prev => prev + 1);
    }

    // Mark question as answered
    setAnsweredQuestions(prev => new Set([...prev, currentQuestion]));

    // Auto-advance to next question after 2 seconds
    setTimeout(() => {
      if (currentQuestion < totalQuestions - 1) {
        setCurrentQuestion(prev => prev + 1);
        setSelectedAnswer(null);
        setShowFeedback(false);
        setQuestionStartTime(Date.now());
      } else {
        // Quiz complete
        handleComplete();
      }
    }, 3000);
  };

  const handleComplete = () => {
    const totalTimeTaken = Math.floor((Date.now() - startTime) / 1000);
    const finalScore = calculateQuizScore({
      correctAnswers,
      totalQuestions,
      timeTakenSeconds: totalTimeTaken
    });

    onComplete(finalScore, totalTimeTaken);
  };

  const handleStartQuiz = () => {
    setShowInstructions(false);
    setQuestionStartTime(Date.now());
  };

  const handleExitQuiz = () => {
    if (confirm('Are you sure you want to exit? Your progress will be lost.')) {
      window.history.back();
    }
  };

  const formatTime = (seconds: number): string => {
    const mins = Math.floor(seconds / 60);
    const secs = seconds % 60;
    return `${mins}:${secs.toString().padStart(2, '0')}`;
  };

  // Show instructions screen
  if (showInstructions) {
    return (
      <div className="min-h-screen bg-gray-50 dark:bg-gray-900 flex items-center justify-center p-8">
        <div className="bg-white dark:bg-gray-800 rounded-lg shadow-xl p-8 max-w-2xl">
          <h1 className="text-3xl font-bold text-gray-900 dark:text-gray-100 mb-4">
            {gameTitle}
          </h1>
          <div className="text-gray-700 dark:text-gray-300 mb-6 whitespace-pre-line">
            {instructions}
          </div>
          <div className="space-y-2 mb-6 text-sm text-gray-600 dark:text-gray-400">
            <p>• {totalQuestions} questions</p>
            <p>• 100 points per correct answer + time bonus</p>
            <p>• Answer quickly for extra points!</p>
          </div>
          <button
            onClick={handleStartQuiz}
            className="w-full bg-blue-600 hover:bg-blue-700 text-white font-bold py-3 px-6 rounded-lg transition-colors"
          >
            Start Quiz
          </button>
        </div>
      </div>
    );
  }

  // Main quiz interface
  return (
    <div className="min-h-screen bg-gray-50 dark:bg-gray-900 flex">
      {/* Left Sidebar */}
      <div className="w-80 bg-gray-200 dark:bg-gray-800 border-r-2 border-gray-300 dark:border-gray-700 p-6 flex flex-col">
        {/* Game Title */}
        <div className="mb-6">
          <h2 className="text-lg font-bold text-gray-900 dark:text-gray-100">
            {gameTitle}
          </h2>
        </div>

        {/* Current Score */}
        <div className="bg-white dark:bg-gray-700 rounded-lg p-4 mb-4">
          <div className="text-sm text-gray-600 dark:text-gray-400 mb-1">Current Score</div>
          <div className="text-3xl font-bold text-green-600 dark:text-green-400">
            {score}
          </div>
        </div>

        {/* Time Elapsed */}
        <div className="bg-white dark:bg-gray-700 rounded-lg p-4 mb-4">
          <div className="text-sm text-gray-600 dark:text-gray-400 mb-1">Time Elapsed</div>
          <div className="text-2xl font-bold text-blue-600 dark:text-blue-400">
            {formatTime(elapsedTime)}
          </div>
        </div>

        {/* Question Progress */}
        <div className="bg-white dark:bg-gray-700 rounded-lg p-4 mb-6">
          <div className="text-sm text-gray-600 dark:text-gray-400 mb-2">Progress</div>
          <div className="grid grid-cols-5 gap-2">
            {questions.map((_, index) => (
              <div
                key={index}
                className={`w-9 h-9 flex items-center justify-center rounded text-sm font-semibold ${
                  index === currentQuestion
                    ? 'bg-blue-600 text-white'
                    : answeredQuestions.has(index)
                    ? 'bg-green-600 text-white'
                    : 'bg-gray-300 dark:bg-gray-600 text-gray-700 dark:text-gray-300'
                }`}
              >
                {index + 1}
              </div>
            ))}
          </div>
        </div>

        {/* Exit Button */}
        <button
          onClick={handleExitQuiz}
          className="mt-auto bg-red-500 hover:bg-red-600 text-white font-semibold py-2 px-4 rounded transition-colors"
        >
          Exit Quiz
        </button>
      </div>

      {/* Main Content Area */}
      <div className="flex-1 p-12 flex flex-col items-center justify-center">
        <div className="max-w-4xl w-full">
          {/* Question Header */}
          <div className="text-sm text-gray-600 dark:text-gray-400 mb-4">
            Question {currentQuestion + 1} of {totalQuestions}
          </div>

          {/* Question Text */}
          <h2 className="text-3xl font-bold text-gray-900 dark:text-gray-100 mb-8 leading-relaxed">
            {currentQ.text}
          </h2>

          {/* Answer Options */}
          <div className="grid grid-cols-2 gap-6">
            {currentQ.options.map((option, index) => {
              const isSelected = selectedAnswer === index;
              const isCorrect = index === currentQ.correctIndex;
              const showAsCorrect = showFeedback && isCorrect;
              const showAsIncorrect = showFeedback && isSelected && !isCorrect;

              return (
                <button
                  key={index}
                  onClick={() => handleAnswerSelect(index)}
                  disabled={showFeedback}
                  className={`min-h-[120px] p-6 rounded-lg text-lg font-medium transition-all ${
                    showAsCorrect
                      ? 'bg-green-100 dark:bg-green-900 border-4 border-green-600 text-green-900 dark:text-green-100'
                      : showAsIncorrect
                      ? 'bg-red-100 dark:bg-red-900 border-4 border-red-600 text-red-900 dark:text-red-100'
                      : 'bg-white dark:bg-gray-800 border-2 border-gray-300 dark:border-gray-700 hover:border-blue-500 hover:bg-blue-50 dark:hover:bg-gray-700 text-gray-900 dark:text-gray-100'
                  } ${showFeedback ? 'cursor-not-allowed' : 'cursor-pointer'}`}
                >
                  {option}
                </button>
              );
            })}
          </div>

          {/* Feedback Area */}
          {showFeedback && (
            <div className="mt-8 p-6 bg-blue-50 dark:bg-blue-900 rounded-lg">
              <div className="text-lg font-semibold text-blue-900 dark:text-blue-100 mb-2">
                {selectedAnswer === currentQ.correctIndex ? '✅ Correct!' : '❌ Incorrect'}
              </div>
              <div className="text-blue-800 dark:text-blue-200">
                {currentQ.explanation}
              </div>
              {selectedAnswer === currentQ.correctIndex && (
                <div className="mt-2 text-sm text-blue-700 dark:text-blue-300">
                  +{100 + Math.max(0, 50 - Math.floor((Date.now() - questionStartTime) / 1000))} points
                </div>
              )}
            </div>
          )}
        </div>
      </div>
    </div>
  );
}
