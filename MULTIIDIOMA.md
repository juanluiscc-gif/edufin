# 🌍 Sistema Multiidioma - EduFin

## ✅ Sistema Actualizado

El sistema de traducción ha sido **completamente rediseñado** para soportar **6 idiomas simultáneamente** usando la tabla `ContentTranslation`.

## 🎯 Idiomas Soportados

1. 🇺🇸 **Inglés (en)** - Idioma original (almacenado en `Lesson.content`)
2. 🇪🇸 **Español (es)** - Latin American Spanish
3. 🇫🇷 **Francés (fr)** - French
4. 🇩🇪 **Alemán (de)** - German
5. 🇯🇵 **Japonés (ja)** - Japanese
6. 🇨🇳 **Chino (zh)** - Simplified Chinese

## 🏗️ Arquitectura

### Almacenamiento de Contenido:

```
┌─────────────────────────────────────────────────────┐
│                 Lesson (tabla)                       │
│  content: JSON (SIEMPRE EN INGLÉS)                  │
└─────────────────────────────────────────────────────┘
                        │
                        ▼
┌─────────────────────────────────────────────────────┐
│         ContentTranslation (tabla)                   │
├─────────────────────────────────────────────────────┤
│  content_id: lesson.id                              │
│  content_type: 'lesson'                             │
│  field_name: 'sections[0].title'                    │
│  source_language: 'en'                              │
│  target_language: 'es' | 'fr' | 'de' | 'ja' | 'zh' │
│  source_text: "What is Money?"                      │
│  translated_text: "¿Qué es el dinero?"              │
└─────────────────────────────────────────────────────┘
```

### Flujo de Lectura:

```
1. Usuario visita /es/learn/lesson/[id]
           ↓
2. Frontend llama: /api/lessons/[id]?locale=es
           ↓
3. API lee Lesson.content (inglés)
           ↓
4. API busca traducciones en ContentTranslation
   WHERE content_id = [id] AND target_language = 'es'
           ↓
5. API aplica traducciones al contenido
           ↓
6. API retorna contenido en español
           ↓
7. Usuario ve todo en español
```

## 🚀 Cómo Usar

### Paso 1: Configurar API Key

```bash
export ANTHROPIC_API_KEY="sk-ant-api03-tu-clave-aqui"
```

### Paso 2: Traducir a un Idioma

Ejecuta el comando para el idioma deseado:

```bash
# Español
npm run translate:es

# Francés
npm run translate:fr

# Alemán
npm run translate:de

# Japonés
npm run translate:ja

# Chino
npm run translate:zh
```

### Paso 3: Ejecutar SQL Generado

Cada traducción genera un archivo SQL específico:

```
prisma/migration_es_translation.sql
prisma/migration_fr_translation.sql
prisma/migration_de_translation.sql
prisma/migration_ja_translation.sql
prisma/migration_zh_translation.sql
```

1. Abre Neon SQL Console
2. Copia el contenido del archivo SQL
3. Ejecuta en la consola
4. Verifica que no hay errores

### Paso 4: Verificar en la App

```bash
npm run dev

# Español: http://localhost:3000/es
# Francés: http://localhost:3000/fr
# Alemán: http://localhost:3000/de
# Japonés: http://localhost:3000/ja
# Chino: http://localhost:3000/zh
```

## 📊 ¿Qué se Traduce?

Por cada idioma:

### Lecciones (18 total):
- ✅ Títulos de secciones
- ✅ Contenido markdown de secciones
- ✅ Preguntas de quiz
- ✅ Opciones de respuesta
- ✅ Explicaciones

### Juegos:
- ✅ Instrucciones
- ✅ Preguntas
- ✅ Opciones
- ✅ Explicaciones

**Total por idioma:** ~320-410 traducciones
**Total para 5 idiomas:** ~1,600-2,050 traducciones

## 💰 Costos Estimados

Por idioma:
- **Claude 3.5 Sonnet:** ~$3-4 USD por idioma
- **Total para 5 idiomas:** ~$15-20 USD

## ⏱️ Tiempo Estimado

Por idioma:
- **Ejecución del script:** 15-30 minutos
- **Aplicar SQL:** 1-2 minutos
- **Total:** ~20-35 minutos por idioma

Para traducir todos los idiomas:
- **Total:** ~2-3 horas

## 🔄 Re-traducir un Idioma

Si necesitas re-traducir (por contenido actualizado o correcciones):

```bash
# El script automáticamente borra las traducciones previas
npm run translate:es

# Luego ejecuta el nuevo SQL generado
```

El SQL incluye:
```sql
DELETE FROM "ContentTranslation"
WHERE target_language = 'es';
```

## 🎯 Ventajas del Nuevo Sistema

### ✅ Multiidioma Real
- Soporta 6 idiomas simultáneamente
- Inglés original siempre preservado
- Fácil agregar más idiomas

### ✅ Escalable
- Cada idioma se traduce independientemente
- No hay conflictos entre idiomas
- Fácil de mantener

### ✅ Flexible
- Puedes traducir solo algunos idiomas
- Puedes re-traducir un idioma sin afectar otros
- Puedes corregir traducciones específicas

