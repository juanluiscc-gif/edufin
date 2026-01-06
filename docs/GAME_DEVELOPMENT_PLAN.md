# 🎮 Plan de Desarrollo de Juegos - EduFin

## 📋 Resumen Ejecutivo

Este documento describe la estrategia técnica para implementar los 4 tipos de juegos educativos financieros en la plataforma EduFin.

**Fecha de inicio:** Enero 2025
**Stack base:** Next.js 14 + React + TypeScript + Tailwind CSS + Prisma + PostgreSQL

---

## 🎯 Tipos de Juegos Planeados

| Tipo | Estado | Complejidad | Tiempo Estimado |
|------|--------|-------------|-----------------|
| **Quiz** | ✅ Completado | Baja | N/A |
| **Scenario** | 🔨 En desarrollo | Baja | 1 semana |
| **Puzzle** | ⏳ Pendiente | Media | 3-5 días |
| **Simulation** | ⏳ Pendiente | Alta | 2-3 semanas |

---

## 🏗️ Arquitectura Técnica

### Stack Tecnológico

```
CAPA BASE (Existente)
├── Next.js 14 + React 18
├── TypeScript
├── Tailwind CSS
├── Prisma ORM
└── PostgreSQL (Neon)

LIBRERÍAS PARA JUEGOS (A agregar)
├── Framer Motion → Animaciones fluidas
├── @dnd-kit → Drag & drop mobile-friendly
├── Recharts → Gráficos financieros
└── react-konva → Canvas (opcional para match-3)
```

### Criterios de Selección

**¿Por qué NO usamos un game engine completo (Phaser, Unity)?**

✅ **Ventajas del enfoque modular:**
- Mantiene el stack actual (React/Next.js)
- TypeScript nativo en todo el código
- Bundle más ligero (~300 KB vs ~700 KB)
- SEO-friendly con Next.js
- Mobile-first por diseño
- Curva de aprendizaje menor
- Fácil para otros desarrolladores React

❌ **Desventajas de game engines:**
- Requieren aprender API propietaria
- Bundle JavaScript pesado
- No se integran naturalmente con Next.js
- Overkill para juegos 2D simples
- Problemas con SSR (Server Side Rendering)

---

## 🎮 Especificaciones por Juego

### 1. QUIZ ✅ (Completado)

**Estado:** Implementado y funcional

**Tecnología:**
- React puro
- Tailwind CSS
- Sistema de scoring con bonus de tiempo

**Características:**
- 10 preguntas por quiz
- Sistema de puntos: 100 base + bonus tiempo (máx 50)
- Feedback inmediato con explicaciones
- Progreso visual
- Temporizador

**Archivos clave:**
- `src/components/games/QuizGame.tsx`
- `prisma/seed_games.ts`

---

### 2. SCENARIO (Chat Compra-Venta) 🔨

**Estado:** En desarrollo (Fase 1)

**Concepto:**
Simulación de chat donde el jugador participa en conversaciones de negocio. Aprenden a:
- Detectar estafas y fraudes
- Negociar términos justos
- Manejar clientes difíciles
- Tomar decisiones bajo presión
- Mantener balance entre ganancias y reputación

**Tecnología:**
```typescript
Librerías:
- React puro + TypeScript
- Tailwind CSS
- Framer Motion (animaciones de mensajes)
- react-markdown (opcional, formatear mensajes)

Peso: ~80 KB adicionales
Complejidad: BAJA
```

**Mecánicas de Juego:**

1. **Sistema de Recursos:**
   - 💰 Balance de dinero (comienza en $5,000)
   - ⭐ Reputación (1-5 estrellas)
   - ⏰ Tiempo límite por decisión (opcional)

2. **Tipos de Escenarios:**
   - 🚩 Cliente Exigente → Negociación
   - ⚠️ Estafa de Proveedor → Detección de fraudes
   - 💎 Oferta Sospechosa → Pensamiento crítico
   - 😕 Cliente Confundido → Servicio al cliente
   - 🔥 Emergencia Financiera → Toma de decisiones rápidas

3. **Sistema de Decisiones:**
   - Cada mensaje tiene 3-4 opciones de respuesta
   - Cada opción afecta: dinero, reputación, progreso
   - Consecuencias inmediatas + a largo plazo
   - Final múltiple basado en decisiones acumuladas

