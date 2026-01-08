/**
 * Generate conversation trees dynamically based on conversation metadata
 * This allows the unified game to work with the simplified conversation pool
 */

import type { ConversationNode } from '@/types/scenario';

export interface ConversationMetadata {
  id: string;
  name: string;
  avatar: string;
  type: string;
  trait: string;
  difficulty: number;
  initialMessage: string;
  initialMessage: string;
  scenarioContext: string;
  isHoax?: boolean;
}

/**
 * Helper to shuffle options and ensure no pattern
 */
function shuffleOptions(options: any[]) {
  return [...options].sort(() => Math.random() - 0.5);
}

/**
 * Generate a conversation tree based on metadata
 * Creates contextually appropriate options based on conversation type and trait
 */
export function generateConversationTree(metadata: ConversationMetadata): ConversationNode[] {
  const { name, avatar, type, trait, initialMessage, difficulty, isHoax } = metadata;

  // Base rewards and penalties scale with difficulty
  const baseReward = 20 + (difficulty * 10);
  const basePenalty = -10 - (difficulty * 5);

  let conversationNodes: ConversationNode[] = [];

  // Generate conversation based on trait and hoax flag
  switch (trait) {
    case 'confundido':
    case 'indeciso':
      conversationNodes = isHoax
        ? generateIndecisoHoaxConversation(name, avatar, initialMessage, baseReward, basePenalty)
        : generateIndecisoConversation(name, avatar, initialMessage, baseReward, basePenalty);
      break;

    case 'agresivo':
    case 'rapido':
      conversationNodes = isHoax
        ? generateRapidoHoaxConversation(name, avatar, initialMessage, baseReward, basePenalty)
        : generateRapidoConversation(name, avatar, initialMessage, baseReward, basePenalty);
      break;

    case 'amigable':
    case 'regular':
      conversationNodes = isHoax
        ? generateAmigableHoaxConversation(name, avatar, initialMessage, baseReward, basePenalty)
        : generateAmigableConversation(name, avatar, initialMessage, baseReward, basePenalty);
      break;

    case 'exigente':
      conversationNodes = generateExigenteConversation(name, avatar, initialMessage, baseReward, basePenalty);
      break;

    case 'estafador':
      conversationNodes = generateEstafadorConversation(name, avatar, initialMessage, baseReward, basePenalty);
      break;

    case 'deshonesto':
      conversationNodes = generateDeshonestoConversation(name, avatar, initialMessage, baseReward, basePenalty);
      break;

    default:
      conversationNodes = generateDefaultConversation(name, avatar, initialMessage, baseReward, basePenalty);
  }

  // Shuffle options for the start node to hide the "best first" pattern
  if (conversationNodes.length > 0 && conversationNodes[0].options) {
    conversationNodes[0].options = shuffleOptions(conversationNodes[0].options);
  }

  return conversationNodes;
}

// ... (Existing functions: generateIndecisoConversation, generateRapidoConversation, etc.)

// --- HOAX SCENARIOS ---

