/**
 * Level System for Scenario-Simulation Game
 * Manages automatic progression based on player's balance
 */

export interface LevelConfig {
  level: number;
  minBalance: number;
  maxBalance: number;
  simultaneousMessages: number;
  messageIntervalSeconds: number;
  hasTimer: boolean;
  timerSeconds: number;
  description: string;
}

export const LEVEL_CONFIGS: LevelConfig[] = [
  {
    level: 1,
    minBalance: 0,
    maxBalance: 500,
    simultaneousMessages: 1,
    messageIntervalSeconds: 60, // 1 minuto entre mensajes
    hasTimer: false,
    timerSeconds: 0,
    description: 'Nivel 1: Clientes simples, un mensaje a la vez',
  },
  {
    level: 2,
    minBalance: 500,
    maxBalance: 1000,
    simultaneousMessages: 2,
    messageIntervalSeconds: 45, // 45 segundos
    hasTimer: false,
    timerSeconds: 0,
    description: 'Nivel 2: Clientes urgentes, 2-3 mensajes',
  },
  {
    level: 3,
    minBalance: 1000,
    maxBalance: 2500,
    simultaneousMessages: 3,
    messageIntervalSeconds: 30, // 30 segundos
    hasTimer: true,
    timerSeconds: 120, // 2 minutos
    description: 'Nivel 3: Fraudes ocasionales, 3-4 mensajes, temporizador activo',
  },
  {
    level: 4,
    minBalance: 2500,
    maxBalance: Infinity,
    simultaneousMessages: 5,
    messageIntervalSeconds: 20, // 20 segundos
    hasTimer: true,
    timerSeconds: 120, // 2 minutos
    description: 'Nivel 4+: Máxima dificultad, 4-5 mensajes simultáneos',
  },
];

/**
 * Get current level based on balance
 */
export function getCurrentLevel(balance: number): number {
  for (const config of LEVEL_CONFIGS) {
    if (balance >= config.minBalance && balance < config.maxBalance) {
      return config.level;
    }
  }
  return LEVEL_CONFIGS[LEVEL_CONFIGS.length - 1].level;
}

/**
 * Get level configuration
 */
export function getLevelConfig(level: number): LevelConfig {
  return LEVEL_CONFIGS.find((c) => c.level === level) || LEVEL_CONFIGS[0];
}

/**
 * Check if player should level up
 */
export function shouldLevelUp(currentBalance: number, currentLevel: number): boolean {
  const config = getLevelConfig(currentLevel);
  return currentBalance >= config.maxBalance;
}

/**
 * Get next level number
 */
export function getNextLevel(currentLevel: number): number {
  return Math.min(currentLevel + 1, LEVEL_CONFIGS[LEVEL_CONFIGS.length - 1].level);
}

/**
 * Get threshold for next level
 */
export function getNextLevelThreshold(currentLevel: number): number {
  const nextLevel = getNextLevel(currentLevel);
  const nextConfig = getLevelConfig(nextLevel);
  return nextConfig.minBalance;
}

/**
 * Calculate progress percentage to next level
 */
export function getLevelProgress(balance: number, currentLevel: number): number {
  const config = getLevelConfig(currentLevel);
  if (config.maxBalance === Infinity) return 100;

  const progress = ((balance - config.minBalance) / (config.maxBalance - config.minBalance)) * 100;
  return Math.min(100, Math.max(0, progress));
}
