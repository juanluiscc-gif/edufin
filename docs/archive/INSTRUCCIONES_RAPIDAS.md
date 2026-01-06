# 🚀 Instrucciones Rápidas - Traducción Automática

## ✅ ¿Qué hace esto?

Traduce **TODAS** las lecciones y juegos de tu app del inglés al español automáticamente usando IA.

## 📝 Pasos (5 minutos de configuración + 20 minutos de ejecución)

### 1️⃣ Instalar dependencias
```bash
cd /workspace/cmjxrs873000ziloodjgwbxk0/edufin
npm install
```

### 2️⃣ Obtener API key de Anthropic
1. Ve a: https://console.anthropic.com/
2. Crea cuenta o inicia sesión
3. Settings → API Keys → Create Key
4. Copia la clave (empieza con `sk-ant-...`)

### 3️⃣ Configurar la clave
```bash
export ANTHROPIC_API_KEY="sk-ant-api03-tu-clave-aqui"
```

### 4️⃣ (OPCIONAL) Probar con 1 lección
```bash
npm run translate:test
```

Esto traduce solo la primera lección para verificar que todo funciona.

### 5️⃣ Traducir TODO
```bash
npm run translate
```

Esto tomará 15-30 minutos y generará:
- `prisma/migration_spanish_translation.sql` (SQL para ejecutar)
- `prisma/translation_log.json` (log de todas las traducciones)

### 6️⃣ Ejecutar SQL en Neon
1. Abre: https://console.neon.tech/
2. Selecciona tu proyecto y base de datos
3. Ve a "SQL Editor"
4. Abre el archivo `prisma/migration_spanish_translation.sql`
5. Copia TODO el contenido
6. Pega en el SQL Editor de Neon
7. Click en **RUN**
8. Espera a que termine (debería ser rápido)

### 7️⃣ ¡Listo! Verifica
```bash
npm run dev
```

Ve a: http://localhost:3000/es

Abre cualquier lección y verás que TODO está en español:
- Contenido de las secciones
- Preguntas del quiz
- Respuestas
- Explicaciones

## 💰 Costo

Aproximadamente $3-4 USD por traducir todo.

## ⏱️ Tiempo

- Configuración: 5 minutos
- Ejecución del script: 15-30 minutos
- Aplicar en Neon: 1-2 minutos
- **Total: ~20-35 minutos**

## 📊 ¿Qué traduce exactamente?

- ✅ **18 lecciones completas:**
  - Todas las secciones (título y contenido markdown)
  - Todas las preguntas de quiz
  - Todas las opciones de respuesta
  - Todas las explicaciones

- ✅ **Todos los juegos:**
  - Instrucciones
  - Preguntas
  - Opciones
  - Explicaciones

- ✅ **Total:** ~320-410 cadenas de texto

## ❓ Problemas?

### Error: "ANTHROPIC_API_KEY not set"
**Solución:**
```bash
export ANTHROPIC_API_KEY="tu-clave-aqui"
```

### Error: "Rate limit exceeded"
**Solución:** Espera 5 minutos y vuelve a ejecutar `npm run translate`

### Las traducciones se ven raras
**Solución:** Revisa `prisma/translation_log.json` para ver cada traducción. Si algo está mal, puedes editar el SQL manualmente antes de ejecutarlo en Neon.

## 📚 Más información

Para documentación completa, troubleshooting detallado, y detalles técnicos:
- `scripts/README_TRANSLATION.md` (documentación técnica)
- `TRADUCCION_COMPLETA.md` (resumen completo del sistema)

## 🎉 Resultado

Después de estos pasos, tu app estará 100% en español cuando la visites en `/es`.

No necesitas cambiar ningún código - ¡todo funcionará automáticamente!