// Cliente Indeciso Hoax - Pierde tiempo (4 interacciones)
function generateIndecisoHoaxConversation(
  name: string,
  avatar: string,
  initialMessage: string,
  reward: number,
  penalty: number
): ConversationNode[] {
  return [
    {
      id: 'start',
      character: { name, avatar, type: 'cliente', trait: 'indeciso' },
      message: initialMessage,
      isPlayerTurn: true,
      options: [
        {
          id: 'opt-1',
          text: '🧘 Te explico todo con calma',
          consequences: { balanceChange: 0, reputationChange: 0, nextNodeId: 'step-2' },
          feedback: 'El cliente sigue dudando...',
        },
        {
          id: 'opt-2',
          text: '❓ ¿Qué es lo que buscas exactamente?',
          consequences: { balanceChange: 0, reputationChange: 0, nextNodeId: 'step-2' },
          feedback: 'El cliente no sabe qué decir...',
        },
        {
          id: 'opt-3',
          text: '⏰ Por favor decídete pronto',
          consequences: { balanceChange: penalty, reputationChange: -1, nextNodeId: 'END' },
          feedback: 'Presionaste demasiado y se fue.',
          isCorrect: false
        },
      ],
    },
    {
      id: 'step-2',
      character: { name, avatar, type: 'cliente', trait: 'indeciso' },
      message: 'Es que... mmm... no sé si el color rojo me convence. ¿Y si mejor el azul?',
      isPlayerTurn: true,
      options: [
        {
          id: 'opt-2-1',
          text: '🔵 El azul es muy buena opción',
          consequences: { balanceChange: 0, reputationChange: 0, nextNodeId: 'step-3' },
          feedback: 'Sigue pensando...',
        },
        {
          id: 'opt-2-2',
          text: '🚫 Solo tengo rojo ahora mismo',
          consequences: { balanceChange: 0, reputationChange: 0, nextNodeId: 'step-3' },
          feedback: 'No le convence la respuesta...',
        },
      ],
    },
    {
      id: 'step-3',
      character: { name, avatar, type: 'cliente', trait: 'indeciso' },
      message: 'Ay, pero ahora pienso que el precio... ¿estás seguro que vale la pena?',
      isPlayerTurn: true,
      options: [
        {
          id: 'opt-3-1',
          text: '💎 Calidad garantizada',
          consequences: { balanceChange: reward, reputationChange: 1, inventoryChange: -1, nextNodeId: 'END' },
          feedback: '¡Por fin! Después de mucho tiempo, compró.',
          isCorrect: true
        },
        {
          id: 'opt-3-2',
          text: '😤 Ya basta, compra o vete',
          consequences: { balanceChange: penalty, reputationChange: -2, nextNodeId: 'END' },
          feedback: 'Perdiste la paciencia y el cliente.',
          isCorrect: false
        },
      ],
    },
  ];
}

// Cliente Rápido Hoax - Estafador con billete falso
function generateRapidoHoaxConversation(
  name: string,
  avatar: string,
  initialMessage: string,
  reward: number,
  penalty: number
): ConversationNode[] {
  return [
    {
      id: 'start',
      character: { name, avatar, type: 'cliente', trait: 'rapido' },
      message: initialMessage + ' ¡Toma, aquí está el dinero, cóbrate rápido y dame el cambio!',
      isPlayerTurn: true,
      options: [
        {
          id: 'opt-1',
          text: '💨 ¡Claro! Aquí tienes tu cambio y producto',
          consequences: {
            balanceChange: penalty - 10, // Pérdida por billete falso
            reputationChange: -1,
            inventoryChange: -1,
            nextNodeId: 'END',
          },
          feedback: '¡CAÍSTE! El billete era falso. Perdiste dinero e inventario por las prisas.',
          isCorrect: false,
        },
        {
          id: 'opt-2',
          text: '🔍 Un momento, necesito verificar el billete',
          consequences: {
            balanceChange: 0,
            reputationChange: 1,
            nextNodeId: 'END',
          },
          feedback: '¡Estafador detectado! Salió corriendo al ver que revisabas el dinero.',
          isCorrect: true,
        },
      ],
    },
  ];
}