**Estructura de Datos:**

```typescript
interface ScenarioGame {
  id: string;
  title: string;
  description: {
    instructions: string;
    initialState: {
      balance: number;
      reputation: number;
    };
    conversationTree: ConversationNode[];
    winConditions: WinCondition[];
    loseConditions: LoseCondition[];
  };
}

interface ConversationNode {
  id: string;
  character: {
    name: string;
    avatar: string;
    type: 'cliente' | 'proveedor' | 'socio';
    trait: 'exigente' | 'estafador' | 'honesto' | 'confundido';
  };
  message: string;
  options: ResponseOption[];
}

interface ResponseOption {
  id: string;
  text: string;
  consequences: {
    balanceChange: number;
    reputationChange: number;
    nextNodeId: string | 'END';
  };
  feedback: string;
}
```

**Interfaz de Usuario:**

```
┌────────────────────────────────────┐
│ 💬 Chat con "María González"       │
│    🚩 Cliente Exigente             │
├────────────────────────────────────┤
│                                    │
│  👤 María: Necesito 100 unidades  │
│           con 50% de descuento    │
│           para HOY mismo.         │
│                        [10:23 AM] │
│                                    │
│                   Tú: Escribiendo...│
│                                    │
│  ┌─────────────────────────────┐  │
│  │ ¿Cómo respondes?            │  │
│  │                             │  │
│  │ A) ✅ Acepto el descuento  │  │
│  │    💰 -$500 | ⭐ +1        │  │
│  │                             │  │
│  │ B) 🤝 Ofrezco 20% descuento│  │
│  │    💰 +$200 | ⭐ +2        │  │
│  │                             │  │
│  │ C) ❌ Rechazo educadamente │  │
│  │    💰 $0 | ⭐ 0            │  │
│  │                             │  │
│  │ D) ⏰ Pido tiempo           │  │
│  │    💰 $0 | ⭐ +1           │  │
│  └─────────────────────────────┘  │
│                                    │
│ 💰 Balance: $5,000                │
│ ⭐ Reputación: ⭐⭐⭐⭐☆          │
│ 📊 Progreso: 3/8 decisiones       │
└────────────────────────────────────┘
```

**Ejemplos de Escenarios:**

1. **"El Cliente Imposible"**
   - Cliente pide descuentos extremos + entrega urgente
   - Aprenden: No todas las ventas son buenas ventas

2. **"La Estafa del Proveedor Falso"**
   - Proveedor ofrece "precio increíble" por adelantado
   - Red flags: Email genérico, prisa, pago adelantado
   - Aprenden: Identificar señales de fraude

3. **"El Socio Deshonesto"**
   - Socio propone modificar libros contables
   - Aprenden: Ética empresarial, consecuencias legales

4. **"La Oportunidad de Oro"**
   - Cliente grande con oferta legítima pero arriesgada
   - Aprenden: Análisis riesgo-beneficio

5. **"Crisis de Flujo de Caja"**
   - Múltiples clientes piden crédito simultáneamente
   - Aprenden: Gestión de liquidez

**Sistema de Scoring:**

```typescript
Score = (Balance Final - Balance Inicial) * 10
        + (Reputación * 200)
        + (Decisiones Correctas * 50)
        - (Tiempo Total en segundos)

Ejemplo:
Balance: $5,000 → $6,500 = +1,500 * 10 = 15,000 pts
Reputación: 5⭐ = 5 * 200 = 1,000 pts
Decisiones correctas: 6/8 = 300 pts
Tiempo: 180 segundos = -180 pts
Total: 16,120 puntos
```

**Archivos a Crear:**

```
src/components/games/
├── ScenarioGame.tsx          (Componente principal)
├── ChatMessage.tsx           (Mensaje individual)
├── ResponseOptions.tsx       (Opciones de respuesta)
├── ScenarioStats.tsx         (Balance/Reputación)
└── ConversationEnd.tsx       (Pantalla final)

prisma/
└── seed_scenarios.ts         (Datos de escenarios)
```

---

### 3. PUZZLE (Sudoku Financiero) ⏳

