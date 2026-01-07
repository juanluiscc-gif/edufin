/**
 * Conversation Manager for Scenario-Simulation Game
 * Selects appropriate conversations based on level and context
 *
 * Integrates with conversationPool.ts for actual conversation data
 */

import {
  getConversationsForLevel as getPoolConversations,
  getMultipleConversations,
} from './conversationPool';
import type { ScenarioDefinition as ConversationPoolEntry } from '@/types/simulation';
import type { SimulationMessage, ScenarioDefinition } from '@/types/simulation';

export type ConversationType =
  | 'client'
  | 'supplier'
  | 'government';

export interface ConversationMetadata {
  id: string;
  type: ConversationType;
  difficulty: number; // 1-4
  name: string;
  description: string;
}

/**
 * Conversation metadata organized by level
 * Metadata references the actual conversations in conversationPool.ts
 */
export const CONVERSATION_POOLS: Record<number, ConversationMetadata[]> = {
  1: [
    {
      id: 'l1-indeciso-1',
      type: 'client',
      difficulty: 1,
      name: 'Cliente Indeciso',
      description: 'Cliente que necesita orientación para decidir',
    },
    {
      id: 'l1-rapido-1',
      type: 'client',
      difficulty: 1,
      name: 'Cliente Rápido',
      description: 'Cliente con prisa que necesita servicio eficiente',
    },
    {
      id: 'l1-regular-1',
      type: 'client',
      difficulty: 1,
      name: 'Cliente Regular',
      description: 'Cliente leal que valora el reconocimiento',
    },
  ],
  2: [
    {
      id: 'l2-exigente-1',
      type: 'client',
      difficulty: 2,
      name: 'Cliente Exigente',
      description: 'Requiere negociación de descuentos y condiciones',
    },
    {
      id: 'l2-estafador-cliente-1',
      type: 'client',
      difficulty: 2,
      name: 'Cliente Estafador',
      description: 'Intento de fraude con devolución falsa',
    },
    {
      id: 'l2-problema-legitimo-1',
      type: 'client',
      difficulty: 2,
      name: 'Problema Legítimo',
      description: 'Producto defectuoso, requiere buen servicio al cliente',
    },
    {
      id: 'l2-influencer-falso-1',
      type: 'client',
      difficulty: 2,
      name: 'Influencer Falso',
      description: 'Evaluar legitimidad de colaboración de marketing',
    },
  ],
  3: [
    {
      id: 'l3-estafa-proveedor-1',
      type: 'supplier',
      difficulty: 3,
      name: 'Estafa del Proveedor',
      description: 'Detectar fraude y red flags en oferta de proveedor',
    },
    {
      id: 'l3-socio-deshonesto-1',
      type: 'supplier',
      difficulty: 3,
      name: 'Socio Deshonesto',
      description: 'Ética empresarial y consecuencias legales',
    },
  ],
  4: [
    {
      id: 'l4-corporativo-1',
      type: 'client',
      difficulty: 4,
      name: 'Cliente Corporativo',
      description: 'Negociación B2B compleja de alto valor',
    },
  ],
};

/**
 * Get available conversations metadata for a level
 */
export function getConversationsForLevel(level: number): ConversationMetadata[] {
  // Include conversations from current level and all previous levels
  const conversations: ConversationMetadata[] = [];
  for (let i = 1; i <= level; i++) {
    conversations.push(...(CONVERSATION_POOLS[i] || []));
  }
  return conversations;
}

/**
 * Get actual conversation data by ID from pool
 */
export function getConversationData(conversationId: string): ConversationPoolEntry | null {
  const allMessages = getPoolConversations(4); // Get all levels
  return allMessages.find((msg) => msg.id === conversationId) || null;
}

/**
 * Get multiple conversation data for multi-chat
 */
export function getMultipleConversationData(level: number, count: number): ConversationPoolEntry[] {
  return getMultipleConversations(level, count);
}

/**
 * Select random conversation for level
 */
export function selectRandomConversation(level: number, excludeIds: string[] = []): ConversationMetadata | null {
  const available = getConversationsForLevel(level).filter((c) => !excludeIds.includes(c.id));

  if (available.length === 0) return null;

  const randomIndex = Math.floor(Math.random() * available.length);
  return available[randomIndex];
}

/**
 * Should trigger supplier conversation
 * Returns true if inventory is low and random chance triggers
 */
export function shouldTriggerSupplier(inventory: number, level: number): boolean {
  if (inventory > 2) return false;

  // Probabilidad aumenta con nivel
  const probability = level * 0.15; // 15% nivel 1, 30% nivel 2, etc.
  return Math.random() < probability;
}

/**
 * Select appropriate conversation based on context
 */
export function selectNextConversation(
  level: number,
  inventory: number,
  recentConversationIds: string[]
): ConversationMetadata | null {
  // Si inventario bajo, posibilidad de proveedor
  if (shouldTriggerSupplier(inventory, level)) {
    const suppliers = getConversationsForLevel(level).filter((c) => c.type.startsWith('supplier'));
    if (suppliers.length > 0) {
      const randomIndex = Math.floor(Math.random() * suppliers.length);
      return suppliers[randomIndex];
    }
  }

  // Si no, seleccionar conversación de cliente
  return selectRandomConversation(level, recentConversationIds);
}

/**
 * Get conversation difficulty multiplier
 */
export function getDifficultyMultiplier(difficulty: number): number {
  return 1 + (difficulty - 1) * 0.25; // 1x, 1.25x, 1.5x, 1.75x
}
