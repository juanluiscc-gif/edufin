/**
 * Consolidated Conversation Pool for Unified Scenario-Simulation Game
 *
 * This pool contains all conversations from the 10 existing scenarios,
 * organized by difficulty level for the multi-chat simulation game.
 *
 * Conversations are selected randomly based on:
 * - Player's current level (balance threshold)
 * - Current inventory state
 * - Ensures variety and unpredictability
 */

import type { SimulationMessage } from '@/types/simulation';

/**
 * Level 1 Conversations (Balance $0-$149)
 * Easiest scenarios - helpful, straightforward customers
 */
export const LEVEL_1_CONVERSATIONS: SimulationMessage[] = [
  {
    id: 'l1-indeciso-1',
    name: 'Ana López',
    avatar: '👩',
    type: 'client',
    trait: 'confundido',
    difficulty: 1,
    initialMessage: 'Hola... eh... necesito algo para... bueno, no estoy muy segura qué necesito exactamente.',
    scenarioContext: 'Cliente Indeciso - Necesita orientación',
  },
  {
    id: 'l1-rapido-1',
    name: 'Luis Ramírez',
    avatar: '👨‍💼',
    type: 'client',
    trait: 'agresivo',
    difficulty: 1,
    initialMessage: '¡Rápido! Tengo una junta en 15 minutos. Necesito producto X ahora mismo.',
    scenarioContext: 'Cliente Rápido - Necesita servicio eficiente',
  },
  {
    id: 'l1-regular-1',
    name: 'Sofía Martínez',
    avatar: '👩‍💼',
    type: 'client',
    trait: 'amigable',
    difficulty: 1,
    initialMessage: '¡Hola! Vengo de nuevo. Ya he comprado aquí como 10 veces. Necesito más productos.',
    scenarioContext: 'Cliente Regular - Cliente leal que valora el reconocimiento',
  },
];

/**
 * Level 2 Conversations (Balance $150-$299)
 * Moderate difficulty - requires negotiation skills
 */
export const LEVEL_2_CONVERSATIONS: SimulationMessage[] = [
  {
    id: 'l2-exigente-1',
    name: 'María González',
    avatar: '👩‍💼',
    type: 'client',
    trait: 'exigente',
    difficulty: 2,
    initialMessage: 'Hola, necesito 100 unidades de tu producto URGENTE. Tengo un evento este fin de semana.',
    scenarioContext: 'Cliente Exigente - Requiere negociación de descuentos',
  },
  {
    id: 'l2-estafador-cliente-1',
    name: 'Pedro Morales',
    avatar: '👨',
    type: 'client',
    trait: 'estafador',
    difficulty: 2,
    initialMessage: 'Hola, compré este producto hace 3 meses y no funciona. Quiero devolución COMPLETA del dinero.',
    scenarioContext: 'Cliente Estafador - Intento de fraude con devolución',
  },
  {
    id: 'l2-problema-legitimo-1',
    name: 'Carmen Díaz',
    avatar: '👩',
    type: 'client',
    trait: 'honesto',
    difficulty: 2,
    initialMessage: 'Hola, compré este producto hace 2 semanas y dejó de funcionar. Tengo mi ticket. Estoy muy decepcionada.',
    scenarioContext: 'Problema Legítimo - Producto defectuoso, requiere servicio al cliente',
  },
  {
    id: 'l2-influencer-falso-1',
    name: 'Daniela Instagram',
    avatar: '👱‍♀️',
    type: 'client',
    trait: 'estafador',
    difficulty: 2,
    initialMessage: 'Hola! Soy influencer con 50,000 seguidores. Quiero colaborar: me das productos gratis y yo los promociono.',
    scenarioContext: 'Influencer Falso - Evaluar legitimidad de colaboración',
  },
];

/**
 * Level 3 Conversations (Balance $300-$449)
 * Higher difficulty - fraud detection and ethics
 */
export const LEVEL_3_CONVERSATIONS: SimulationMessage[] = [
  {
    id: 'l3-estafa-proveedor-1',
    name: 'Carlos Rodríguez',
    avatar: '👨‍💼',
    type: 'supplier',
    trait: 'estafador',
    difficulty: 3,
    initialMessage: 'Hola! Soy Carlos de "MegaProveedores SA". Tenemos una OFERTA ESPECIAL solo por HOY: productos con 70% de descuento.',
    scenarioContext: 'Estafa del Proveedor - Detectar fraude y red flags',
  },
  {
    id: 'l3-socio-deshonesto-1',
    name: 'Roberto Sánchez',
    avatar: '👨‍💼',
    type: 'supplier',
    trait: 'agresivo',
    difficulty: 3,
    initialMessage: 'Oye, tengo una "idea" para ahorrar en impuestos este trimestre...',
    scenarioContext: 'Socio Deshonesto - Ética empresarial y consecuencias legales',
  },
];

/**
 * Level 4 Conversations (Balance $450+)
 * Most difficult - B2B negotiations and complex deals
 */
export const LEVEL_4_CONVERSATIONS: SimulationMessage[] = [
  {
    id: 'l4-corporativo-1',
    name: 'Lic. Martín Rojas',
    avatar: '👨‍💼',
    type: 'client',
    trait: 'honesto',
    difficulty: 4,
    initialMessage: 'Buenos días, represento a TechCorp. Necesitamos 500 unidades mensuales. ¿Pueden manejar ese volumen?',
    scenarioContext: 'Cliente Corporativo - Negociación B2B de alto valor',
  },
];

/**
 * Get conversations for a specific level
 */
export function getConversationsForLevel(level: number): SimulationMessage[] {
  switch (level) {
    case 1:
      return LEVEL_1_CONVERSATIONS;
    case 2:
      return LEVEL_2_CONVERSATIONS;
    case 3:
      return LEVEL_3_CONVERSATIONS;
    case 4:
      return LEVEL_4_CONVERSATIONS;
    default:
      return LEVEL_1_CONVERSATIONS;
  }
}

/**
 * Get random conversation from appropriate level
 */
export function getRandomConversation(level: number): SimulationMessage {
  const conversations = getConversationsForLevel(level);
  const randomIndex = Math.floor(Math.random() * conversations.length);
  return conversations[randomIndex];
}

/**
 * Get multiple unique conversations for multi-chat
 */
export function getMultipleConversations(
  level: number,
  count: number
): SimulationMessage[] {
  const conversations = getConversationsForLevel(level);

  // Shuffle and take 'count' conversations
  const shuffled = [...conversations].sort(() => Math.random() - 0.5);
  return shuffled.slice(0, Math.min(count, shuffled.length));
}

/**
 * All conversations pool (for reference and testing)
 */
export const ALL_CONVERSATIONS = [
  ...LEVEL_1_CONVERSATIONS,
  ...LEVEL_2_CONVERSATIONS,
  ...LEVEL_3_CONVERSATIONS,
  ...LEVEL_4_CONVERSATIONS,
];
