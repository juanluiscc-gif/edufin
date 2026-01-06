# Scenario-Simulation Game - Arquitectura y Especificaciones

## Visión General

El juego **Scenario-Simulation** es un simulador de comercio digital donde el jugador gestiona un negocio respondiendo a mensajes de clientes y proveedores en tiempo real. El juego combina gestión de inventario, presupuesto, reputación y toma de decisiones bajo presión.

**Fecha de creación:** 2026-01-06
**Última actualización:** 2026-01-06

---

## Objetivos del Juego

- Mantener el negocio rentable gestionando presupuesto e inventario
- Alcanzar y mantener alta reputación (5 estrellas)
- Detectar fraudes y engaños de clientes/proveedores
- Progresar a través de niveles de dificultad creciente
- Manejar múltiples conversaciones simultáneas en niveles avanzados

---

## Mecánicas Principales

### 1. Sistema de Mensajes

**Funcionamiento:**
- Los mensajes llegan como **notificaciones** (sin abrir)
- El jugador debe hacer **click** para abrir el mensaje
- Al abrir un mensaje, los demás se **minimizan** (quedan visibles pero inactivos)
- Solo un mensaje puede estar activo a la vez
- Los mensajes no desaparecen hasta ser completados

**Estados del mensaje:**
```
pending → active → minimized → completed
```

**Progresión de dificultad:**
- **Nivel 1:** 1 mensaje a la vez, intervalos largos
- **Nivel 2:** 2-3 mensajes, intervalos medianos
- **Nivel 3+:** 4-5 mensajes simultáneos, intervalos cortos

### 2. Sistema de Inventario

**Estructura:**
- **Niveles de inventario:** Alto (>10), Medio (3-10), Bajo (≤2)
- **Inventario inicial:** 10 unidades (medio)
- **Persistencia:** El inventario se mantiene entre partidas
- **Alerta:** Cuando inventario ≤ 2, aparece notificación "Inventario bajo, hacer pedido"

**Pedidos a proveedores:**
| Cantidad | Costo | Ganancia por unidad vendida |
|----------|-------|------------------------------|
| 10 unidades | $100 | ~$15-20 |
| 50 unidades | $150 | ~$18-23 |
| 100 unidades | $200 | ~$20-25 |

**Proveedores según nivel:**
- **Nivel 1:** Proveedores confiables, entregas rápidas
- **Nivel 2:** Aparecen proveedores que ofrecen "gangas" sospechosas
- **Nivel 3+:** Proveedores falsos, productos defectuosos, engaños

### 3. Sistema de Niveles

**Progresión automática basada en presupuesto:**

| Nivel | Rango de Presupuesto | Dificultad | Características |
|-------|----------------------|------------|-----------------|
| **1** | $100 - $500 | Fácil | 1 mensaje, clientes normales, proveedores confiables |
| **2** | $500 - $1,000 | Media | 2-3 mensajes, clientes urgentes, proveedores variados |
| **3** | $1,000 - $2,500 | Difícil | 3-4 mensajes, fraudes ocasionales, temporizador activo |
| **4+** | $2,500+ | Muy Difícil | 4-5 mensajes simultáneos, fraudes frecuentes, proveedores falsos |

**Desbloqueo:** Automático al alcanzar el umbral de presupuesto

### 4. Sistema de Presupuesto y Reputación

**Presupuesto inicial:** $100

**Impacto de decisiones:**
- Cliente satisfecho: +$20 a +$100 (según producto)
- Cliente insatisfecho: -$10 a -$30
- Fraude no detectado: **-30% a -40% del presupuesto total**
- Proveedor engañoso (productos defectuosos): -$50 + pérdida de reputación

**Reputación (0-5 estrellas):**
- Trato excelente: +1 estrella
- Trato normal: sin cambio
- Trato rudo/descortés: -1 a -2 estrellas
- Producto defectuoso vendido: -2 estrellas
- Fraude detectado correctamente: +1 estrella

### 5. Tipos de Conversaciones

**Clientes:**
- **Normales:** Pedidos estándar, sin complicaciones
- **Urgentes:** Necesitan entrega rápida (bonus por velocidad)
- **Indecisos:** Hacen muchas preguntas, requieren paciencia
- **Exigentes:** Piden descuentos, negocian agresivamente
- **Fraudulentos (nivel 3+):** Intentan estafar con pagos falsos

**Proveedores:**
- **Confiables:** Entregas rápidas, productos de calidad
- **Lentos:** Entregas demoradas pero económicos
- **Engañosos (nivel 3+):** Prometen calidad pero envían productos defectuosos
- **Falsos (nivel 4+):** Toman el dinero y desaparecen

### 6. Condiciones de Fin de Partida

**Duración de una jornada:**
- **2 minutos de tiempo real** O **10 conversaciones completadas**
- Lo que ocurra primero