// Cliente Amigable Hoax - Loop de descuentos
function generateAmigableHoaxConversation(
  name: string,
  avatar: string,
  initialMessage: string,
  reward: number,
  penalty: number
): ConversationNode[] {
  return [
    {
      id: 'start',
      character: { name, avatar, type: 'cliente', trait: 'amigable' },
      message: initialMessage + ' Por cierto, como soy tan buen cliente, ¿me das un descuento especial?',
      isPlayerTurn: true,
      options: [
        {
          id: 'opt-1',
          text: '📉 Está bien, 10% de descuento',
          consequences: { balanceChange: 0, reputationChange: 0, nextNodeId: 'demand-2' },
          feedback: 'Parece que quiere más...',
        },
        {
          id: 'opt-2',
          text: '❌ Lo siento, precio fijo',
          consequences: { balanceChange: penalty, reputationChange: -1, nextNodeId: 'END' },
          feedback: 'Se ofendió y se fue.',
          isCorrect: false
        },
      ],
    },
    {
      id: 'demand-2',
      character: { name, avatar, type: 'cliente', trait: 'amigable' },
      message: 'Mmm... he visto que a otros les das más. ¿Qué tal un 20% y prometo traer amigos?',
      isPlayerTurn: true,
      options: [
        {
          id: 'opt-2-1',
          text: '📉 Bueno, 20% para que estés feliz',
          consequences: {
            balanceChange: reward * 0.5, // Ganancia muy reducida
            reputationChange: 1,
            inventoryChange: -1,
            nextNodeId: 'END',
          },
          feedback: 'Aceptó, pero tu ganancia fue mínima. Cuidado con ceder tanto.',
          isCorrect: false
        },
        {
          id: 'opt-2-2',
          text: '✋ El 10% es mi mejor oferta',
          consequences: {
            balanceChange: reward * 0.8,
            reputationChange: 2,
            inventoryChange: -1,
            nextNodeId: 'END',
          },
          feedback: 'Aceptó el trato justo. Mantuviste tu margen.',
          isCorrect: true
        },
      ],
    },
  ];
}

// Cliente Indeciso - Necesita orientación
function generateIndecisoConversation(
  name: string,
  avatar: string,
  initialMessage: string,
  reward: number,
  penalty: number
): ConversationNode[] {
  return [
    {
      id: 'start',
      character: { name, avatar, type: 'cliente', trait: 'confundido' },
      message: initialMessage,
      isPlayerTurn: true,
      options: [
        {
          id: 'opt-1',
          text: '✅ Te ayudo a elegir el mejor producto para ti',
          consequences: {
            balanceChange: reward,
            reputationChange: 1,
            inventoryChange: -1,
            nextNodeId: 'END',
          },
          feedback: '¡Excelente! Ayudaste al cliente con paciencia. Ganaste reputación.',
          isCorrect: true,
        },
        {
          id: 'opt-2',
          text: '❌ Aquí tienes el catálogo, decide tú',
          consequences: {
            balanceChange: penalty,
            reputationChange: -1,
            nextNodeId: 'END',
          },
          feedback: 'El cliente se fue confundido sin comprar. Perdiste reputación.',
          isCorrect: false,
        },
        {
          id: 'opt-3',
          text: '⏰ No tengo tiempo, regresa cuando sepas qué quieres',
          consequences: {
            balanceChange: penalty * 2,
            reputationChange: -2,
            nextNodeId: 'END',
          },
          feedback: 'Muy mal servicio. El cliente no regresará.',
          isCorrect: false,
        },
      ],
    },
  ];
}

// Cliente Rápido - Necesita eficiencia
function generateRapidoConversation(
  name: string,
  avatar: string,
  initialMessage: string,
  reward: number,
  penalty: number
): ConversationNode[] {
  return [
    {
      id: 'start',
      character: { name, avatar, type: 'cliente', trait: 'agresivo' },
      message: initialMessage,
      isPlayerTurn: true,
      options: [
        {
          id: 'opt-1',
          text: '✅ ¡Claro! Te preparo el pedido en 2 minutos',
          consequences: {
            balanceChange: reward * 1.5, // Bonus por servicio rápido
            reputationChange: 2,
            inventoryChange: -1,
            nextNodeId: 'END',
          },
          feedback: '¡Perfecto! Servicio eficiente. El cliente está muy satisfecho.',
          isCorrect: true,
        },
        {
          id: 'opt-2',
          text: '⏰ Tardamos 30 minutos en preparar pedidos',
          consequences: {
            balanceChange: penalty,
            reputationChange: -1,
            nextNodeId: 'END',
          },
          feedback: 'El cliente se fue molesto. No tenía tiempo de esperar.',
          isCorrect: false,
        },
        {
          id: 'opt-3',
          text: '❌ No atendemos con prisa, cálmate',
          consequences: {
            balanceChange: penalty * 2,
            reputationChange: -2,
            nextNodeId: 'END',
          },
          feedback: 'Pésimo servicio. El cliente se fue enojado.',
          isCorrect: false,
        },
      ],
    },
  ];
}

