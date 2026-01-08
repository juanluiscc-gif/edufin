import type { ConversationNode, ResponseOption } from './scenario';

/**
 * Types for Unified Scenario-Simulation Game System
 */

export type MessageStatus = 'pending' | 'active' | 'minimized' | 'completed';

export interface SimulationMessage {
  id: string;
  conversationId: string;
  sender: string;
  avatar: string;
  type: 'client' | 'supplier' | 'government';
  preview: string;
  status: MessageStatus;
  receivedAt: number;
  conversationData: ConversationNode[];
  currentNodeIndex: number;
  
  // Metadata fields needed for game logic
  name: string;
  trait?: string;
  difficulty?: number;
  initialMessage?: string;
  scenarioContext?: string;
  isHoax?: boolean;
}

export type ScenarioDefinition = Pick<SimulationMessage, 'id' | 'name' | 'avatar' | 'type' | 'trait' | 'difficulty' | 'initialMessage' | 'scenarioContext'>;

export interface SimulationGameState {
  // Persistent (saved to DB)
  balance: number;
  reputation: number; // 0-5
  inventory: number;
  currentLevel: number;

  // Session data
  messages: SimulationMessage[];
  activeChatId: string | null;
  conversationsCompleted: number;
  sessionStartTime: number;
  elapsedTime: number;
  hoaxEncounters: string[];

  // UI state
  showInventoryAlert: boolean;
  showSupplierDialog: boolean;
  gameStatus: 'playing' | 'completed' | 'game_over';
}

export interface ConversationProgress {
  messageId: string;
  currentNodeId: string;
  history: Array<{
    nodeId: string;
    optionId: string;
    timestamp: number;
  }>;
}

export interface GameEndResult {
  status: 'win' | 'lose';
  reason: string;
  finalBalance: number;
  finalReputation: number;
  finalInventory: number;
  conversationsCompleted: number;
  timeTaken: number;
  score: number;
  levelReached: number;
}

export interface SupplierOrderResult {
  success: boolean;
  newBalance: number;
  newInventory: number;
  message: string;
  cost?: number;
  quantity?: number;
}