**Game Over (derrota):**
1. **Presupuesto = $0** → "Te has quedado sin fondos"
2. **Reputación = 0 estrellas** → Mensaje del "GOBIERNO" con citatorio (cierre del negocio)

**Victoria:**
- Completar la jornada con presupuesto positivo y reputación ≥ 3 estrellas

---

## Arquitectura Técnica

### Componentes Principales

```
UnifiedScenarioGame.tsx (componente principal)
├── MessageInbox.tsx (bandeja de mensajes entrantes)
├── ActiveChatWindow.tsx (ventana de chat activo)
├── MinimizedChatBar.tsx (barra inferior con chats minimizados)
├── InventoryAlert.tsx (alerta de inventario bajo)
├── SupplierDialog.tsx (modal para pedidos a proveedores)
├── ScenarioStats.tsx (panel de estadísticas: $, ⭐, inventario, tiempo)
└── GameOverScreen.tsx (pantalla de fin de juego)
```

### Utilidades y Lógica

```typescript
// conversationManager.ts
- selectConversationByLevel(level: number): Conversation[]
- getSimultaneousMessageCount(level: number): number
- getMessageIntervalTime(level: number): number

// levelSystem.ts
- getCurrentLevel(balance: number): number
- getLevelThreshold(level: number): number
- shouldLevelUp(currentBalance: number, currentLevel: number): boolean

// inventoryManager.ts
- checkInventoryLevel(quantity: number): 'high' | 'medium' | 'low'
- shouldShowAlert(quantity: number): boolean
- processSupplierOrder(quantity: number, balance: number): OrderResult

// gameSession.ts
- startNewSession(): GameSession
- endSession(session: GameSession): SessionResult
- saveProgress(session: GameSession): void
```

### Base de Datos (Prisma)

**Nueva tabla: PlayerInventory**
```prisma
model PlayerInventory {
  id           String   @id @default(cuid())
  user_id      String   @unique
  user         User     @relation(fields: [user_id], references: [id])
  quantity     Int      @default(10)
  last_updated DateTime @updatedAt

  @@map("player_inventory")
}
```

**Nueva tabla: GameSession**
```prisma
model GameSession {
  id                      String   @id @default(cuid())
  user_id                 String
  user                    User     @relation(fields: [user_id], references: [id])
  current_level           Int      @default(1)
  balance                 Int      @default(100)
  reputation              Int      @default(3)
  inventory               Int      @default(10)
  conversations_completed Int      @default(0)
  session_start           DateTime @default(now())
  session_end             DateTime?
  status                  String   @default("active") // active, completed, game_over

  @@map("game_sessions")
}
```

**Modificación: ContentTranslation**
- Los 10 scenarios actuales se almacenan como conversaciones individuales
- Cada conversación tiene `difficulty_level` (1-4)
- Se agrega campo `conversation_type` ('client_normal', 'client_urgent', 'client_fraud', 'supplier_reliable', 'supplier_fake', etc.)

### Estados del Juego

```typescript
interface GameState {
  // Persistente (guardado en DB)
  balance: number;
  reputation: number; // 0-5
  inventory: number;
  currentLevel: number;

  // Sesión actual
  activeMessages: Message[]; // Mensajes activos/minimizados
  completedConversations: number;
  sessionStartTime: number;
  elapsedTime: number;

  // UI
  activeChatId: string | null;
  minimizedChats: string[];
  showInventoryAlert: boolean;
  showSupplierDialog: boolean;
}

interface Message {
  id: string;
  type: 'client' | 'supplier' | 'government';
  status: 'pending' | 'active' | 'minimized' | 'completed';
  conversationData: ConversationTree;
  receivedAt: number;
}
```

---

## Flujo del Juego

### 1. Inicio de Sesión
```
1. Cargar inventario del jugador desde DB
2. Cargar nivel actual basado en balance histórico
3. Iniciar con balance = último balance guardado O $100 si es primera vez
4. Reputación = 3 estrellas (siempre reinicia)
5. Temporizador: 2 minutos
```

### 2. Durante la Partida
```
Loop principal:
  1. Generar nuevo mensaje basado en nivel actual
  2. Añadir a inbox como 'pending'
  3. Esperar click del jugador → status = 'active'
  4. Mostrar conversación en ventana principal
  5. Jugador responde → Aplicar consecuencias
  6. Actualizar balance, reputación, inventario
  7. Marcar mensaje como 'completed'
  8. Verificar condiciones de nivel up
  9. Verificar inventario bajo → Mostrar alerta
  10. Verificar game over
  11. Repetir hasta fin de jornada
```

### 3. Sistema de Múltiples Mensajes
```
Nivel 1: Esperar a que mensaje actual se complete antes de enviar siguiente
Nivel 2+: Enviar nuevo mensaje cada X segundos, independiente de si hay mensajes activos
  - Nivel 2: Cada 40-50 segundos
  - Nivel 3: Cada 25-35 segundos
  - Nivel 4+: Cada 15-20 segundos
```