// Cliente Amigable/Regular - Valora reconocimiento
function generateAmigableConversation(
  name: string,
  avatar: string,
  initialMessage: string,
  reward: number,
  penalty: number
): ConversationNode[] {
  return [
    {
      id: 'start',
      character: { name, avatar, type: 'cliente', trait: 'amigable' },
      message: initialMessage,
      isPlayerTurn: true,
      options: [
        {
          id: 'opt-1',
          text: '✅ ¡Hola de nuevo! Te tengo un descuento especial',
          consequences: {
            balanceChange: reward * 1.3, // Bonus por lealtad
            reputationChange: 2,
            inventoryChange: -1,
            nextNodeId: 'END',
          },
          feedback: '¡Excelente! Cliente leal muy satisfecho con el reconocimiento.',
          isCorrect: true,
        },
        {
          id: 'opt-2',
          text: '🤝 Claro, es el mismo precio de siempre',
          consequences: {
            balanceChange: reward,
            reputationChange: 0,
            inventoryChange: -1,
            nextNodeId: 'END',
          },
          feedback: 'Venta normal. El cliente esperaba más reconocimiento.',
          isCorrect: false,
        },
        {
          id: 'opt-3',
          text: '❓ ¿Nos conocemos? No te recuerdo',
          consequences: {
            balanceChange: penalty,
            reputationChange: -2,
            nextNodeId: 'END',
          },
          feedback: 'El cliente se sintió ofendido. Perdiste un cliente leal.',
          isCorrect: false,
        },
      ],
    },
  ];
}

// Cliente Exigente - Requiere negociación
function generateExigenteConversation(
  name: string,
  avatar: string,
  initialMessage: string,
  reward: number,
  penalty: number
): ConversationNode[] {
  return [
    {
      id: 'start',
      character: { name, avatar, type: 'cliente', trait: 'exigente' },
      message: initialMessage,
      isPlayerTurn: false,
      autoAdvanceDelay: 2000,
      options: [
        {
          id: 'auto-1',
          text: 'Continuar',
          consequences: {
            balanceChange: 0,
            reputationChange: 0,
            nextNodeId: 'demand',
          },
          feedback: '',
        },
      ],
    },
    {
      id: 'demand',
      character: { name, avatar, type: 'cliente', trait: 'exigente' },
      message: 'Pero necesito 50% de descuento. Es un pedido grande.',
      isPlayerTurn: true,
      options: [
        {
          id: 'opt-1',
          text: '🤝 Te ofrezco 15% de descuento por volumen',
          consequences: {
            balanceChange: reward * 2,
            reputationChange: 2,
            inventoryChange: -3,
            nextNodeId: 'END',
          },
          feedback: '¡Excelente negociación! Descuento justo que beneficia a ambos.',
          isCorrect: true,
        },
        {
          id: 'opt-2',
          text: '✅ Acepto el 50% de descuento',
          consequences: {
            balanceChange: penalty * 3,
            reputationChange: 1,
            inventoryChange: -3,
            nextNodeId: 'END',
          },
          feedback: 'Pérdida grande. Ganaste reputación pero no es sostenible.',
          isCorrect: false,
        },
        {
          id: 'opt-3',
          text: '❌ No hay descuentos, precio fijo',
          consequences: {
            balanceChange: penalty,
            reputationChange: -1,
            nextNodeId: 'END',
          },
          feedback: 'El cliente se fue. Perdiste una venta grande.',
          isCorrect: false,
        },
      ],
    },
  ];
}

