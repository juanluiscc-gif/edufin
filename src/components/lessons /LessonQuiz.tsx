'use client';

import { useState } from 'react';

export interface QuizQuestion {
  question: string;
  options: string[];
  correctAnswer: number;
  explanation: string;
}

export interface Quiz {
  questions: QuizQuestion[];
  passingScore: number;
}

interface LessonQuizProps {
  quiz: Quiz;
  onComplete: (score: number, passed: boolean) => void;
}

export default function LessonQuiz({ quiz, onComplete }: LessonQuizProps) {
  const [answers, setAnswers] = useState<Record<number, number>>({});
  const [submitted, setSubmitted] = useState(false);
  const [score, setScore] = useState(0);
  const [passed, setPassed] = useState(false);

  const handleAnswerSelect = (questionIndex: number, optionIndex: number) => {
    if (!submitted) {
      setAnswers({
        ...answers,
        [questionIndex]: optionIndex,
      });
    }
  };

  const handleSubmit = () => {
    // Calculate score
    let correctCount = 0;
    quiz.questions.forEach((question, index) => {
      if (answers[index] === question.correctAnswer) {
        correctCount++;
      }
    });

    const calculatedScore = Math.round((correctCount / quiz.questions.length) * 100);
    const isPassed = calculatedScore >= quiz.passingScore;

    setScore(calculatedScore);
    setPassed(isPassed);
    setSubmitted(true);

    // Call parent callback
    onComplete(calculatedScore, isPassed);
  };

  const handleRetry = () => {
    setAnswers({});
    setSubmitted(false);
    setScore(0);
    setPassed(false);
  };

  const allAnswered = quiz.questions.every((_, index) => answers[index] !== undefined);

  return (
    <div className="max-w-3xl mx-auto p-6 bg-white rounded-lg shadow-md">
      <div className="mb-6">
        <h2 className="text-2xl font-bold text-gray-900 mb-2">Quiz Time! 📝</h2>
        <p className="text-gray-600">
          Answer all questions to complete this lesson. You need {quiz.passingScore}% to pass.
        </p>
      </div>

      {!submitted && (
        <div className="space-y-8">
          {quiz.questions.map((question, qIndex) => (
            <div key={qIndex} className="border-b pb-6">
              <p className="text-lg font-semibold text-gray-900 mb-4">
                {qIndex + 1}. {question.question}
              </p>
              <div className="space-y-3">
                {question.options.map((option, oIndex) => (
                  <label
                    key={oIndex}
                    className={`flex items-center p-4 border-2 rounded-lg cursor-pointer transition-colors ${
                      answers[qIndex] === oIndex
                        ? 'border-blue-500 bg-blue-50'
                        : 'border-gray-200 hover:border-gray-300'
                    }`}
                  >
                    <input
                      type="radio"
                      name={`question-${qIndex}`}
                      checked={answers[qIndex] === oIndex}
                      onChange={() => handleAnswerSelect(qIndex, oIndex)}
                      className="w-4 h-4 text-blue-600"
                    />
                    <span className="ml-3 text-gray-700">{option}</span>
                  </label>
                ))}
              </div>
            </div>
          ))}

          <button
            onClick={handleSubmit}
            disabled={!allAnswered}
            className={`w-full py-3 px-6 rounded-lg font-semibold text-white transition-colors ${
              allAnswered
                ? 'bg-blue-600 hover:bg-blue-700'
                : 'bg-gray-300 cursor-not-allowed'
            }`}
          >
            Submit Quiz
          </button>
        </div>
      )}

      {submitted && (
        <div>
          <div
            className={`p-6 rounded-lg mb-6 ${
              passed ? 'bg-green-50 border-2 border-green-500' : 'bg-red-50 border-2 border-red-500'
            }`}
          >
            <h3 className={`text-2xl font-bold mb-2 ${passed ? 'text-green-900' : 'text-red-900'}`}>
              {passed ? '🎉 Congratulations!' : '😔 Not quite there yet'}
            </h3>
            <p className={`text-lg ${passed ? 'text-green-800' : 'text-red-800'}`}>
              You scored <strong>{score}%</strong> (needed {quiz.passingScore}%)
            </p>
            {passed && <p className="mt-2 text-green-700">Great job! You passed the quiz!</p>}
            {!passed && (
              <p className="mt-2 text-red-700">
                Don't worry! Review the material and try again.
              </p>
            )}
          </div>

          <div className="space-y-6">
            {quiz.questions.map((question, qIndex) => {
              const userAnswer = answers[qIndex];
              const isCorrect = userAnswer === question.correctAnswer;

              return (
                <div key={qIndex} className="border-2 border-gray-200 rounded-lg p-4">
                  <p className="text-lg font-semibold text-gray-900 mb-3">
                    {qIndex + 1}. {question.question}
                  </p>

                  <div className="space-y-2 mb-4">
                    {question.options.map((option, oIndex) => {
                      const isUserAnswer = userAnswer === oIndex;
                      const isCorrectAnswer = question.correctAnswer === oIndex;

                      let bgColor = 'bg-gray-50';
                      let textColor = 'text-gray-700';
                      let icon = '';

                      if (isCorrectAnswer) {
                        bgColor = 'bg-green-100';
                        textColor = 'text-green-900';
                        icon = '✓';
                      } else if (isUserAnswer && !isCorrect) {
                        bgColor = 'bg-red-100';
                        textColor = 'text-red-900';
                        icon = '✗';
                      }

                      return (
                        <div key={oIndex} className={`p-3 rounded ${bgColor}`}>
                          <span className={`font-medium ${textColor}`}>
                            {icon && <span className="mr-2">{icon}</span>}
                            {option}
                          </span>
                        </div>
                      );
                    })}
                  </div>

                  <div className="bg-blue-50 p-3 rounded">
                    <p className="text-sm font-semibold text-blue-900 mb-1">Explanation:</p>
                    <p className="text-sm text-blue-800">{question.explanation}</p>
                  </div>
                </div>
              );
            })}
          </div>

          {!passed && (
            <button
              onClick={handleRetry}
              className="w-full mt-6 py-3 px-6 rounded-lg font-semibold text-white bg-blue-600 hover:bg-blue-700 transition-colors"
            >
              Try Again
            </button>
          )}
        </div>
      )}
    </div>
  );
}