### 4. Manejo de Proveedores
```
Trigger: Inventario ≤ 2
  1. Mostrar alerta "Inventario bajo"
  2. Jugador puede ignorar O abrir diálogo de proveedores
  3. Seleccionar cantidad (10/50/100)
  4. Deducir costo del balance
  5. Añadir unidades al inventario
  6. Guardar en DB
```

### 5. Fin de Jornada
```
Condiciones:
  - Tiempo = 2 minutos, O
  - Conversaciones completadas = 10

Acciones:
  1. Detener temporizador
  2. Calcular puntuación final
  3. Guardar progreso en DB:
     - Inventario actualizado
     - Balance final
     - Nivel alcanzado
  4. Mostrar pantalla de resultados
  5. Opciones: "Jugar otra jornada" / "Volver a juegos"
```

### 6. Game Over
```
Por balance = $0:
  - Mensaje: "Te has quedado sin fondos. Tu negocio ha cerrado."
  - Reiniciar balance a $100
  - Mantener inventario
  - Bajar 1 nivel (mínimo nivel 1)

Por reputación = 0:
  - Mensaje de GOBIERNO: "Has recibido demasiadas quejas. Tu negocio está bajo investigación."
  - Reiniciar balance a $100
  - Reiniciar reputación a 3 estrellas
  - Bajar 2 niveles (mínimo nivel 1)
```

---

## Pool de Conversaciones

### Organización Actual → Nueva Estructura

**Estado actual:** 10 juegos scenario separados
- El Cliente Indeciso
- El Problema Legítimo
- La Estafa del Proveedor
- El Cliente Rápido
- (y 6 más...)

**Nueva estructura:** Pool único organizado por nivel y tipo

```typescript
conversationPools = {
  level1: {
    clients: [
      { id: 'indeciso', type: 'client_normal', difficulty: 1 },
      { id: 'problemaLegitimo', type: 'client_normal', difficulty: 1 },
      { id: 'clienteRapido', type: 'client_urgent', difficulty: 1 },
    ],
    suppliers: [
      { id: 'proveedorConfiable1', type: 'supplier_reliable', difficulty: 1 },
      { id: 'proveedorConfiable2', type: 'supplier_reliable', difficulty: 1 },
    ]
  },
  level2: {
    clients: [
      { id: 'clienteExigente', type: 'client_demanding', difficulty: 2 },
      { id: 'clienteImpaciente', type: 'client_urgent', difficulty: 2 },
    ],
    suppliers: [
      { id: 'proveedorLento', type: 'supplier_slow', difficulty: 2 },
      { id: 'proveedorBarato', type: 'supplier_cheap', difficulty: 2 },
    ]
  },
  level3: {
    clients: [
      { id: 'intentoEstafa', type: 'client_fraud', difficulty: 3 },
      { id: 'clienteAgresivo', type: 'client_aggressive', difficulty: 3 },
    ],
    suppliers: [
      { id: 'estafaProveedor', type: 'supplier_fake', difficulty: 3 },
      { id: 'productosDefectuosos', type: 'supplier_defective', difficulty: 3 },
    ]
  },
  level4: {
    clients: [
      { id: 'fraudeSofisticado', type: 'client_fraud_advanced', difficulty: 4 },
      { id: 'multipleQuejas', type: 'client_complainer', difficulty: 4 },
    ],
    suppliers: [
      { id: 'proveedorFantasma', type: 'supplier_ghost', difficulty: 4 },
      { id: 'roboIdentidad', type: 'supplier_imposter', difficulty: 4 },
    ]
  }
}
```

**Selección de conversación:**
```typescript
function selectNextConversation(level: number, inventory: number): Conversation {
  // Si inventario bajo, 30% probabilidad de que sea proveedor
  if (inventory <= 2 && Math.random() < 0.3) {
    return selectRandomSupplier(level);
  }

  // Sino, cliente
  return selectRandomClient(level);
}
```

---

## Cálculo de Puntuación

```typescript
function calculateScore(session: GameSession): number {
  const balanceDelta = session.balance - 100; // Ganancia neta
  const balanceScore = balanceDelta * 10;

  const reputationScore = session.reputation * 200;

  const conversationScore = session.conversations_completed * 50;

  const timeTaken = (session.session_end - session.session_start) / 1000;
  const timePenalty = timeTaken; // 1 punto por segundo

  const levelBonus = session.current_level * 100;

  return Math.max(0, balanceScore + reputationScore + conversationScore + levelBonus - timePenalty);
}
```

---

## Interfaz de Usuario

### Layout Principal

