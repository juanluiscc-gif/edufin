/**
 * Scoring utility functions for games
 */

interface QuizScoreParams {
  correctAnswers: number;
  totalQuestions: number;
  timeTakenSeconds: number;
  basePointsPerQuestion?: number;
  timeBonus Max?: number;
}

interface SimulationScoreParams {
  finalCash: number;
  totalRevenue: number;
  totalSpending: number;
  customerSatisfaction: number;
  daysCompleted: number;
  goalReached: boolean;
}

interface PuzzleScoreParams {
  puzzlesSolved: number;
  totalPuzzles: number;
  timeTakenSeconds: number;
  hintsUsed: number;
  firstAttemptSuccesses: number;
}

interface ScenarioScoreParams {
  finalMoney: number;
  finalHappiness: number;
  finalCareer: number;
  decisionsQuality: number;
  endingMultiplier: number;
}

/**
 * Calculate quiz game score
 * Base points per question + time bonus
 */
export function calculateQuizScore(params: QuizScoreParams): number {
  const {
    correctAnswers,
    totalQuestions,
    timeTakenSeconds,
    basePointsPerQuestion = 100,
    timeBonusMax = 50
  } = params;

  let totalScore = 0;

  // Base points for correct answers
  const basePoints = correctAnswers * basePointsPerQuestion;
  total Score += basePoints;

  // Time bonus: faster answers get bonus points
  // Formula: max(0, bonusMax - secondsPerQuestion)
  const avgTimePerQuestion = timeTakenSeconds / totalQuestions;
  const timeBonus = Math.max(0, timeBonusMax - avgTimePerQuestion) * correctAnswers;
  totalScore += Math.round(timeBonus);

  return Math.round(totalScore);
}

/**
 * Calculate simulation game score
 * Multi-factor: cash, efficiency, satisfaction, time
 */
export function calculateSimulationScore(params: SimulationScoreParams): number {
  const {
    finalCash,
    totalRevenue,
    totalSpending,
    customerSatisfaction,
    daysCompleted,
    goalReached
  } = params;

  // Cash score: final cash amount × 0.5
  const cashScore = finalCash * 0.5;

  // Efficiency score: (revenue / spending) × 100
  const efficiencyRatio = totalSpending > 0 ? totalRevenue / totalSpending : 1;
  const efficiencyScore = efficiencyRatio * 100;

  // Satisfaction score: 0-100
  const satisfactionScore = customerSatisfaction * 2;

  // Time bonus: extra points for reaching goals faster
  const timeBonus = goalReached ? Math.max(0, (30 - daysCompleted) * 10) : 0;

  // Final score
  const totalScore = (cashScore * 0.5) + (efficiencyScore * 3) + (satisfactionScore * 2) + timeBonus;

  return Math.round(totalScore);
}

/**
 * Calculate puzzle game score
 * Base points + time bonus + first attempt bonus - hint penalty
 */
export function calculatePuzzleScore(params: PuzzleScoreParams): number {
  const {
    puzzlesSolved,
    totalPuzzles,
    timeTakenSeconds,
    hintsUsed,
    firstAttemptSuccesses
  } = params;

  let totalScore = 0;

  // Base points: 100 per puzzle solved
  const basePoints = puzzlesSolved * 100;
  totalScore += basePoints;

  // Time bonus: +50 if completed under 60 seconds per puzzle
  const avgTimePerPuzzle = timeTakenSeconds / puzzlesSolved;
  if (avgTimePerPuzzle < 60) {
    const timeBonus = puzzlesSolved * 50;
    totalScore += timeBonus;
  }

  // First attempt bonus: +25 per puzzle solved on first try
  const firstAttemptBonus = firstAttemptSuccesses * 25;
  totalScore += firstAttemptBonus;

  // Hint penalty: -10 per hint used
  const hintPenalty = hintsUsed * 10;
  totalScore -= hintPenalty;

  return Math.max(0, Math.round(totalScore));
}

/**
 * Calculate scenario game score
 * Based on final resources, decision quality, and ending achieved
 */
export function calculateScenarioScore(params: ScenarioScoreParams): number {
  const {
    finalMoney,
    finalHappiness,
    finalCareer,
    decisionsQuality,
    endingMultiplier
  } = params;

  // Normalize resources to 0-100 scale
  const moneyScore = Math.min(finalMoney / 100, 100);
  const happinessScore = finalHappiness;
  const careerScore = finalCareer;

  // Weighted score
  const baseScore = (moneyScore * 0.4) + (happinessScore * 0.3) + (careerScore * 0.3);

  // Decision quality bonus (0-100)
  const decisionBonus = decisionsQuality * 5;

  // Calculate total and apply ending multiplier
  const totalScore = (baseScore * 10 + decisionBonus) * endingMultiplier;

  return Math.round(totalScore);
}

/**
 * Calculate performance rating (stars 1-5)
 */
export function calculatePerformanceRating(score: number, maxScore: number): number {
  const percentage = (score / maxScore) * 100;

  if (percentage >= 90) return 5;
  if (percentage >= 75) return 4;
  if (percentage >= 60) return 3;
  if (percentage >= 40) return 2;
  return 1;
}

/**
 * Calculate letter grade
 */
export function calculateLetterGrade(score: number, maxScore: number): string {
  const percentage = (score / maxScore) * 100;

  if (percentage >= 97) return 'A+';
  if (percentage >= 93) return 'A';
  if (percentage >= 90) return 'A-';
  if (percentage >= 87) return 'B+';
  if (percentage >= 83) return 'B';
  if (percentage >= 80) return 'B-';
  if (percentage >= 77) return 'C+';
  if (percentage >= 73) return 'C';
  if (percentage >= 70) return 'C-';
  if (percentage >= 67) return 'D+';
  if (percentage >= 63) return 'D';
  if (percentage >= 60) return 'D-';
  return 'F';
}

/**
 * Get performance color based on rating
 */
export function getPerformanceColor(rating: number): string {
  if (rating >= 4.5) return 'gold';
  if (rating >= 3.5) return 'green';
  if (rating >= 2.5) return 'blue';
  return 'gray';
}