**Estado:** Pendiente (Fase 2)

**Concepto:**
Sudoku 9x9 donde en lugar de números 1-9, se usan categorías financieras representadas por emojis.

**Tecnología:**
```typescript
Librerías:
- React puro (CSS Grid)
- Framer Motion (animaciones)

Peso: ~50 KB
Complejidad: BAJA-MEDIA
```

**Variantes:**

**Opción 1: Categorías de Gastos**
```
Símbolos a usar:
🏠 Vivienda    💡 Servicios   🚗 Transporte
🍔 Comida      📱 Teléfono    💊 Salud
🎮 Diversión   👕 Ropa        💰 Ahorro

Regla: Igual que sudoku tradicional
- Cada fila: 9 categorías sin repetir
- Cada columna: 9 categorías sin repetir
- Cada cuadro 3x3: 9 categorías sin repetir
```

**Opción 2: Prioridades Financieras**
```
Números 1-9 representan prioridad:
1-3: Urgente (necesidades básicas)
4-6: Importante (calidad de vida)
7-9: Opcional (lujos, deseos)

El jugador aprende a priorizar gastos
```

**Mecánicas:**
- 3 niveles de dificultad (fácil: 40 celdas llenas, difícil: 25)
- Hints disponibles (máx 3 por juego)
- Sistema de scoring: Tiempo + errores
- Validación en tiempo real
- Modo "enseñanza" que explica por qué algo está mal

**Archivos a Crear:**
```
src/components/games/
├── SudokuGame.tsx
├── SudokuGrid.tsx
├── SudokuCell.tsx
└── SudokuUtils.ts (generador, validador)
```

---

### 4. SIMULATION (Administrar Tienda/Presupuesto) ⏳

**Estado:** Pendiente (Fase 3)

**Concepto:**
El jugador administra una pequeña tienda. Debe comprar inventario, establecer precios, atender clientes y mantener el negocio rentable.

**Tecnología:**
```typescript
Librerías:
- @dnd-kit/core + @dnd-kit/sortable (Drag & drop)
- Recharts (Gráficos)
- Framer Motion (Animaciones)

Peso: ~150 KB
Complejidad: ALTA
```

**Mecánicas de Juego:**

1. **Gestión de Inventario:**
   - Arrastrar productos desde catálogo a tienda
   - Comprar por mayor = mejor precio unitario
   - Productos perecederos vs no perecederos
   - Costo de almacenamiento

2. **Fijación de Precios:**
   - Precio muy bajo = pierdes dinero
   - Precio muy alto = no venden
   - Competencia afecta demanda
   - Promociones estratégicas

3. **Atención de Clientes:**
   - Clientes llegan con patrones de demanda
   - Satisfacción afecta reputación
   - Stock out = clientes perdidos
   - Devoluciones y garantías

4. **Finanzas:**
   - Balance mensual
   - Gastos fijos (renta, servicios)
   - Impuestos
   - Reinversión vs ganancias

**Interfaz:**

```
┌─────────────────────────────────────────────┐
│ 🏪 Mi Tiendita - Mes 2                     │
│ 💰 Balance: $3,450 | 📊 Ganancia: +$450   │
├─────────────────────────────────────────────┤
│                                             │
│ CATÁLOGO (Arrastra a tu tienda)            │
│ ┌─────┬─────┬─────┬─────┐                 │
│ │🍎 $2│🥛$3 │🍞$1 │🥚$4 │                 │
│ └─────┴─────┴─────┴─────┘                 │
│                                             │
│ TU TIENDA                                   │
│ ┌────────────────────────┐                 │
│ │ 🍎 Manzanas            │                 │
│ │ Stock: 50 | Precio: $3 │ [+][-] [🗑️]   │
│ │ Vendidas hoy: 12       │                 │
│ ├────────────────────────┤                 │
│ │ [Arrastra aquí]        │                 │
│ └────────────────────────┘                 │
│                                             │
│ CLIENTES EN ESPERA: 👤👤👤                │
│                                             │
│ ESTADÍSTICAS                                │
│ [Gráfico de ventas últimos 7 días]        │
│                                             │
└─────────────────────────────────────────────┘
```