```
┌─────────────────────────────────────────────────────────────┐
│  📊 Stats Panel (izquierda)                                 │
│  - Presupuesto: $XXX                                        │
│  - Reputación: ⭐⭐⭐⭐⭐                                      │
│  - Inventario: XX unidades [Alerta si ≤2]                   │
│  - Nivel: X                                                 │
│  - Tiempo: 1:45                                             │
│  - Conversaciones: 3/10                                     │
├─────────────────────────────────────────────────────────────┤
│  📬 Message Inbox (centro-arriba)                           │
│  [Nuevo mensaje de María] [Nuevo de Juan] [Proveedor ABC]  │
├─────────────────────────────────────────────────────────────┤
│  💬 Active Chat Window (centro)                             │
│  [Conversación activa con ventana de chat]                  │
├─────────────────────────────────────────────────────────────┤
│  📌 Minimized Chats Bar (abajo)                             │
│  [Chat 1 minimizado] [Chat 2 minimizado] [...]              │
└─────────────────────────────────────────────────────────────┘
```

### Componentes Visuales

**MessageNotification (pending):**
```
┌────────────────────────────┐
│ 👤 María González          │
│ "Necesito 50 unidades..."  │
│ [ABRIR]                    │
└────────────────────────────┘
```

**ActiveChatWindow:**
```
┌─────────────────────────────────────────┐
│ 👤 María González - Cliente             │
│ ─────────────────────────────────────── │
│ María: "Necesito 50 unidades urgente"   │
│ Tú: [Opciones de respuesta]             │
│   ○ "Sí, las tengo disponibles"         │
│   ○ "Necesito 2 días para preparar"     │
│   ○ "Solo tengo 30 unidades"            │
└─────────────────────────────────────────┘
```

**MinimizedChat:**
```
[👤 Juan Pérez] [👤 Ana López] [📦 Proveedor X]
     ↑ Click para reactivar
```

**InventoryAlert:**
```
┌──────────────────────────────────┐
│ ⚠️ INVENTARIO BAJO              │
│ Solo te quedan 2 unidades        │
│ [Hacer pedido a proveedor]       │
│ [Ignorar por ahora]              │
└──────────────────────────────────┘
```

---

## Próximos Pasos de Implementación

### Fase 1: Base de Datos y Backend
1. ✅ Crear modelos Prisma (PlayerInventory, GameSession)
2. ✅ Migrar base de datos
3. ✅ API endpoints:
   - GET /api/inventory/:userId
   - POST /api/inventory/order
   - POST /api/game-session/start
   - POST /api/game-session/end
   - GET /api/conversations/by-level/:level

### Fase 2: Componentes Core
4. ✅ MessageInbox.tsx
5. ✅ ActiveChatWindow.tsx
6. ✅ MinimizedChatBar.tsx
7. ✅ InventoryAlert.tsx
8. ✅ SupplierDialog.tsx

### Fase 3: Lógica de Juego
9. ✅ conversationManager.ts
10. ✅ levelSystem.ts
11. ✅ inventoryManager.ts
12. ✅ UnifiedScenarioGame.tsx (componente principal)

### Fase 4: Consolidación de Contenido
13. ✅ Reorganizar 10 scenarios en conversationPools
14. ✅ Agregar nuevas conversaciones para niveles 3-4
15. ✅ Crear conversaciones de proveedores

### Fase 5: Testing y Balanceo
16. ✅ Probar progresión de niveles
17. ✅ Ajustar tiempos de mensajes
18. ✅ Balancear economía (costos, ganancias, penalidades)
19. ✅ Verificar persistencia de inventario

### Fase 6: Pulido
20. ✅ Animaciones y transiciones
21. ✅ Sonidos (opcional)
22. ✅ Tutorial interactivo para nivel 1
23. ✅ Traducciones a 9 idiomas

---

## Notas Técnicas

### Consideraciones de Rendimiento
- Los mensajes pendientes se almacenan en estado local (no DB)
- Solo se guarda en DB al finalizar sesión
- Inventario se actualiza en DB en tiempo real (cada pedido)

### Accesibilidad
- Usar temporizador visual (barra de progreso)
- Alertas sonoras opcionales para mensajes urgentes
- Modo de pausa disponible (detiene temporizador)

### Seguridad
- Validar todas las transacciones en servidor
- Prevenir manipulación de balance desde cliente
- Verificar límites de inventario y balance antes de procesar

### Escalabilidad Futura
- Pool de conversaciones puede crecer indefinidamente
- Niveles pueden extenderse más allá de 4
- Posibilidad de agregar "eventos especiales" (días festivos, promociones)
- Sistema de logros y badges

---

## Changelog

**2026-01-06 - v1.0 (Diseño Inicial)**
- Diseño completo de arquitectura
- Definición de mecánicas de juego
- Especificación de base de datos
- Plan de implementación por fases

---

**Documento vivo - Actualizar con cada cambio significativo al sistema**