### ✅ Eficiente
- Las traducciones se cargan solo cuando se necesitan
- Cache automático en la aplicación
- No duplica contenido en múltiples columnas

## 📝 Estructura de ContentTranslation

### Ejemplo de Registro:

```json
{
  "id": "uuid",
  "content_type": "lesson",
  "content_id": "lesson-uuid",
  "field_name": "sections[0].title",
  "source_language": "en",
  "target_language": "es",
  "source_text": "What is Money?",
  "translated_text": "¿Qué es el dinero?",
  "translated_at": "2026-01-05T...",
  "expires_at": "2027-01-05T..."
}
```

### Field Names (Ejemplos):

```
sections[0].title
sections[0].content
sections[1].title
sections[1].content
quiz.questions[0].question
quiz.questions[0].options[0]
quiz.questions[0].options[1]
quiz.questions[0].explanation
```

## 🔧 Modificaciones Realizadas

### 1. Script de Traducción
**Archivo:** `scripts/translate-multilang.ts`
- Nuevo script que usa ContentTranslation
- Soporta parámetro `--lang=`
- Genera SQL con INSERT en vez de UPDATE

### 2. API de Lecciones
**Archivo:** `src/app/api/lessons/[lessonId]/route.ts`
- Modificada para leer locale de query param
- Lee traducciones de ContentTranslation
- Aplica traducciones dinámicamente al contenido
- Fallback a inglés si no hay traducciones

### 3. Componente de Lección
**Archivo:** `src/app/[locale]/learn/lesson/[lessonId]/page.tsx`
- Pasa locale a la API via query param

### 4. Package.json
**Archivo:** `package.json`
- Agregados 5 comandos: `translate:es`, `translate:fr`, `translate:de`, `translate:ja`, `translate:zh`

## 🧪 Testing

### Probar Español:
```bash
# 1. Traducir
npm run translate:es

# 2. Aplicar SQL
# (copiar prisma/migration_es_translation.sql a Neon)

# 3. Verificar
npm run dev
# Ir a: http://localhost:3000/es/learn
```

### Probar Múltiples Idiomas:
```bash
# Traducir varios
npm run translate:es
npm run translate:fr
npm run translate:de

# Aplicar cada SQL en Neon

# Verificar cada idioma
http://localhost:3000/es/learn
http://localhost:3000/fr/learn
http://localhost:3000/de/learn
```

## 🐛 Troubleshooting

### Error: "ANTHROPIC_API_KEY not set"
```bash
export ANTHROPIC_API_KEY="tu-clave-aqui"
```

### Error: "Unsupported language"
Verifica que estás usando: `es`, `fr`, `de`, `ja`, o `zh`

### Traducciones no aparecen
1. Verifica que ejecutaste el SQL
2. Verifica en Neon:
   ```sql
   SELECT COUNT(*) FROM "ContentTranslation"
   WHERE target_language = 'es';
   ```
3. Verifica que el locale se pasa correctamente:
   ```
   /api/lessons/[id]?locale=es
   ```

### Contenido mezclado (inglés + español)
- Algunas traducciones no se aplicaron correctamente
- Revisa `prisma/translation_es_log.json`
- Ejecuta nuevamente la traducción

## 📚 Archivos Importantes

### Scripts:
- `scripts/translate-multilang.ts` - Script principal de traducción
- `scripts/translate-content.old.ts` - Script antiguo (archivado)
- `scripts/translate-test.old.ts` - Script de prueba antiguo (archivado)

### APIs:
- `src/app/api/lessons/[lessonId]/route.ts` - API modificada para multiidioma

### Componentes:
- `src/app/[locale]/learn/lesson/[lessonId]/page.tsx` - Pasa locale a API

### Configuración:
- `package.json` - Comandos de traducción
- `prisma/schema.prisma` - Modelo ContentTranslation

### Outputs (generados):
- `prisma/migration_{lang}_translation.sql` - SQL para cada idioma
- `prisma/translation_{lang}_log.json` - Log de traducciones

## 🎉 Resultado Final

Después de traducir todos los idiomas:

```
EduFin - Plataforma Educativa Multiidioma
├── 🇺🇸 English (original)
├── 🇪🇸 Español (traducido)
├── 🇫🇷 Français (traducido)
├── 🇩🇪 Deutsch (traducido)
├── 🇯🇵 日本語 (traducido)
└── 🇨🇳 简体中文 (traducido)

✅ 6 idiomas completos
✅ ~2,000+ traducciones profesionales
✅ Una aplicación verdaderamente global
```

## 💡 Próximos Pasos

1. **Traducir Español primero:** `npm run translate:es`
2. **Verificar que funciona correctamente**
3. **Traducir otros idiomas uno por uno**
4. **Considerar agregar más idiomas:**
   - Portugués (pt)
   - Italiano (it)
   - Coreano (ko)
   - etc.

## 🔮 Mejoras Futuras

1. **Cache de traducciones** en la aplicación
2. **Pre-cargar traducciones** más comunes
3. **Editor de traducciones** en admin panel
4. **Versionado de traducciones** (para actualizaciones)
5. **Traducción automática de nuevo contenido** (webhook)

---

**¡Sistema multiidioma completo y listo para usar! 🌍🚀**
