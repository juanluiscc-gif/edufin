/**
 * Type definitions for Scenario Game
 *
 * Scenario games are conversation-based where players make decisions
 * through chat-like interactions with various characters (customers, suppliers, partners).
 */

export type CharacterType = 'cliente' | 'proveedor' | 'socio' | 'competidor';

export type CharacterTrait =
  | 'exigente'     // Demanding customer
  | 'estafador'    // Scammer
  | 'honesto'      // Honest person
  | 'confundido'   // Confused/unclear
  | 'agresivo'     // Aggressive
  | 'amigable';    // Friendly

export interface Character {
  name: string;
  avatar: string;      // Emoji or image URL
  type: CharacterType;
  trait: CharacterTrait;
}

export interface ResponseOption {
  id: string;
  text: string;
  consequences: {
    balanceChange: number;     // Money gained/lost
    reputationChange: number;  // Reputation points (-5 to +5)
    nextNodeId: string | 'END' | 'WIN' | 'LOSE';
  };
  feedback: string;  // Explanation shown after selection
  isCorrect?: boolean;  // For educational feedback
}

export interface ConversationNode {
  id: string;
  character: Character;
  message: string;
  isPlayerTurn: boolean;  // false = NPC speaks, true = player chooses
  options?: ResponseOption[];  // Only if isPlayerTurn = true
  autoAdvanceDelay?: number;   // Auto-advance to next if NPC message (ms)
}

export interface WinCondition {
  type: 'balance' | 'reputation' | 'decisions' | 'time';
  threshold: number;
  message: string;
}

export interface LoseCondition {
  type: 'balance' | 'reputation' | 'decisions' | 'time';
  threshold: number;
  message: string;
}

export interface GameState {
  balance: number;
  reputation: number;
  currentNodeId: string;
  conversationHistory: {
    nodeId: string;
    selectedOptionId?: string;
    timestamp: number;
  }[];
  correctDecisions: number;
  totalDecisions: number;
  startTime: number;
}

export interface ScenarioGameData {
  instructions: string;
  initialState: {
    balance: number;
    reputation: number;
  };
  conversationTree: ConversationNode[];
  winConditions: WinCondition[];
  loseConditions: LoseCondition[];
  maxTimeSeconds?: number;  // Optional time limit
}

export interface ScenarioGameProps {
  gameId: string;
  gameTitle: string;
  gameData: ScenarioGameData;
  onComplete: (score: number, timeTaken: number) => void;
}

// Helper type for game end state
export type GameEndState =
  | { status: 'win'; finalBalance: number; finalReputation: number; message: string }
  | { status: 'lose'; finalBalance: number; finalReputation: number; message: string }
  | { status: 'playing' };