**Sistema de Eventos Aleatorios:**
- 📉 Crisis económica (demanda baja)
- 🎉 Festival local (demanda alta)
- 🚚 Retraso de proveedor
- 💰 Cliente corporativo (orden grande)
- 🔥 Competencia baja precios

**Archivos a Crear:**
```
src/components/games/
├── SimulationGame.tsx
├── Inventory.tsx
├── ProductCard.tsx
├── CustomerQueue.tsx
├── SalesChart.tsx
└── EventNotification.tsx
```

---

## 📦 Instalación de Dependencias

```bash
# Ejecutar en /edufin

# Para todos los juegos (animaciones básicas)
npm install framer-motion

# Para SCENARIO (opcional, markdown en mensajes)
npm install react-markdown remark-gfm

# Para SIMULATION (drag & drop + gráficos)
npm install @dnd-kit/core @dnd-kit/sortable @dnd-kit/utilities
npm install recharts

# Para PUZZLE avanzado (solo si hacemos match-3)
npm install konva react-konva
```

---

## 🗓️ Cronograma de Desarrollo

### Fase 1: Bosquejos Funcionales (3 semanas)

**Semana 1:** SCENARIO
- [ ] Día 1-2: Diseño estructura de datos y componentes
- [ ] Día 3-4: Implementar componente ChatMessage y ResponseOptions
- [ ] Día 5-6: Sistema de scoring y consecuencias
- [ ] Día 7: Crear primer escenario completo

**Semana 2:** PUZZLE (Sudoku Financiero)
- [ ] Día 1-2: Generador de tableros + validador
- [ ] Día 3-4: Componentes UI (grid, cell, controls)
- [ ] Día 5: Sistema de hints y scoring
- [ ] Día 6-7: 3 niveles de dificultad

**Semana 3:** SIMULATION (Prototipo básico)
- [ ] Día 1-3: Setup drag & drop + inventario
- [ ] Día 4-5: Sistema de clientes y ventas
- [ ] Día 6-7: Gráficos básicos y balance financiero

### Fase 2: Refinamiento (4 semanas)

- Animaciones mejoradas con Framer Motion
- Balanceo de dificultad basado en testing
- 5+ escenarios por tipo de juego
- Sonidos y feedback mejorado
- Responsive design perfeccionado

### Fase 3: Expansión (Continua)

- Más variedad de escenarios
- Multiplayer (opcional)
- Torneos y eventos especiales
- Analytics de jugabilidad
- A/B testing de mecánicas

---

## 📊 Métricas de Éxito

**Indicadores técnicos:**
- [ ] Bundle size < 500 KB por juego
- [ ] Tiempo de carga < 2 segundos en 3G
- [ ] 0 errores de TypeScript
- [ ] 100% mobile-friendly
- [ ] Lighthouse score > 90

**Indicadores de jugabilidad:**
- [ ] Tasa de completación > 70%
- [ ] Tiempo promedio de juego: 5-15 minutos
- [ ] Re-jugabilidad (usuarios juegan 3+ veces)
- [ ] NPS (Net Promoter Score) > 50

---

## 🔒 Consideraciones de Seguridad

1. **Validación Server-Side:**
   - Scoring calculado en backend (API route)
   - Prevenir manipulación de puntajes
   - Rate limiting en endpoints

2. **Protección de Datos:**
   - No guardar información sensible en localStorage
   - Encriptar datos de progreso
   - GDPR compliance para usuarios EU

3. **Anti-Cheating:**
   - Timestamp verificado en server
   - Hashing de respuestas correctas
   - Detección de patrones anormales

---

## 📚 Recursos y Referencias

