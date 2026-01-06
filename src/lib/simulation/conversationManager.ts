/**
 * Conversation Manager for Scenario-Simulation Game
 * Selects appropriate conversations based on level and context
 */

export type ConversationType =
  | 'client_normal'
  | 'client_urgent'
  | 'client_indecisive'
  | 'client_demanding'
  | 'client_fraud'
  | 'supplier_reliable'
  | 'supplier_slow'
  | 'supplier_fake'
  | 'government';

export interface ConversationMetadata {
  id: string;
  type: ConversationType;
  difficulty: number; // 1-4
  name: string;
  description: string;
}

/**
 * Conversation pools organized by level
 * Estos IDs corresponden a los scenarios existentes
 */
export const CONVERSATION_POOLS: Record<number, ConversationMetadata[]> = {
  1: [
    {
      id: 'cliente-indeciso',
      type: 'client_indecisive',
      difficulty: 1,
      name: 'El Cliente Indeciso',
      description: 'Cliente que hace muchas preguntas antes de decidir',
    },
    {
      id: 'problema-legitimo',
      type: 'client_normal',
      difficulty: 1,
      name: 'El Problema Legítimo',
      description: 'Cliente con una queja razonable',
    },
    {
      id: 'cliente-rapido',
      type: 'client_urgent',
      difficulty: 1,
      name: 'El Cliente Rápido',
      description: 'Cliente que necesita entrega urgente',
    },
  ],
  2: [
    {
      id: 'cliente-exigente',
      type: 'client_demanding',
      difficulty: 2,
      name: 'El Cliente Exigente',
      description: 'Cliente que pide descuentos y trato especial',
    },
    {
      id: 'negociacion-dificil',
      type: 'client_demanding',
      difficulty: 2,
      name: 'Negociación Difícil',
      description: 'Cliente experto en regateo',
    },
  ],
  3: [
    {
      id: 'estafa-proveedor',
      type: 'supplier_fake',
      difficulty: 3,
      name: 'La Estafa del Proveedor',
      description: 'Proveedor que intenta vender productos defectuosos',
    },
    {
      id: 'intento-fraude',
      type: 'client_fraud',
      difficulty: 3,
      name: 'Intento de Fraude',
      description: 'Cliente que intenta estafar con pago falso',
    },
  ],
  4: [
    {
      id: 'fraude-sofisticado',
      type: 'client_fraud',
      difficulty: 4,
      name: 'Fraude Sofisticado',
      description: 'Estafa elaborada difícil de detectar',
    },
    {
      id: 'crisis-multiple',
      type: 'client_demanding',
      difficulty: 4,
      name: 'Crisis Múltiple',
      description: 'Varios problemas al mismo tiempo',
    },
  ],
};

/**
 * Get available conversations for a level
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