// Cliente Estafador - Intento de fraude
function generateEstafadorConversation(
  name: string,
  avatar: string,
  initialMessage: string,
  reward: number,
  penalty: number
): ConversationNode[] {
  return [
    {
      id: 'start',
      character: { name, avatar, type: 'cliente', trait: 'estafador' },
      message: initialMessage,
      isPlayerTurn: true,
      options: [
        {
          id: 'opt-1',
          text: '🔍 Necesito ver el recibo y revisar el producto',
          consequences: {
            balanceChange: 0,
            reputationChange: 2,
            nextNodeId: 'END',
          },
          feedback: '¡Correcto! Detectaste el fraude. No hay recibo. Protegiste tu negocio.',
          isCorrect: true,
        },
        {
          id: 'opt-2',
          text: '✅ Ok, aquí está tu reembolso completo',
          consequences: {
            balanceChange: penalty * 5,
            reputationChange: -2,
            nextNodeId: 'END',
          },
          feedback: 'Te estafaron. Nunca compró nada. Pérdida grande.',
          isCorrect: false,
        },
        {
          id: 'opt-3',
          text: '❌ No damos devoluciones, punto',
          consequences: {
            balanceChange: penalty,
            reputationChange: -1,
            nextNodeId: 'END',
          },
          feedback: 'Demasiado agresivo. Podría ser cliente legítimo.',
          isCorrect: false,
        },
      ],
    },
  ];
}

// Socio Deshonesto - Ética empresarial
function generateDeshonestoConversation(
  name: string,
  avatar: string,
  initialMessage: string,
  reward: number,
  penalty: number
): ConversationNode[] {
  return [
    {
      id: 'start',
      character: { name, avatar, type: 'socio', trait: 'deshonesto' },
      message: initialMessage,
      isPlayerTurn: true,
      options: [
        {
          id: 'opt-1',
          text: '❌ No, eso es ilegal. Termino la sociedad',
          consequences: {
            balanceChange: penalty * 2,
            reputationChange: 3,
            nextNodeId: 'END',
          },
          feedback: '¡Excelente ética! Perdiste dinero pero ganaste reputación.',
          isCorrect: true,
        },
        {
          id: 'opt-2',
          text: '💰 Acepto, es buen negocio',
          consequences: {
            balanceChange: reward * 3,
            reputationChange: -3,
            nextNodeId: 'END',
          },
          feedback: 'Ganancias ilegales. Gran riesgo legal y perdiste reputación.',
          isCorrect: false,
        },
        {
          id: 'opt-3',
          text: '🤔 Déjame pensarlo...',
          consequences: {
            balanceChange: 0,
            reputationChange: -1,
            nextNodeId: 'END',
          },
          feedback: 'Indecisión ante fraude. El socio cree que aceptarás.',
          isCorrect: false,
        },
      ],
    },
  ];
}

// Conversación genérica
function generateDefaultConversation(
  name: string,
  avatar: string,
  initialMessage: string,
  reward: number,
  penalty: number
): ConversationNode[] {
  return [
    {
      id: 'start',
      character: { name, avatar, type: 'cliente', trait: 'amigable' },
      message: initialMessage,
      isPlayerTurn: true,
      options: [
        {
          id: 'opt-1',
          text: '✅ Sí, tengo lo que necesitas',
          consequences: {
            balanceChange: reward,
            reputationChange: 1,
            inventoryChange: -1,
            nextNodeId: 'END',
          },
          feedback: 'Venta exitosa. Cliente satisfecho.',
          isCorrect: true,
        },
        {
          id: 'opt-2',
          text: '❌ No tengo inventario disponible',
          consequences: {
            balanceChange: penalty,
            reputationChange: -1,
            nextNodeId: 'END',
          },
          feedback: 'Cliente insatisfecho. Perdiste una venta.',
          isCorrect: false,
        },
      ],
    },
  ];
}