**Documentación:**
- [Next.js 14 Docs](https://nextjs.org/docs)
- [Framer Motion](https://www.framer.com/motion/)
- [dnd-kit Documentation](https://docs.dndkit.com/)
- [Recharts Examples](https://recharts.org/en-US/examples)

**Inspiración de Diseño:**
- Duolingo (gamificación)
- Khan Academy (educación)
- Among Us (chat scenarios)
- Animal Crossing (simulación simple)

**Game Design:**
- [The Art of Game Design](https://www.schellgames.com/art-of-game-design)
- [Extra Credits YouTube](https://www.youtube.com/extracredits)

---

## 🤝 Contribución

**Si otros desarrolladores se unen:**

1. **Setup inicial:**
   ```bash
   git clone [repo]
   cd edufin
   npm install
   cp .env.example .env.local
   # Configurar DATABASE_URL y ANTHROPIC_API_KEY
   npx prisma generate
   npm run dev
   ```

2. **Convenciones:**
   - TypeScript estricto (no `any`)
   - Componentes funcionales con hooks
   - Tailwind para estilos (no CSS modules)
   - Prisma para todas las queries de DB

3. **Testing:**
   - Jest para lógica de negocio
   - React Testing Library para componentes
   - Playwright para E2E

---

## 📝 Notas de Implementación

### Estructura de Archivos de Juegos

```
edufin/
├── src/
│   ├── components/
│   │   └── games/
│   │       ├── QuizGame.tsx ✅
│   │       ├── ScenarioGame.tsx 🔨
│   │       ├── SudokuGame.tsx ⏳
│   │       ├── SimulationGame.tsx ⏳
│   │       ├── GameCard.tsx
│   │       ├── ResultsModal.tsx
│   │       └── shared/
│   │           ├── GameHeader.tsx
│   │           ├── GameTimer.tsx
│   │           └── GameStats.tsx
│   ├── lib/
│   │   ├── scoring.ts
│   │   └── gameUtils.ts
│   └── app/
│       └── api/
│           └── games/
│               ├── [gameId]/route.ts
│               ├── submit/route.ts
│               └── leaderboard/route.ts
├── prisma/
│   ├── schema.prisma
│   ├── seed_games.ts ✅
│   ├── seed_scenarios.ts 🔨
│   ├── seed_sudoku.ts ⏳
│   └── seed_simulations.ts ⏳
└── docs/
    ├── GAME_DEVELOPMENT_PLAN.md (este archivo)
    └── API_GAME_ENDPOINTS.md
```

### Base de Datos

**Modelos existentes:**
```prisma
model Game {
  id               String    @id @default(uuid())
  title            String
  description      Json      // Contiene toda la lógica del juego
  game_type        GameType  // quiz, simulation, puzzle, scenario
  age_group        AgeGroup  // kid, adult, both
  difficulty_level Int       // 1-5
  max_score        Int
  created_at       DateTime  @default(now())
  updated_at       DateTime  @updatedAt
}

enum GameType {
  quiz
  simulation
  puzzle
  scenario
}
```

**No requiere cambios en schema** - El campo `description` (JSON) es flexible para cada tipo de juego.

---

## ✅ Checklist de Lanzamiento

### Pre-Desarrollo
- [x] Documento de plan técnico creado
- [x] Stack tecnológico definido
- [x] Librerías seleccionadas
- [ ] Mockups de UI aprobados

### Desarrollo SCENARIO
- [ ] Estructura de datos diseñada
- [ ] Componentes base creados
- [ ] Sistema de scoring implementado
- [ ] 5 escenarios únicos creados
- [ ] Testing en móvil completado
- [ ] Traducciones (hi, it, pt) agregadas

### Desarrollo PUZZLE
- [ ] Generador de sudoku funcional
- [ ] Validador implementado
- [ ] UI responsive
- [ ] 3 niveles de dificultad
- [ ] Sistema de hints

### Desarrollo SIMULATION
- [ ] Drag & drop funcional
- [ ] Sistema de inventario
- [ ] Clientes y ventas
- [ ] Gráficos financieros
- [ ] Eventos aleatorios

### Post-Desarrollo
- [ ] Todos los juegos en base de datos
- [ ] Scripts de traducción ejecutados
- [ ] Testing QA completo
- [ ] Documentación actualizada
- [ ] Deploy a producción
- [ ] Monitoreo de métricas

---

## 🎯 Objetivo Final

**Plataforma con 4+ juegos educativos únicos que:**
- Enseñan finanzas de forma práctica y divertida
- Funcionan perfectamente en móviles
- Son accesibles en 9 idiomas
- Mantienen a los usuarios enganchados
- Escalan para agregar más juegos fácilmente

---

**Última actualización:** Enero 6, 2025
**Versión:** 1.0
**Autor:** Equipo EduFin
