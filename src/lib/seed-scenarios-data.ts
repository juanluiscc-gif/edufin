import { PrismaClient, GameType, AgeGroup } from '@prisma/client';

/**
 * Seed scenario games to database
 * Can be called from both seed script and API route
 */
export async function seedScenarioGames(prisma: PrismaClient) {
  console.log('🎭 Seeding database with Scenario games...\n');

  // Clear existing scenario games (optional, for development)
  console.log('Clearing existing scenario games...');
  const scenarioGames = await prisma.game.findMany({
    where: { game_type: GameType.scenario },
  });

  for (const game of scenarioGames) {
    await prisma.gameScore.deleteMany({ where: { game_id: game.id } });
    await prisma.leaderboard.deleteMany({ where: { game_id: game.id } });
  }

  await prisma.game.deleteMany({
    where: { game_type: GameType.scenario },
  });

  // ========================================
  // SCENARIO 1: El Cliente Exigente
  // ========================================
  console.log('\n🚩 Creating Scenario: El Cliente Exigente...');

  const clienteExigente = await prisma.game.create({
    data: {
      title: "🚩 El Cliente Exigente",
      description: JSON.stringify({
        instructions: `Te encuentras con un cliente que pide descuentos extremos y entrega inmediata. Debes mantener tu negocio rentable sin perder la oportunidad de venta.

Objetivo: Completa la negociación manteniendo balance positivo y reputación de 3+ estrellas.`,
        initialState: {
          balance: 5000,
          reputation: 4,
        },
        conversationTree: [
          {
            id: 'start',
            character: {
              name: 'María González',
              avatar: '👩‍💼',
              type: 'cliente',
              trait: 'exigente',
            },
            message: 'Hola, necesito 100 unidades de tu producto URGENTE. Tengo un evento este fin de semana.',
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
            character: {
              name: 'María González',
              avatar: '👩‍💼',
              type: 'cliente',
              trait: 'exigente',
            },
            message: 'Pero solo puedo pagar el 50% del precio normal. Es una orden grande, deberías darme ese descuento.',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-1',
                text: '✅ Acepto el 50% de descuento (pierdes $2,500)',
                consequences: {
                  balanceChange: -2500,
                  reputationChange: 1,
                  nextNodeId: 'accept-50',
                },
                feedback: 'Aceptaste una pérdida muy grande. Aunque ganaste reputación, esto no es sostenible para tu negocio.',
                isCorrect: false,
              },
              {
                id: 'opt-2',
                text: '🤝 Ofrezco 20% de descuento por volumen',
                consequences: {
                  balanceChange: 400,
                  reputationChange: 2,
                  nextNodeId: 'counter-20',
                },
                feedback: '¡Excelente negociación! Ofreciste un descuento justo que beneficia a ambos.',
                isCorrect: true,
              },
              {
                id: 'opt-3',
                text: '❌ Rechazo completamente, precio completo o nada',
                consequences: {
                  balanceChange: 0,
                  reputationChange: -2,
                  nextNodeId: 'reject-hard',
                },
                feedback: 'Fuiste demasiado inflexible. Perdiste una oportunidad de venta.',
                isCorrect: false,
              },
              {
                id: 'opt-4',
                text: '⏰ Pido tiempo para revisar costos',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 1,
                  nextNodeId: 'ask-time',
                },
                feedback: 'Buena estrategia profesional. Tomarse tiempo para analizar es válido.',
                isCorrect: true,
              },
            ],
          },
          {
            id: 'accept-50',
            character: {
              name: 'María González',
              avatar: '👩‍💼',
              type: 'cliente',
              trait: 'exigente',
            },
            message: '¡Perfecto! Además necesito que lo entregues hoy mismo sin costo adicional.',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-5',
                text: '😰 Acepto entregar hoy gratis (pierdes $300 más)',
                consequences: {
                  balanceChange: -300,
                  reputationChange: 0,
                  nextNodeId: 'END',
                },
                feedback: 'Cediste demasiado. Tu negocio perdió mucho dinero en esta transacción.',
                isCorrect: false,
              },
              {
                id: 'opt-6',
                text: '🚚 Cargo $200 por entrega express',
                consequences: {
                  balanceChange: 200,
                  reputationChange: -1,
                  nextNodeId: 'END',
                },
                feedback: 'Recuperaste algo del margen, pero la cliente se molestó.',
                isCorrect: true,
              },
            ],
          },
          {
            id: 'counter-20',
            character: {
              name: 'María González',
              avatar: '👩‍💼',
              type: 'cliente',
              trait: 'exigente',
            },
            message: 'Mmm... está bien. 20% suena razonable. ¿Puedes entregar mañana?',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-7',
                text: '✅ Sí, entrega mañana sin costo extra',
                consequences: {
                  balanceChange: 100,
                  reputationChange: 1,
                  nextNodeId: 'WIN',
                },
                feedback: '¡Perfecto! Cerraste una venta rentable y la cliente quedó satisfecha.',
                isCorrect: true,
              },
              {
                id: 'opt-8',
                text: '💰 Entrega mañana con $150 adicionales',
                consequences: {
                  balanceChange: 250,
                  reputationChange: 0,
                  nextNodeId: 'END',
                },
                feedback: 'Maximizaste ganancias pero no generaste lealtad.',
                isCorrect: true,
              },
            ],
          },
          {
            id: 'reject-hard',
            character: {
              name: 'María González',
              avatar: '👩‍💼',
              type: 'cliente',
              trait: 'exigente',
            },
            message: 'Qué pena. Buscaré con tu competencia entonces. Adiós.',
            isPlayerTurn: false,
            autoAdvanceDelay: 2000,
            options: [
              {
                id: 'opt-9',
                text: 'Fin',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 0,
                  nextNodeId: 'LOSE',
                },
                feedback: '',
              },
            ],
          },
          {
            id: 'ask-time',
            character: {
              name: 'María González',
              avatar: '👩‍💼',
              type: 'cliente',
              trait: 'exigente',
            },
            message: 'Está bien, pero necesito respuesta en 1 hora. Es urgente.',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-10',
                text: '📊 Reviso costos y ofrezco 25% de descuento',
                consequences: {
                  balanceChange: 300,
                  reputationChange: 2,
                  nextNodeId: 'WIN',
                },
                feedback: '¡Excelente! Analizaste y propusiste algo justo.',
                isCorrect: true,
              },
              {
                id: 'opt-11',
                text: '🤷 No puedo darle descuento, lo siento',
                consequences: {
                  balanceChange: 0,
                  reputationChange: -1,
                  nextNodeId: 'LOSE',
                },
                feedback: 'Perdiste la oportunidad después de pedir tiempo.',
                isCorrect: false,
              },
            ],
          },
        ],
        winConditions: [
          {
            type: 'balance',
            threshold: 5200,
            message: '¡Excelente trabajo! Mantuviste tu negocio rentable y cerraste una buena venta.',
          },
        ],
        loseConditions: [
          {
            type: 'balance',
            threshold: 2000,
            message: 'Perdiste demasiado dinero en esta negociación. Debes proteger tus márgenes.',
          },
          {
            type: 'reputation',
            threshold: 2,
            message: 'Tu reputación cayó demasiado. Debes mantener buenas relaciones.',
          },
        ],
      }),
      game_type: GameType.scenario,
      age_group: AgeGroup.both,
      difficulty_level: 2,
      max_score: 2000,
    },
  });
  console.log(`✓ Created: ${clienteExigente.title}`);

  // ========================================
  // SCENARIO 2: La Estafa del Proveedor
  // ========================================
  console.log('\n⚠️ Creating Scenario: La Estafa del Proveedor...');

  const estafaProveedor = await prisma.game.create({
    data: {
      title: "⚠️ La Estafa del Proveedor",
      description: JSON.stringify({
        instructions: `Recibes un email de un "proveedor" con una oferta increíble. Aprende a detectar señales de fraude y proteger tu dinero.

Objetivo: Identifica las red flags y evita perder dinero en estafas.`,
        initialState: {
          balance: 10000,
          reputation: 4,
        },
        conversationTree: [
          {
            id: 'start',
            character: {
              name: 'Carlos Rodríguez',
              avatar: '👨‍💼',
              type: 'proveedor',
              trait: 'estafador',
            },
            message: 'Hola! Soy Carlos de "MegaProveedores SA". Tenemos una OFERTA ESPECIAL solo por HOY: productos con 70% de descuento.',
            isPlayerTurn: false,
            autoAdvanceDelay: 2000,
            options: [
              {
                id: 'auto-1',
                text: 'Continuar',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 0,
                  nextNodeId: 'offer',
                },
                feedback: '',
              },
            ],
          },
          {
            id: 'offer',
            character: {
              name: 'Carlos Rodríguez',
              avatar: '👨‍💼',
              type: 'proveedor',
              trait: 'estafador',
            },
            message: 'Solo necesito que hagas un depósito del 100% por adelantado a mi cuenta personal. Te envío los productos mañana, ¡garantizado!',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-1',
                text: '😍 ¡Suena genial! Deposito $5,000 ahora',
                consequences: {
                  balanceChange: -5000,
                  reputationChange: -2,
                  nextNodeId: 'scammed',
                },
                feedback: '❌ ¡Fue una estafa! Perdiste tu dinero. Red flags: prisa, pago 100% adelantado a cuenta personal, oferta "demasiado buena".',
                isCorrect: false,
              },
              {
                id: 'opt-2',
                text: '🤔 Pido referencias de otros clientes',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 1,
                  nextNodeId: 'ask-references',
                },
                feedback: '✅ ¡Bien! Siempre verifica la legitimidad antes de pagar.',
                isCorrect: true,
              },
              {
                id: 'opt-3',
                text: '🔍 Investigo la empresa en internet primero',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 1,
                  nextNodeId: 'research',
                },
                feedback: '✅ ¡Excelente! La investigación previa es esencial.',
                isCorrect: true,
              },
              {
                id: 'opt-4',
                text: '🚫 Rechazo, suena sospechoso',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 2,
                  nextNodeId: 'WIN',
                },
                feedback: '✅ ¡Perfecto! Confiaste en tu instinto y evitaste una estafa.',
                isCorrect: true,
              },
            ],
          },
          {
            id: 'scammed',
            character: {
              name: 'Sistema',
              avatar: '🚨',
              type: 'proveedor',
              trait: 'estafador',
            },
            message: 'Carlos desapareció. Su número ya no existe. No hay empresa "MegaProveedores SA" registrada. Perdiste tu dinero.',
            isPlayerTurn: false,
            autoAdvanceDelay: 3000,
            options: [
              {
                id: 'opt-5',
                text: 'Fin',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 0,
                  nextNodeId: 'LOSE',
                },
                feedback: '',
              },
            ],
          },
          {
            id: 'ask-references',
            character: {
              name: 'Carlos Rodríguez',
              avatar: '👨‍💼',
              type: 'proveedor',
              trait: 'estafador',
            },
            message: 'Eh... Mis clientes prefieren ser anónimos por privacidad. Pero te aseguro que soy legítimo. ¡La oferta expira en 1 hora!',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-6',
                text: '😰 OK, confío y pago',
                consequences: {
                  balanceChange: -5000,
                  reputationChange: -1,
                  nextNodeId: 'scammed',
                },
                feedback: '❌ La presión de tiempo es táctica de estafadores.',
                isCorrect: false,
              },
              {
                id: 'opt-7',
                text: '🚫 No, necesito verificar primero',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 2,
                  nextNodeId: 'WIN',
                },
                feedback: '✅ ¡Correcto! Proveedores legítimos tienen referencias verificables.',
                isCorrect: true,
              },
            ],
          },
          {
            id: 'research',
            character: {
              name: 'Sistema',
              avatar: '🔍',
              type: 'proveedor',
              trait: 'estafador',
            },
            message: 'Tu investigación revela: No hay registros de "MegaProveedores SA", el email es de Gmail (no corporativo), y hay reportes de estafas similares.',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-8',
                text: '✅ Bloqueo y reporto el contacto',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 2,
                  nextNodeId: 'WIN',
                },
                feedback: '✅ ¡Perfecto! Protegiste tu dinero y ayudaste a otros al reportar.',
                isCorrect: true,
              },
              {
                id: 'opt-9',
                text: '🤷 Ignoro y elimino el mensaje',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 1,
                  nextNodeId: 'END',
                },
                feedback: 'Bien, pero reportar ayuda a prevenir que otros caigan.',
                isCorrect: true,
              },
            ],
          },
        ],
        winConditions: [
          {
            type: 'balance',
            threshold: 9500,
            message: '¡Excelente! Protegiste tu dinero detectando las señales de fraude.',
          },
        ],
        loseConditions: [
          {
            type: 'balance',
            threshold: 6000,
            message: 'Caíste en la estafa. Recuerda: si suena demasiado bueno para ser verdad, probablemente lo es.',
          },
        ],
      }),
      game_type: GameType.scenario,
      age_group: AgeGroup.both,
      difficulty_level: 2,
      max_score: 2500,
    },
  });
  console.log(`✓ Created: ${estafaProveedor.title}`);

  // ========================================
  // SCENARIO 3: El Socio Deshonesto
  // ========================================
  console.log('\n😠 Creating Scenario: El Socio Deshonesto...');

  const socioDeshonesto = await prisma.game.create({
    data: {
      title: "😠 El Socio Deshonesto",
      description: JSON.stringify({
        instructions: `Tu socio comercial te propone modificar los libros contables para pagar menos impuestos. Aprende sobre ética empresarial y consecuencias legales.

Objetivo: Toma la decisión correcta protegiendo tu integridad y negocio.`,
        initialState: {
          balance: 8000,
          reputation: 5,
        },
        conversationTree: [
          {
            id: 'start',
            character: {
              name: 'Roberto Sánchez',
              avatar: '👨‍💼',
              type: 'socio',
              trait: 'agresivo',
            },
            message: 'Oye, tengo una "idea" para ahorrar en impuestos este trimestre...',
            isPlayerTurn: false,
            autoAdvanceDelay: 2000,
            options: [
              {
                id: 'auto-1',
                text: 'Continuar',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 0,
                  nextNodeId: 'proposal',
                },
                feedback: '',
              },
            ],
          },
          {
            id: 'proposal',
            character: {
              name: 'Roberto Sánchez',
              avatar: '👨‍💼',
              type: 'socio',
              trait: 'agresivo',
            },
            message: 'Si reportamos solo $50,000 en lugar de los $80,000 reales, ahorraríamos $10,000 en impuestos. Nadie se va a dar cuenta.',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-1',
                text: '😈 Acepto, ganamos $10,000',
                consequences: {
                  balanceChange: 10000,
                  reputationChange: -3,
                  nextNodeId: 'accept-fraud',
                },
                feedback: '❌ Cometiste fraude fiscal. Las consecuencias pueden ser graves.',
                isCorrect: false,
              },
              {
                id: 'opt-2',
                text: '🚫 Rechazo firmemente, es ilegal',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 2,
                  nextNodeId: 'reject-firm',
                },
                feedback: '✅ ¡Correcto! La integridad es más importante que el dinero.',
                isCorrect: true,
              },
              {
                id: 'opt-3',
                text: '📚 Explico los riesgos legales',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 1,
                  nextNodeId: 'explain-risks',
                },
                feedback: '✅ Buena estrategia educativa. Ayudas a tu socio a entender.',
                isCorrect: true,
              },
              {
                id: 'opt-4',
                text: '💼 Propongo contratar un contador',
                consequences: {
                  balanceChange: -500,
                  reputationChange: 2,
                  nextNodeId: 'hire-accountant',
                },
                feedback: '✅ ¡Excelente! Hay formas legales de optimizar impuestos.',
                isCorrect: true,
              },
            ],
          },
          {
            id: 'accept-fraud',
            character: {
              name: 'Sistema',
              avatar: '🚨',
              type: 'socio',
              trait: 'agresivo',
            },
            message: '6 meses después: El SAT detectó la irregularidad en una auditoría. Multa: $50,000 + antecedentes penales. Tu reputación está destruida.',
            isPlayerTurn: false,
            autoAdvanceDelay: 3000,
            options: [
              {
                id: 'opt-5',
                text: 'Fin',
                consequences: {
                  balanceChange: -50000,
                  reputationChange: 0,
                  nextNodeId: 'LOSE',
                },
                feedback: '',
              },
            ],
          },
          {
            id: 'reject-firm',
            character: {
              name: 'Roberto Sánchez',
              avatar: '👨‍💼',
              type: 'socio',
              trait: 'agresivo',
            },
            message: 'Eres demasiado rígido. Está bien, haremos todo legal. Respeto tu posición.',
            isPlayerTurn: false,
            autoAdvanceDelay: 2000,
            options: [
              {
                id: 'opt-6',
                text: 'Continuar',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 1,
                  nextNodeId: 'WIN',
                },
                feedback: '',
              },
            ],
          },
          {
            id: 'explain-risks',
            character: {
              name: 'Roberto Sánchez',
              avatar: '👨‍💼',
              type: 'socio',
              trait: 'agresivo',
            },
            message: 'Tienes razón... No había pensado en las consecuencias. Podríamos perder todo. Mejor buscamos formas legales.',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-7',
                text: '🤝 Investigamos deducciones legales',
                consequences: {
                  balanceChange: 2000,
                  reputationChange: 2,
                  nextNodeId: 'WIN',
                },
                feedback: '✅ ¡Perfecto! Encontraron formas legítimas de optimizar.',
                isCorrect: true,
              },
            ],
          },
          {
            id: 'hire-accountant',
            character: {
              name: 'Sistema',
              avatar: '👨‍💼',
              type: 'socio',
              trait: 'amigable',
            },
            message: 'El contador profesional encontró $3,000 en deducciones legales que no conocían. Ahorran dinero legalmente y duermen tranquilos.',
            isPlayerTurn: false,
            autoAdvanceDelay: 2000,
            options: [
              {
                id: 'opt-8',
                text: 'Fin',
                consequences: {
                  balanceChange: 3000,
                  reputationChange: 0,
                  nextNodeId: 'WIN',
                },
                feedback: '',
              },
            ],
          },
        ],
        winConditions: [
          {
            type: 'reputation',
            threshold: 4,
            message: '¡Excelente! Mantuviste tu integridad y encontraste soluciones éticas.',
          },
        ],
        loseConditions: [
          {
            type: 'reputation',
            threshold: 2,
            message: 'Tu reputación quedó dañada por decisiones deshonestas.',
          },
        ],
      }),
      game_type: GameType.scenario,
      age_group: AgeGroup.adult,
      difficulty_level: 3,
      max_score: 3000,
    },
  });
  console.log(`✓ Created: ${socioDeshonesto.title}`);

  // ========================================
  // SCENARIO 4: El Cliente Indeciso
  // ========================================
  console.log('\n😕 Creating Scenario: El Cliente Indeciso...');

  const clienteIndeciso = await prisma.game.create({
    data: {
      title: "😕 El Cliente Indeciso",
      description: JSON.stringify({
        instructions: `Un cliente llega sin saber exactamente qué necesita. Practica la venta consultiva y ayuda al cliente a tomar la mejor decisión.

Objetivo: Guía al cliente correctamente sin presionarlo, manteniendo la venta.`,
        initialState: {
          balance: 6000,
          reputation: 4,
        },
        conversationTree: [
          {
            id: 'start',
            character: {
              name: 'Ana López',
              avatar: '👩',
              type: 'cliente',
              trait: 'confundido',
            },
            message: 'Hola... eh... necesito algo para... bueno, no estoy muy segura qué necesito exactamente.',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-1',
                text: '🤷 "¿Y qué quieres que haga yo?" (grosero)',
                consequences: {
                  balanceChange: 0,
                  reputationChange: -2,
                  nextNodeId: 'LOSE',
                },
                feedback: '❌ Muy poco profesional. Perdiste al cliente por mal servicio.',
                isCorrect: false,
              },
              {
                id: 'opt-2',
                text: '💰 "Tengo este producto caro que te va perfecto" (venta agresiva)',
                consequences: {
                  balanceChange: 0,
                  reputationChange: -1,
                  nextNodeId: 'push-expensive',
                },
                feedback: '⚠️ Venta agresiva sin entender necesidades molesta al cliente.',
                isCorrect: false,
              },
              {
                id: 'opt-3',
                text: '❓ "Cuéntame, ¿para qué lo necesitas?" (consultivo)',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 1,
                  nextNodeId: 'ask-need',
                },
                feedback: '✅ ¡Perfecto! Hacer preguntas es clave en venta consultiva.',
                isCorrect: true,
              },
              {
                id: 'opt-4',
                text: '📋 "Déjame mostrarte opciones según presupuesto"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 1,
                  nextNodeId: 'ask-budget',
                },
                feedback: '✅ Buena estrategia, empezar por el presupuesto ayuda.',
                isCorrect: true,
              },
            ],
          },
          {
            id: 'push-expensive',
            character: {
              name: 'Ana López',
              avatar: '👩',
              type: 'cliente',
              trait: 'confundido',
            },
            message: 'Eh... es muy caro y ni siquiera sé si es lo que busco. Mejor voy a otro lugar.',
            isPlayerTurn: false,
            autoAdvanceDelay: 2000,
            options: [
              {
                id: 'opt-5',
                text: 'Fin',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 0,
                  nextNodeId: 'LOSE',
                },
                feedback: '',
              },
            ],
          },
          {
            id: 'ask-need',
            character: {
              name: 'Ana López',
              avatar: '👩',
              type: 'cliente',
              trait: 'confundido',
            },
            message: 'Es para un regalo... para mi sobrina que cumple 15 años. Le gusta la tecnología.',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-6',
                text: '🎁 "Perfecto, tengo justo algo ideal para ella"',
                consequences: {
                  balanceChange: 800,
                  reputationChange: 2,
                  nextNodeId: 'perfect-match',
                },
                feedback: '✅ Escuchaste y ofreciste solución específica. ¡Venta exitosa!',
                isCorrect: true,
              },
              {
                id: 'opt-7',
                text: '❓ "¿Cuánto quieres gastar?"',
                consequences: {
                  balanceChange: 600,
                  reputationChange: 1,
                  nextNodeId: 'budget-first',
                },
                feedback: '✅ Bueno, pero ya tenías info para hacer recomendación.',
                isCorrect: true,
              },
            ],
          },
          {
            id: 'ask-budget',
            character: {
              name: 'Ana López',
              avatar: '👩',
              type: 'cliente',
              trait: 'confundido',
            },
            message: 'Mmm... no sé, tal vez $500-$1000. Es un regalo importante.',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-8',
                text: '❓ "¿Para quién es el regalo?"',
                consequences: {
                  balanceChange: 700,
                  reputationChange: 2,
                  nextNodeId: 'WIN',
                },
                feedback: '✅ Excelente, seguiste haciendo preguntas para dar mejor recomendación.',
                isCorrect: true,
              },
              {
                id: 'opt-9',
                text: '💼 "Aquí está todo en ese rango"',
                consequences: {
                  balanceChange: 400,
                  reputationChange: 1,
                  nextNodeId: 'END',
                },
                feedback: 'Correcto pero básico. Podrías haber personalizado más.',
                isCorrect: true,
              },
            ],
          },
          {
            id: 'perfect-match',
            character: {
              name: 'Ana López',
              avatar: '👩',
              type: 'cliente',
              trait: 'amigable',
            },
            message: '¡Wow! Eso suena perfecto. Me lo llevo. Gracias por tu ayuda, volveré.',
            isPlayerTurn: false,
            autoAdvanceDelay: 2000,
            options: [
              {
                id: 'opt-10',
                text: 'Fin',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 0,
                  nextNodeId: 'WIN',
                },
                feedback: '',
              },
            ],
          },
          {
            id: 'budget-first',
            character: {
              name: 'Ana López',
              avatar: '👩',
              type: 'cliente',
              trait: 'confundido',
            },
            message: 'Como $500-$1000. Es para mi sobrina de 15.',
            isPlayerTurn: false,
            autoAdvanceDelay: 1500,
            options: [
              {
                id: 'opt-11',
                text: 'Continuar',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 0,
                  nextNodeId: 'WIN',
                },
                feedback: '',
              },
            ],
          },
        ],
        winConditions: [
          {
            type: 'balance',
            threshold: 6500,
            message: '¡Excelente! Aplicaste venta consultiva perfectamente.',
          },
        ],
        loseConditions: [
          {
            type: 'reputation',
            threshold: 2,
            message: 'Tu mal servicio al cliente espantó la venta.',
          },
        ],
      }),
      game_type: GameType.scenario,
      age_group: AgeGroup.both,
      difficulty_level: 1,
      max_score: 1800,
    },
  });
  console.log(`✓ Created: ${clienteIndeciso.title}`);

  // ========================================
  // SCENARIO 5: El Cliente Rápido
  // ========================================
  console.log('\n⚡ Creating Scenario: El Cliente Rápido...');

  const clienteRapido = await prisma.game.create({
    data: {
      title: "⚡ El Cliente Rápido",
      description: JSON.stringify({
        instructions: `Un cliente con mucha prisa necesita servicio inmediato. Aprende a priorizar velocidad sin sacrificar calidad.

Objetivo: Atiende rápido pero profesionalmente.`,
        initialState: {
          balance: 7000,
          reputation: 4,
        },
        conversationTree: [
          {
            id: 'start',
            character: {
              name: 'Luis Ramírez',
              avatar: '👨‍💼',
              type: 'cliente',
              trait: 'agresivo',
            },
            message: '¡Rápido! Tengo una junta en 15 minutos. Necesito producto X ahora mismo.',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-1',
                text: '😰 "Eh... déjame buscarlo" (nervioso)',
                consequences: {
                  balanceChange: 300,
                  reputationChange: 0,
                  nextNodeId: 'slow-service',
                },
                feedback: '⚠️ Mostraste inseguridad. El cliente percibe desorganización.',
                isCorrect: false,
              },
              {
                id: 'opt-2',
                text: '✅ "Lo tengo listo en 2 minutos" (eficiente)',
                consequences: {
                  balanceChange: 600,
                  reputationChange: 2,
                  nextNodeId: 'fast-service',
                },
                feedback: '✅ ¡Perfecto! Proyectaste confianza y eficiencia.',
                isCorrect: true,
              },
              {
                id: 'opt-3',
                text: '💰 "Servicio express cuesta $200 extra"',
                consequences: {
                  balanceChange: 800,
                  reputationChange: -1,
                  nextNodeId: 'charge-extra',
                },
                feedback: '⚠️ Maximizaste ganancia pero molestaste al cliente.',
                isCorrect: false,
              },
              {
                id: 'opt-4',
                text: '📋 "Verifico inventario primero"',
                consequences: {
                  balanceChange: 500,
                  reputationChange: 1,
                  nextNodeId: 'check-inventory',
                },
                feedback: '✅ Profesional, pero podrías ser más ágil.',
                isCorrect: true,
              },
            ],
          },
          {
            id: 'slow-service',
            character: {
              name: 'Luis Ramírez',
              avatar: '👨‍💼',
              type: 'cliente',
              trait: 'agresivo',
            },
            message: '¿En serio? No tengo tiempo. Cancelalo.',
            isPlayerTurn: false,
            autoAdvanceDelay: 1500,
            options: [
              {
                id: 'opt-5',
                text: 'Fin',
                consequences: {
                  balanceChange: 0,
                  reputationChange: -1,
                  nextNodeId: 'LOSE',
                },
                feedback: '',
              },
            ],
          },
          {
            id: 'fast-service',
            character: {
              name: 'Luis Ramírez',
              avatar: '👨‍💼',
              type: 'cliente',
              trait: 'amigable',
            },
            message: '¡Perfecto! Eso es lo que necesito. ¿Incluye factura?',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-6',
                text: '✅ "Sí, te la envío por email ahora"',
                consequences: {
                  balanceChange: 100,
                  reputationChange: 1,
                  nextNodeId: 'WIN',
                },
                feedback: '✅ Servicio completo y eficiente. ¡Excelente!',
                isCorrect: true,
              },
              {
                id: 'opt-7',
                text: '⏰ "Factura tarda 24 horas"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: -1,
                  nextNodeId: 'END',
                },
                feedback: 'Perdiste puntos por no adaptarte a su urgencia.',
                isCorrect: false,
              },
            ],
          },
          {
            id: 'charge-extra',
            character: {
              name: 'Luis Ramírez',
              avatar: '👨‍💼',
              type: 'cliente',
              trait: 'agresivo',
            },
            message: '¿Me cobras extra por hacer tu trabajo? Qué mal servicio. Dame el producto y no vuelvo.',
            isPlayerTurn: false,
            autoAdvanceDelay: 2000,
            options: [
              {
                id: 'opt-8',
                text: 'Fin',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 0,
                  nextNodeId: 'END',
                },
                feedback: '',
              },
            ],
          },
          {
            id: 'check-inventory',
            character: {
              name: 'Luis Ramírez',
              avatar: '👨‍💼',
              type: 'cliente',
              trait: 'agresivo',
            },
            message: 'Ok, pero apúrate por favor.',
            isPlayerTurn: false,
            autoAdvanceDelay: 1000,
            options: [
              {
                id: 'opt-9',
                text: 'Continuar',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 0,
                  nextNodeId: 'WIN',
                },
                feedback: '',
              },
            ],
          },
        ],
        winConditions: [
          {
            type: 'balance',
            threshold: 7500,
            message: '¡Excelente! Manejaste la presión del tiempo perfectamente.',
          },
        ],
        loseConditions: [
          {
            type: 'balance',
            threshold: 7000,
            message: 'No lograste cerrar la venta por lentitud o mal servicio.',
          },
        ],
      }),
      game_type: GameType.scenario,
      age_group: AgeGroup.both,
      difficulty_level: 2,
      max_score: 2000,
    },
  });
  console.log(`✓ Created: ${clienteRapido.title}`);

  // ========================================
  // SCENARIO 6: El Cliente Estafador
  // ========================================
  console.log('\n🎭 Creating Scenario: El Cliente Estafador...');

  const clienteEstafador = await prisma.game.create({
    data: {
      title: "🎭 El Cliente Estafador",
      description: JSON.stringify({
        instructions: `Un "cliente" intenta estafarte con devoluciones fraudulentas, productos alterados o amenazas falsas. Aprende a proteger tu negocio sin perder el profesionalismo.

Objetivo: Detecta el fraude y manéjalo profesionalmente.`,
        initialState: {
          balance: 8000,
          reputation: 4,
        },
        conversationTree: [
          {
            id: 'start',
            character: {
              name: 'Pedro Morales',
              avatar: '👨',
              type: 'cliente',
              trait: 'estafador',
            },
            message: 'Hola, compré este producto hace 3 meses y no funciona. Quiero devolución COMPLETA del dinero.',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-1',
                text: '😰 "Claro, le devuelvo todo" (sin verificar)',
                consequences: {
                  balanceChange: -1500,
                  reputationChange: 0,
                  nextNodeId: 'scammed-easy',
                },
                feedback: '❌ Te estafaron. Siempre verifica el producto primero.',
                isCorrect: false,
              },
              {
                id: 'opt-2',
                text: '🔍 "Permítame revisar el producto primero"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 1,
                  nextNodeId: 'inspect-product',
                },
                feedback: '✅ ¡Correcto! Siempre inspecciona antes de aceptar devoluciones.',
                isCorrect: true,
              },
              {
                id: 'opt-3',
                text: '📋 "¿Tiene su ticket de compra?"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 1,
                  nextNodeId: 'ask-receipt',
                },
                feedback: '✅ Buena práctica. El ticket es evidencia necesaria.',
                isCorrect: true,
              },
              {
                id: 'opt-4',
                text: '❌ "Política es 30 días, ya pasó el tiempo"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 1,
                  nextNodeId: 'policy-reject',
                },
                feedback: '✅ Correcto. Aplicaste tu política claramente.',
                isCorrect: true,
              },
            ],
          },
          {
            id: 'scammed-easy',
            character: {
              name: 'Sistema',
              avatar: '🚨',
              type: 'cliente',
              trait: 'estafador',
            },
            message: 'Revisas registros: No hay compra de Pedro Morales en tus sistemas. El producto es de otra tienda. Te estafaron $1,500.',
            isPlayerTurn: false,
            autoAdvanceDelay: 3000,
            options: [
              {
                id: 'opt-5',
                text: 'Fin',
                consequences: {
                  balanceChange: 0,
                  reputationChange: -1,
                  nextNodeId: 'LOSE',
                },
                feedback: '',
              },
            ],
          },
          {
            id: 'inspect-product',
            character: {
              name: 'Sistema',
              avatar: '🔍',
              type: 'cliente',
              trait: 'estafador',
            },
            message: 'Al inspeccionar: El producto tiene serial diferente al tuyo, está claramente usado por años, y tiene etiquetas de otra tienda.',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-6',
                text: '🚫 "Este no es nuestro producto, no procede"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 2,
                  nextNodeId: 'caught-scammer',
                },
                feedback: '✅ ¡Perfecto! Detectaste el fraude y lo manejaste profesionalmente.',
                isCorrect: true,
              },
              {
                id: 'opt-7',
                text: '📞 "Voy a llamar a mi gerente"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 1,
                  nextNodeId: 'call-manager',
                },
                feedback: '✅ Bueno, pero ya tenías evidencia suficiente para decidir.',
                isCorrect: true,
              },
            ],
          },
          {
            id: 'ask-receipt',
            character: {
              name: 'Pedro Morales',
              avatar: '👨',
              type: 'cliente',
              trait: 'estafador',
            },
            message: 'Eh... lo perdí. Pero ustedes tienen que tener registro en el sistema, ¿no?',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-8',
                text: '🔍 "Déjame buscar en el sistema"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 1,
                  nextNodeId: 'no-record',
                },
                feedback: '✅ Correcto, verificas en sistema.',
                isCorrect: true,
              },
              {
                id: 'opt-9',
                text: '😰 "Está bien, acepto sin ticket"',
                consequences: {
                  balanceChange: -1500,
                  reputationChange: -1,
                  nextNodeId: 'LOSE',
                },
                feedback: '❌ Nunca aceptes devoluciones sin comprobante.',
                isCorrect: false,
              },
            ],
          },
          {
            id: 'policy-reject',
            character: {
              name: 'Pedro Morales',
              avatar: '👨',
              type: 'cliente',
              trait: 'estafador',
            },
            message: '¡Voy a demandar! ¡Voy a publicar reseñas negativas! ¡Esto es ilegal!',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-10',
                text: '😰 "Ok ok, le devuelvo para evitar problemas"',
                consequences: {
                  balanceChange: -1500,
                  reputationChange: -1,
                  nextNodeId: 'LOSE',
                },
                feedback: '❌ Cediste ante intimidación. Es táctica común de estafadores.',
                isCorrect: false,
              },
              {
                id: 'opt-11',
                text: '📋 "Nuestra política es clara y legal"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 2,
                  nextNodeId: 'WIN',
                },
                feedback: '✅ ¡Perfecto! Mantuviste firmeza profesional ante amenazas.',
                isCorrect: true,
              },
            ],
          },
          {
            id: 'no-record',
            character: {
              name: 'Sistema',
              avatar: '💻',
              type: 'cliente',
              trait: 'estafador',
            },
            message: 'No hay registro de compra de Pedro Morales en los últimos 6 meses. El serial del producto tampoco coincide.',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-12',
                text: '🚫 "No hay registro, no procede la devolución"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 2,
                  nextNodeId: 'WIN',
                },
                feedback: '✅ ¡Excelente! Protegiste tu negocio con evidencia.',
                isCorrect: true,
              },
            ],
          },
          {
            id: 'caught-scammer',
            character: {
              name: 'Pedro Morales',
              avatar: '👨',
              type: 'cliente',
              trait: 'estafador',
            },
            message: 'Ah... eh... me confundí de tienda. Disculpa. *Se va rápidamente*',
            isPlayerTurn: false,
            autoAdvanceDelay: 2000,
            options: [
              {
                id: 'opt-13',
                text: 'Continuar',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 0,
                  nextNodeId: 'WIN',
                },
                feedback: '',
              },
            ],
          },
          {
            id: 'call-manager',
            character: {
              name: 'Gerente',
              avatar: '👨‍💼',
              type: 'socio',
              trait: 'amigable',
            },
            message: 'Bien hecho en verificar. Ese producto claramente no es nuestro. Rechaza la devolución.',
            isPlayerTurn: false,
            autoAdvanceDelay: 2000,
            options: [
              {
                id: 'opt-14',
                text: 'Continuar',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 0,
                  nextNodeId: 'WIN',
                },
                feedback: '',
              },
            ],
          },
        ],
        winConditions: [
          {
            type: 'balance',
            threshold: 7500,
            message: '¡Excelente! Protegiste tu negocio del fraude manteniendote profesional.',
          },
        ],
        loseConditions: [
          {
            type: 'balance',
            threshold: 6000,
            message: 'Caíste en la estafa. Recuerda: siempre verifica antes de aceptar devoluciones.',
          },
        ],
      }),
      game_type: GameType.scenario,
      age_group: AgeGroup.both,
      difficulty_level: 2,
      max_score: 2200,
    },
  });
  console.log(`✓ Created: ${clienteEstafador.title}`);

  // ========================================
  // SCENARIO 7: El Cliente Regular
  // ========================================
  console.log('\n💎 Creating Scenario: El Cliente Regular...');

  const clienteRegular = await prisma.game.create({
    data: {
      title: "💎 El Cliente Regular",
      description: JSON.stringify({
        instructions: `Un cliente frecuente y valioso regresa. Aprende a construir lealtad a largo plazo y maximizar el valor del cliente sin abusar de la confianza.

Objetivo: Fortalece la relación manteniendo el equilibrio justo.`,
        initialState: {
          balance: 10000,
          reputation: 5,
        },
        conversationTree: [
          {
            id: 'start',
            character: {
              name: 'Sofía Martínez',
              avatar: '👩‍💼',
              type: 'cliente',
              trait: 'amigable',
            },
            message: '¡Hola! Vengo de nuevo. Ya he comprado aquí como 10 veces. Necesito más productos.',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-1',
                text: '😊 "¡Sofía! Qué gusto verte. ¿Qué necesitas hoy?"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 1,
                  nextNodeId: 'recognize-client',
                },
                feedback: '✅ ¡Perfecto! Reconocer clientes frecuentes genera lealtad.',
                isCorrect: true,
              },
              {
                id: 'opt-2',
                text: '🤷 "Hola, ¿en qué le ayudo?" (no la recuerdas)',
                consequences: {
                  balanceChange: 0,
                  reputationChange: -1,
                  nextNodeId: 'dont-remember',
                },
                feedback: '⚠️ No reconocer a clientes frecuentes daña la relación.',
                isCorrect: false,
              },
              {
                id: 'opt-3',
                text: '💎 "Para clientes especiales como tú, tengo ofertas"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 2,
                  nextNodeId: 'special-offer',
                },
                feedback: '✅ ¡Excelente! Valoras su lealtad con beneficios.',
                isCorrect: true,
              },
              {
                id: 'opt-4',
                text: '💰 "Perfecto, mira estos productos nuevos más caros"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 0,
                  nextNodeId: 'upsell-aggressive',
                },
                feedback: '⚠️ El upselling agresivo puede alejar clientes leales.',
                isCorrect: false,
              },
            ],
          },
          {
            id: 'recognize-client',
            character: {
              name: 'Sofía Martínez',
              avatar: '👩‍💼',
              type: 'cliente',
              trait: 'amigable',
            },
            message: '¡Me encanta que me recuerdes! Necesito lo mismo de siempre, pero esta vez el doble.',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-5',
                text: '🎁 "Por compra grande, 10% de descuento de lealtad"',
                consequences: {
                  balanceChange: 1800,
                  reputationChange: 2,
                  nextNodeId: 'loyalty-discount',
                },
                feedback: '✅ ¡Perfecto! Inversión en relación a largo plazo.',
                isCorrect: true,
              },
              {
                id: 'opt-6',
                text: '💰 "Perfecto, son $2,000 precio completo"',
                consequences: {
                  balanceChange: 2000,
                  reputationChange: 0,
                  nextNodeId: 'no-discount',
                },
                feedback: 'Correcto pero perdiste oportunidad de fortalecer lealtad.',
                isCorrect: true,
              },
            ],
          },
          {
            id: 'dont-remember',
            character: {
              name: 'Sofía Martínez',
              avatar: '👩‍💼',
              type: 'cliente',
              trait: 'confundido',
            },
            message: 'Ah... pensé que me conocías. He gastado como $10,000 aquí...',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-7',
                text: '😰 "Lo siento mucho, déjame compensarte"',
                consequences: {
                  balanceChange: 1500,
                  reputationChange: 1,
                  nextNodeId: 'recover',
                },
                feedback: '✅ Bien, recuperaste parcialmente la situación.',
                isCorrect: true,
              },
              {
                id: 'opt-8',
                text: '🤷 "Bueno, ¿qué necesitas?"',
                consequences: {
                  balanceChange: 800,
                  reputationChange: -1,
                  nextNodeId: 'END',
                },
                feedback: '❌ Perdiste la oportunidad de recuperar la relación.',
                isCorrect: false,
              },
            ],
          },
          {
            id: 'special-offer',
            character: {
              name: 'Sofía Martínez',
              avatar: '👩‍💼',
              type: 'cliente',
              trait: 'amigable',
            },
            message: '¡Wow! Me encanta que valores mi lealtad. ¿Qué ofertas tienes?',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-9',
                text: '💎 "15% descuento permanente + envío gratis siempre"',
                consequences: {
                  balanceChange: 2000,
                  reputationChange: 2,
                  nextNodeId: 'vip-program',
                },
                feedback: '✅ ¡Excelente! Creaste programa VIP que genera retención.',
                isCorrect: true,
              },
              {
                id: 'opt-10',
                text: '🎁 "10% hoy + puntos acumulables"',
                consequences: {
                  balanceChange: 1800,
                  reputationChange: 2,
                  nextNodeId: 'WIN',
                },
                feedback: '✅ Buena estrategia de lealtad balanceada.',
                isCorrect: true,
              },
            ],
          },
          {
            id: 'upsell-aggressive',
            character: {
              name: 'Sofía Martínez',
              avatar: '👩‍💼',
              type: 'cliente',
              trait: 'confundido',
            },
            message: 'Eh... solo quería lo de siempre. Me siento presionada.',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-11',
                text: '😊 "Perdón, dime qué necesitas"',
                consequences: {
                  balanceChange: 1500,
                  reputationChange: 0,
                  nextNodeId: 'END',
                },
                feedback: 'Recuperaste la venta pero dañaste un poco la confianza.',
                isCorrect: true,
              },
            ],
          },
          {
            id: 'loyalty-discount',
            character: {
              name: 'Sofía Martínez',
              avatar: '👩‍💼',
              type: 'cliente',
              trait: 'amigable',
            },
            message: '¡Increíble! Definitivamente seguiré comprando aquí. ¿Tienen programa de referidos?',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-12',
                text: '🎯 "Sí! Por cada referido, 20% tu próxima compra"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 1,
                  nextNodeId: 'WIN',
                },
                feedback: '✅ ¡Perfecto! Convertiste cliente leal en embajadora de marca.',
                isCorrect: true,
              },
              {
                id: 'opt-13',
                text: '🤷 "No, pero es buena idea"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 0,
                  nextNodeId: 'WIN',
                },
                feedback: 'Bien, pero perdiste oportunidad de marketing orgánico.',
                isCorrect: true,
              },
            ],
          },
          {
            id: 'no-discount',
            character: {
              name: 'Sofía Martínez',
              avatar: '👩‍💼',
              type: 'cliente',
              trait: 'confundido',
            },
            message: 'Mmm... está bien. Pero había esperado algún beneficio por ser clienta frecuente.',
            isPlayerTurn: false,
            autoAdvanceDelay: 2000,
            options: [
              {
                id: 'opt-14',
                text: 'Continuar',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 0,
                  nextNodeId: 'END',
                },
                feedback: '',
              },
            ],
          },
          {
            id: 'recover',
            character: {
              name: 'Sofía Martínez',
              avatar: '👩‍💼',
              type: 'cliente',
              trait: 'amigable',
            },
            message: 'Gracias por compensar. Aprecio el gesto.',
            isPlayerTurn: false,
            autoAdvanceDelay: 1500,
            options: [
              {
                id: 'opt-15',
                text: 'Continuar',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 0,
                  nextNodeId: 'WIN',
                },
                feedback: '',
              },
            ],
          },
          {
            id: 'vip-program',
            character: {
              name: 'Sofía Martínez',
              avatar: '👩‍💼',
              type: 'cliente',
              trait: 'amigable',
            },
            message: '¡Esto es increíble! Voy a recomendar tu tienda a todos mis conocidos.',
            isPlayerTurn: false,
            autoAdvanceDelay: 2000,
            options: [
              {
                id: 'opt-16',
                text: 'Continuar',
                consequences: {
                  balanceChange: 500,
                  reputationChange: 0,
                  nextNodeId: 'WIN',
                },
                feedback: '',
              },
            ],
          },
        ],
        winConditions: [
          {
            type: 'balance',
            threshold: 11500,
            message: '¡Excelente! Fortaleciste la relación con tu cliente más valioso.',
          },
        ],
        loseConditions: [
          {
            type: 'reputation',
            threshold: 3,
            message: 'Perdiste la confianza de un cliente leal. La lealtad requiere reciprocidad.',
          },
        ],
      }),
      game_type: GameType.scenario,
      age_group: AgeGroup.both,
      difficulty_level: 2,
      max_score: 2500,
    },
  });
  console.log(`✓ Created: ${clienteRegular.title}`);

  // ========================================
  // SCENARIO 8: El Influencer Falso
  // ========================================
  console.log('\n📱 Creating Scenario: El Influencer Falso...');

  const influencerFalso = await prisma.game.create({
    data: {
      title: "📱 El Influencer Falso",
      description: JSON.stringify({
        instructions: `Un "influencer" con 50K seguidores te pide productos gratis a cambio de "exposición". Aprende a evaluar colaboraciones reales vs. estafas de influencers.

Objetivo: Toma decisión inteligente sobre marketing de influencers.`,
        initialState: {
          balance: 7000,
          reputation: 4,
        },
        conversationTree: [
          {
            id: 'start',
            character: {
              name: 'Daniela Instagram',
              avatar: '👱‍♀️',
              type: 'cliente',
              trait: 'estafador',
            },
            message: 'Hola! Soy influencer con 50,000 seguidores. Quiero colaborar: me das productos gratis y yo los promociono.',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-1',
                text: '😍 "¡Claro! Te doy $1,000 en productos"',
                consequences: {
                  balanceChange: -1000,
                  reputationChange: 0,
                  nextNodeId: 'accept-immediately',
                },
                feedback: '❌ Muy apresurado. Siempre investiga primero.',
                isCorrect: false,
              },
              {
                id: 'opt-2',
                text: '🔍 "¿Puedo ver métricas de engagement?"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 1,
                  nextNodeId: 'ask-metrics',
                },
                feedback: '✅ ¡Excelente! Las métricas reales importan más que seguidores.',
                isCorrect: true,
              },
              {
                id: 'opt-3',
                text: '📊 "¿Cuál es tu audiencia y tasa de engagement?"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 1,
                  nextNodeId: 'ask-audience',
                },
                feedback: '✅ ¡Perfecto! Preguntas clave para evaluar influencers.',
                isCorrect: true,
              },
              {
                id: 'opt-4',
                text: '🚫 "No hacemos colaboraciones, lo siento"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 0,
                  nextNodeId: 'reject-all',
                },
                feedback: 'Seguro pero perdiste oportunidad de evaluar.',
                isCorrect: true,
              },
            ],
          },
          {
            id: 'accept-immediately',
            character: {
              name: 'Sistema',
              avatar: '📱',
              type: 'cliente',
              trait: 'estafador',
            },
            message: 'Daniela publicó 1 story que nadie vio (2% engagement) y bloqueó comentarios. Sus "50K seguidores" son bots. Perdiste $1,000 en productos sin retorno.',
            isPlayerTurn: false,
            autoAdvanceDelay: 3000,
            options: [
              {
                id: 'opt-5',
                text: 'Fin',
                consequences: {
                  balanceChange: 0,
                  reputationChange: -1,
                  nextNodeId: 'LOSE',
                },
                feedback: '',
              },
            ],
          },
          {
            id: 'ask-metrics',
            character: {
              name: 'Daniela Instagram',
              avatar: '👱‍♀️',
              type: 'cliente',
              trait: 'estafador',
            },
            message: 'Eh... no tengo acceso a esos datos ahora. ¡Pero mira mis 50K seguidores! La oferta es solo por HOY.',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-6',
                text: '😰 "Ok, acepto sin ver métricas"',
                consequences: {
                  balanceChange: -1000,
                  reputationChange: -1,
                  nextNodeId: 'accept-immediately',
                },
                feedback: '❌ La presión de tiempo es red flag. Influencers reales tienen datos.',
                isCorrect: false,
              },
              {
                id: 'opt-7',
                text: '🔍 "Investigo su perfil primero"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 2,
                  nextNodeId: 'investigate',
                },
                feedback: '✅ ¡Perfecto! Siempre investiga antes de colaboraciones.',
                isCorrect: true,
              },
              {
                id: 'opt-8',
                text: '🚫 "Sin métricas, no hay colaboración"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 2,
                  nextNodeId: 'WIN',
                },
                feedback: '✅ ¡Correcto! Protegiste tu inversión con estándares profesionales.',
                isCorrect: true,
              },
            ],
          },
          {
            id: 'ask-audience',
            character: {
              name: 'Daniela Instagram',
              avatar: '👱‍♀️',
              type: 'cliente',
              trait: 'estafador',
            },
            message: 'Mi audiencia es... eh... general. Engagement es... bueno, normal. ¿Aceptas o no?',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-9',
                text: '🔍 "Reviso tu perfil antes de decidir"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 1,
                  nextNodeId: 'investigate',
                },
                feedback: '✅ Correcto, verificas antes de comprometer recursos.',
                isCorrect: true,
              },
              {
                id: 'opt-10',
                text: '🚫 "Respuestas vagas, no me interesa"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 2,
                  nextNodeId: 'WIN',
                },
                feedback: '✅ ¡Perfecto! Detectaste las red flags.',
                isCorrect: true,
              },
            ],
          },
          {
            id: 'reject-all',
            character: {
              name: 'Sistema',
              avatar: '💡',
              type: 'cliente',
              trait: 'amigable',
            },
            message: 'Más tarde, un influencer REAL con 10K seguidores pero 15% engagement te contacta. ¿Evalúas colaboraciones caso por caso?',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-11',
                text: '✅ "Sí, reviso métricas de cada uno"',
                consequences: {
                  balanceChange: 1500,
                  reputationChange: 1,
                  nextNodeId: 'WIN',
                },
                feedback: '✅ ¡Perfecto! Aprendiste a evaluar influencers correctamente.',
                isCorrect: true,
              },
              {
                id: 'opt-12',
                text: '🚫 "No, rechazo todos"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 0,
                  nextNodeId: 'END',
                },
                feedback: 'Seguro pero perdiste oportunidades reales de marketing.',
                isCorrect: true,
              },
            ],
          },
          {
            id: 'investigate',
            character: {
              name: 'Sistema',
              avatar: '🔍',
              type: 'cliente',
              trait: 'honesto',
            },
            message: 'Investigación revela: Engagement real 0.5%, seguidores mayormente bots, comentarios genéricos repetidos, sin colaboraciones previas documentadas.',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-13',
                text: '🚫 "Rechazo, es claramente fraude"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 2,
                  nextNodeId: 'smart-rejection',
                },
                feedback: '✅ ¡Perfecto! Investigaste y tomaste decisión informada.',
                isCorrect: true,
              },
              {
                id: 'opt-14',
                text: '💡 "Le ofrezco colaboración pagada justa"',
                consequences: {
                  balanceChange: 200,
                  reputationChange: 1,
                  nextNodeId: 'paid-collab',
                },
                feedback: '✅ Creativo, pero ella solo quería productos gratis.',
                isCorrect: true,
              },
            ],
          },
          {
            id: 'smart-rejection',
            character: {
              name: 'Daniela Instagram',
              avatar: '👱‍♀️',
              type: 'cliente',
              trait: 'estafador',
            },
            message: '¿Investigaste mi perfil? Qué desconfiado. *Se va*',
            isPlayerTurn: false,
            autoAdvanceDelay: 2000,
            options: [
              {
                id: 'opt-15',
                text: 'Continuar',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 0,
                  nextNodeId: 'WIN',
                },
                feedback: '',
              },
            ],
          },
          {
            id: 'paid-collab',
            character: {
              name: 'Daniela Instagram',
              avatar: '👱‍♀️',
              type: 'cliente',
              trait: 'estafador',
            },
            message: 'No, yo solo hago colaboraciones gratis. Adiós.',
            isPlayerTurn: false,
            autoAdvanceDelay: 1500,
            options: [
              {
                id: 'opt-16',
                text: 'Continuar',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 0,
                  nextNodeId: 'WIN',
                },
                feedback: '',
              },
            ],
          },
        ],
        winConditions: [
          {
            type: 'balance',
            threshold: 6500,
            message: '¡Excelente! Aprendiste a evaluar colaboraciones de influencers profesionalmente.',
          },
        ],
        loseConditions: [
          {
            type: 'balance',
            threshold: 5500,
            message: 'Perdiste dinero en "colaboraciones" fraudulentas. Verifica métricas siempre.',
          },
        ],
      }),
      game_type: GameType.scenario,
      age_group: AgeGroup.both,
      difficulty_level: 2,
      max_score: 2300,
    },
  });
  console.log(`✓ Created: ${influencerFalso.title}`);

  // ========================================
  // SCENARIO 9: El Problema Legítimo
  // ========================================
  console.log('\n⚖️ Creating Scenario: El Problema Legítimo...');

  const problemaLegitimo = await prisma.game.create({
    data: {
      title: "⚖️ El Problema Legítimo",
      description: JSON.stringify({
        instructions: `Un cliente tiene una queja legítima sobre un producto defectuoso. Aprende a manejar problemas reales con profesionalismo y convertir situaciones negativas en oportunidades.

Objetivo: Resuelve el problema manteniendo al cliente satisfecho.`,
        initialState: {
          balance: 8000,
          reputation: 4,
        },
        conversationTree: [
          {
            id: 'start',
            character: {
              name: 'Carmen Díaz',
              avatar: '👩',
              type: 'cliente',
              trait: 'honesto',
            },
            message: 'Hola, compré este producto hace 2 semanas y dejó de funcionar. Tengo mi ticket. Estoy muy decepcionada.',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-1',
                text: '😤 "Eso no es mi problema, quéjate con el fabricante"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: -2,
                  nextNodeId: 'LOSE',
                },
                feedback: '❌ Muy poco profesional. Perdiste un cliente para siempre.',
                isCorrect: false,
              },
              {
                id: 'opt-2',
                text: '😊 "Lo siento mucho, déjame revisar el producto"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 1,
                  nextNodeId: 'inspect-defect',
                },
                feedback: '✅ ¡Perfecto! Empatía y acción inmediata.',
                isCorrect: true,
              },
              {
                id: 'opt-3',
                text: '📋 "¿Lo usaste correctamente según las instrucciones?"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: -1,
                  nextNodeId: 'blame-customer',
                },
                feedback: '⚠️ Suena como si culparas al cliente antes de investigar.',
                isCorrect: false,
              },
              {
                id: 'opt-4',
                text: '🤝 "Entiendo tu frustración, vamos a solucionarlo"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 2,
                  nextNodeId: 'empathize',
                },
                feedback: '✅ ¡Excelente! Validaste sus emociones y te comprometiste.',
                isCorrect: true,
              },
            ],
          },
          {
            id: 'inspect-defect',
            character: {
              name: 'Sistema',
              avatar: '🔍',
              type: 'cliente',
              trait: 'honesto',
            },
            message: 'Al revisar: El producto efectivamente tiene un defecto de fábrica. No es culpa del cliente. Está dentro de garantía.',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-5',
                text: '🔄 "Te lo cambio por uno nuevo ahora mismo"',
                consequences: {
                  balanceChange: -500,
                  reputationChange: 2,
                  nextNodeId: 'immediate-replacement',
                },
                feedback: '✅ ¡Excelente! Solución rápida y directa.',
                isCorrect: true,
              },
              {
                id: 'opt-6',
                text: '💰 "Te devuelvo tu dinero completo"',
                consequences: {
                  balanceChange: -800,
                  reputationChange: 1,
                  nextNodeId: 'full-refund',
                },
                feedback: '✅ Justo, pero perdiste la oportunidad de retener al cliente.',
                isCorrect: true,
              },
              {
                id: 'opt-7',
                text: '🎁 "Cambio + cupón $200 por las molestias"',
                consequences: {
                  balanceChange: -500,
                  reputationChange: 2,
                  nextNodeId: 'replacement-plus',
                },
                feedback: '✅ ¡Perfecto! Excediste expectativas y generaste lealtad.',
                isCorrect: true,
              },
            ],
          },
          {
            id: 'blame-customer',
            character: {
              name: 'Carmen Díaz',
              avatar: '👩',
              type: 'cliente',
              trait: 'agresivo',
            },
            message: '¿Me estás culpando? Seguí todas las instrucciones. El producto vino defectuoso.',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-8',
                text: '😰 "Perdón, déjame revisarlo"',
                consequences: {
                  balanceChange: -800,
                  reputationChange: 0,
                  nextNodeId: 'recover-mistake',
                },
                feedback: 'Recuperaste la situación pero ya dañaste la experiencia.',
                isCorrect: true,
              },
              {
                id: 'opt-9',
                text: '🤷 "Bueno, pero necesito verificar"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: -2,
                  nextNodeId: 'LOSE',
                },
                feedback: '❌ Seguiste siendo defensivo. Cliente muy molesto.',
                isCorrect: false,
              },
            ],
          },
          {
            id: 'empathize',
            character: {
              name: 'Carmen Díaz',
              avatar: '👩',
              type: 'cliente',
              trait: 'amigable',
            },
            message: 'Gracias por entender. Solo quiero que funcione o que me devuelvan mi dinero.',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-10',
                text: '🔍 "Permíteme revisarlo para ver la mejor solución"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 1,
                  nextNodeId: 'inspect-defect',
                },
                feedback: '✅ Correcto, investigas antes de decidir.',
                isCorrect: true,
              },
            ],
          },
          {
            id: 'immediate-replacement',
            character: {
              name: 'Carmen Díaz',
              avatar: '👩',
              type: 'cliente',
              trait: 'amigable',
            },
            message: '¡Perfecto! Gracias por resolverlo tan rápido. Eso es buen servicio.',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-11',
                text: '🎁 "Y toma este cupón 15% para tu próxima compra"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 1,
                  nextNodeId: 'WIN',
                },
                feedback: '✅ ¡Perfecto! Convertiste problema en oportunidad de lealtad.',
                isCorrect: true,
              },
              {
                id: 'opt-12',
                text: '😊 "De nada, que lo disfrutes"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 0,
                  nextNodeId: 'WIN',
                },
                feedback: 'Bien, pero perdiste oportunidad de fortalecer relación.',
                isCorrect: true,
              },
            ],
          },
          {
            id: 'full-refund',
            character: {
              name: 'Carmen Díaz',
              avatar: '👩',
              type: 'cliente',
              trait: 'honesto',
            },
            message: 'Gracias. Aunque el producto me gustaba, la devolución está bien.',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-13',
                text: '💡 "¿Te gustaría intentar con otro modelo similar?"',
                consequences: {
                  balanceChange: 600,
                  reputationChange: 1,
                  nextNodeId: 'WIN',
                },
                feedback: '✅ ¡Excelente recuperación! Convertiste devolución en nueva venta.',
                isCorrect: true,
              },
              {
                id: 'opt-14',
                text: '🤷 "Ok, aquí está tu dinero"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 0,
                  nextNodeId: 'END',
                },
                feedback: 'Resolviste pero perdiste al cliente.',
                isCorrect: true,
              },
            ],
          },
          {
            id: 'replacement-plus',
            character: {
              name: 'Carmen Díaz',
              avatar: '👩',
              type: 'cliente',
              trait: 'amigable',
            },
            message: '¡Wow! No esperaba eso. Eso es servicio excepcional. Definitivamente volveré.',
            isPlayerTurn: false,
            autoAdvanceDelay: 2000,
            options: [
              {
                id: 'opt-15',
                text: 'Continuar',
                consequences: {
                  balanceChange: 400,
                  reputationChange: 0,
                  nextNodeId: 'WIN',
                },
                feedback: '',
              },
            ],
          },
          {
            id: 'recover-mistake',
            character: {
              name: 'Sistema',
              avatar: '💡',
              type: 'cliente',
              trait: 'honesto',
            },
            message: 'Revisas: Efectivamente tiene defecto de fábrica. Ofreces cambio + cupón por las molestias. Cliente acepta pero la experiencia ya quedó afectada.',
            isPlayerTurn: false,
            autoAdvanceDelay: 2500,
            options: [
              {
                id: 'opt-16',
                text: 'Continuar',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 0,
                  nextNodeId: 'END',
                },
                feedback: '',
              },
            ],
          },
        ],
        winConditions: [
          {
            type: 'reputation',
            threshold: 5,
            message: '¡Excelente! Convertiste un problema en una oportunidad de servicio excepcional.',
          },
        ],
        loseConditions: [
          {
            type: 'reputation',
            threshold: 2,
            message: 'Tu mal manejo de quejas legítimas dañó tu reputación seriamente.',
          },
        ],
      }),
      game_type: GameType.scenario,
      age_group: AgeGroup.both,
      difficulty_level: 2,
      max_score: 2400,
    },
  });
  console.log(`✓ Created: ${problemaLegitimo.title}`);

  // ========================================
  // SCENARIO 10: El Cliente Corporativo
  // ========================================
  console.log('\n🏢 Creating Scenario: El Cliente Corporativo...');

  const clienteCorporativo = await prisma.game.create({
    data: {
      title: "🏢 El Cliente Corporativo",
      description: JSON.stringify({
        instructions: `Una empresa grande quiere hacer un pedido importante. Aprende a negociar contratos corporativos, manejar volumen y construir relaciones B2B.

Objetivo: Cierra el contrato corporativo rentablemente.`,
        initialState: {
          balance: 15000,
          reputation: 4,
        },
        conversationTree: [
          {
            id: 'start',
            character: {
              name: 'Lic. Martín Rojas',
              avatar: '👨‍💼',
              type: 'cliente',
              trait: 'honesto',
            },
            message: 'Buenos días, represento a TechCorp. Necesitamos 500 unidades mensuales. ¿Pueden manejar ese volumen?',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-1',
                text: '😍 "¡Sí! Lo que necesiten" (sin verificar)',
                consequences: {
                  balanceChange: 0,
                  reputationChange: -1,
                  nextNodeId: 'promise-too-much',
                },
                feedback: '⚠️ Nunca prometas sin verificar capacidad real.',
                isCorrect: false,
              },
              {
                id: 'opt-2',
                text: '📊 "Déjeme verificar capacidad y costos"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 2,
                  nextNodeId: 'check-capacity',
                },
                feedback: '✅ ¡Perfecto! Profesional y realista.',
                isCorrect: true,
              },
              {
                id: 'opt-3',
                text: '💰 "Sí, pero el precio es premium por volumen"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 0,
                  nextNodeId: 'premium-price',
                },
                feedback: '⚠️ Contraproducente. Volumen normalmente reduce precio.',
                isCorrect: false,
              },
              {
                id: 'opt-4',
                text: '🤝 "Cuénteme más sobre sus necesidades"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 1,
                  nextNodeId: 'understand-needs',
                },
                feedback: '✅ Buena estrategia consultiva para B2B.',
                isCorrect: true,
              },
            ],
          },
          {
            id: 'promise-too-much',
            character: {
              name: 'Sistema',
              avatar: '⚠️',
              type: 'cliente',
              trait: 'honesto',
            },
            message: 'Semana 1: No pudiste cumplir con 500 unidades (tu capacidad real es 300). El cliente está molesto y cancela el contrato.',
            isPlayerTurn: false,
            autoAdvanceDelay: 3000,
            options: [
              {
                id: 'opt-5',
                text: 'Fin',
                consequences: {
                  balanceChange: -2000,
                  reputationChange: -2,
                  nextNodeId: 'LOSE',
                },
                feedback: '',
              },
            ],
          },
          {
            id: 'check-capacity',
            character: {
              name: 'Sistema',
              avatar: '📊',
              type: 'cliente',
              trait: 'honesto',
            },
            message: 'Tu capacidad actual: 300 unidades/mes. Para 500 necesitas invertir $3,000 en expandir. ¿Qué propones?',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-6',
                text: '🎯 "Puedo 300 ahora, 500 en 2 meses con inversión"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 2,
                  nextNodeId: 'honest-proposal',
                },
                feedback: '✅ ¡Perfecto! Transparencia y plan realista.',
                isCorrect: true,
              },
              {
                id: 'opt-7',
                text: '🚫 "No puedo, lo siento"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 0,
                  nextNodeId: 'LOSE',
                },
                feedback: '❌ Perdiste oportunidad sin explorar alternativas.',
                isCorrect: false,
              },
              {
                id: 'opt-8',
                text: '💼 "Necesito contrato firmado antes de invertir"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 1,
                  nextNodeId: 'request-commitment',
                },
                feedback: '✅ Protección inteligente ante gran inversión.',
                isCorrect: true,
              },
            ],
          },
          {
            id: 'premium-price',
            character: {
              name: 'Lic. Martín Rojas',
              avatar: '👨‍💼',
              type: 'cliente',
              trait: 'confundido',
            },
            message: '¿Premium? Generalmente el volumen reduce costos, no los aumenta. Buscaré otros proveedores.',
            isPlayerTurn: false,
            autoAdvanceDelay: 2000,
            options: [
              {
                id: 'opt-9',
                text: 'Fin',
                consequences: {
                  balanceChange: 0,
                  reputationChange: -1,
                  nextNodeId: 'LOSE',
                },
                feedback: '',
              },
            ],
          },
          {
            id: 'understand-needs',
            character: {
              name: 'Lic. Martín Rojas',
              avatar: '👨‍💼',
              type: 'cliente',
              trait: 'amigable',
            },
            message: 'Necesitamos entrega mensual confiable, facturación corporativa, crédito 30 días, y servicio post-venta. Contrato mínimo 12 meses.',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-10',
                text: '📋 "Permítame preparar propuesta formal"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 2,
                  nextNodeId: 'formal-proposal',
                },
                feedback: '✅ ¡Perfecto! Profesionalismo en negociación B2B.',
                isCorrect: true,
              },
              {
                id: 'opt-11',
                text: '💰 "Acepto todo, firmamos ya"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 0,
                  nextNodeId: 'rushed-agreement',
                },
                feedback: '⚠️ Muy apresurado. Debes analizar términos.',
                isCorrect: false,
              },
            ],
          },
          {
            id: 'honest-proposal',
            character: {
              name: 'Lic. Martín Rojas',
              avatar: '👨‍💼',
              type: 'cliente',
              trait: 'amigable',
            },
            message: 'Me gusta tu transparencia. ¿Qué tal empezamos con 300/mes ahora, y escalamos a 500 cuando estés listo?',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-12',
                text: '🤝 "Perfecto, preparemos contrato con esos términos"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 1,
                  nextNodeId: 'negotiate-terms',
                },
                feedback: '✅ Excelente, avanzas a detalles contractuales.',
                isCorrect: true,
              },
            ],
          },
          {
            id: 'request-commitment',
            character: {
              name: 'Lic. Martín Rojas',
              avatar: '👨‍💼',
              type: 'cliente',
              trait: 'honesto',
            },
            message: 'Razonable. Si firmas contrato 12 meses con penalización por incumplimiento, yo también lo firmo. ¿Aceptas?',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-13',
                text: '📝 "Sí, con términos justos para ambos"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: 2,
                  nextNodeId: 'negotiate-terms',
                },
                feedback: '✅ ¡Perfecto! Compromiso mutuo balanceado.',
                isCorrect: true,
              },
              {
                id: 'opt-14',
                text: '😰 "Penalización me asusta"',
                consequences: {
                  balanceChange: 0,
                  reputationChange: -1,
                  nextNodeId: 'LOSE',
                },
                feedback: '❌ Mostraste inseguridad. Perdiste credibilidad.',
                isCorrect: false,
              },
            ],
          },
          {
            id: 'formal-proposal',
            character: {
              name: 'Sistema',
              avatar: '📊',
              type: 'cliente',
              trait: 'honesto',
            },
            message: 'Preparas propuesta: 300 unidades/mes, crédito 30 días, descuento 20% por volumen, contrato 12 meses. Margen: $8,000/mes.',
            isPlayerTurn: true,
            options: [
              {
                id: 'opt-15',
                text: '📧 "Envío propuesta y agendo reunión"',
                consequences: {
                  balanceChange: 5000,
                  reputationChange: 2,
                  nextNodeId: 'WIN',
                },
                feedback: '✅ ¡Excelente! Proceso profesional de venta B2B.',
                isCorrect: true,
              },
            ],
          },
          {
            id: 'rushed-agreement',
            character: {
              name: 'Lic. Martín Rojas',
              avatar: '👨‍💼',
              type: 'cliente',
              trait: 'confundido',
            },
            message: 'Espera... ¿no quieres revisar términos? Eso no inspira confianza. Necesito proveedor profesional.',
            isPlayerTurn: false,
            autoAdvanceDelay: 2000,
            options: [
              {
                id: 'opt-16',
                text: 'Fin',
                consequences: {
                  balanceChange: 0,
                  reputationChange: -1,
                  nextNodeId: 'LOSE',
                },
                feedback: '',
              },
            ],
          },
          {
            id: 'negotiate-terms',
            character: {
              name: 'Lic. Martín Rojas',
              avatar: '👨‍💼',
              type: 'cliente',
              trait: 'amigable',
            },
            message: 'Excelente. Te envío borrador de contrato. Revísalo con tu abogado. Espero podamos empezar próximo mes.',
            isPlayerTurn: false,
            autoAdvanceDelay: 2000,
            options: [
              {
                id: 'opt-17',
                text: 'Continuar',
                consequences: {
                  balanceChange: 6000,
                  reputationChange: 0,
                  nextNodeId: 'WIN',
                },
                feedback: '',
              },
            ],
          },
        ],
        winConditions: [
          {
            type: 'balance',
            threshold: 19000,
            message: '¡Excelente! Cerraste tu primer contrato corporativo exitosamente.',
          },
        ],
        loseConditions: [
          {
            type: 'reputation',
            threshold: 2,
            message: 'Tu falta de profesionalismo en negociación B2B te costó el contrato.',
          },
        ],
      }),
      game_type: GameType.scenario,
      age_group: AgeGroup.adult,
      difficulty_level: 3,
      max_score: 3000,
    },
  });
  console.log(`✓ Created: ${clienteCorporativo.title}`);

  console.log('\n✨ Scenario games seeding complete!');
  console.log('\n📊 Summary:');
  console.log(`  • 10 Scenario Games created`);
  console.log(`  • Topics: Negotiation, Fraud Detection, Business Ethics, Consultative Sales, Time Management, Customer Fraud Protection, Customer Loyalty, Influencer Marketing, Customer Service Excellence, B2B Sales`);
  console.log(`  • Difficulty Levels: 1-3`);
  console.log(`  • Age Groups: Youth, Adult, Both`);

  // Return created games array
  return [
    clienteExigente,
    estafaProveedor,
    socioDeshonesto,
    clienteIndeciso,
    clienteRapido,
    clienteEstafador,
    clienteRegular,
    influencerFalso,
    problemaLegitimo,
    clienteCorporativo,
  ];
}
