# Tareas Pendientes para Mañana

## 🔴 Prioridad Alta

### 1. Verificar y Arreglar Traducciones
- **Problema:** Después del merge, las traducciones siguen apareciendo en inglés
- **Cambios realizados hoy:**
  - Corregido namespace de i18n en `DashboardContent.tsx` (de `useTranslations('common.dashboard')` a `useTranslations('common')` + `t('dashboard.key')`)
  - Corregido namespace en `SignupForm.tsx` (de `useTranslations('common.auth')` a `useTranslations('common')` + `t('auth.key')`)
  - Agregadas traducciones faltantes en `src/locales/en/common.json`
- **Commit:** f42395f8
- **Posibles causas del problema:**
  - Deployment aún no completado en Vercel
  - Caché del navegador
  - Problema con regeneración de páginas en Next.js
  - Verificar que las variables de entorno estén correctas en producción

### 2. Agregar Botones de Navegación "Volver al Inicio"
- **Ubicaciones:**
  - En páginas de Learning Center (`/[locale]/learn/**`)
  - En páginas de Games (`/[locale]/games/**`)
- **Diseño sugerido:**
  - Botón en la esquina superior izquierda o en el header
  - Ícono: ← o 🏠
  - Texto: "Volver al inicio" / "Back to Home" (traducido)
  - Link a: `/${locale}/dashboard`

## ✅ Completado Hoy

### Base de Datos Poblada
- **7 lecciones creadas en Neon:**
  1. What is Money? (both, nivel 1)
  2. Counting Money (kid, nivel 1)
  3. Earning Money (both, nivel 2)
  4. Needs vs Wants (both, nivel 2)
  5. Saving Money (both, nivel 2)
  6. Creating a Budget (adult, nivel 3)
  7. Understanding Credit (adult, nivel 4)

- **8 juegos creados en Neon:**
  1. Money Math Challenge (kid, quiz)
  2. Lemonade Stand (kid, simulation)
  3. Coin Sorter (kid, puzzle)
  4. Birthday Money Decision (kid, scenario)
  5. Budget Master (adult, simulation)
  6. Investment Matcher (adult, puzzle)
  7. Credit Score Quiz (adult, quiz)
  8. Emergency Fund Scenario (adult, scenario)

### Archivos Modificados
- `src/components/DashboardContent.tsx` - Arreglado namespace de traducciones
- `src/components/SignupForm.tsx` - Arreglado namespace de traducciones
- `src/locales/en/common.json` - Agregadas traducciones faltantes
- `src/locales/es/common.json` - Ya tenía las traducciones correctas
- Creados archivos SQL: `neon_seed.sql`, `neon_seed_simple.sql`, `neon_seed_fixed.sql`, `neon_seed_final.sql`

## 🔍 Debugging para Mañana

### Verificar Traducciones:
1. Revisar que el deployment esté completo en Vercel
2. Probar en modo incógnito (sin caché)
3. Verificar en herramientas de desarrollo del navegador:
   - Network tab: ver si los archivos JSON de traducción se cargan
   - Console: ver si hay errores de next-intl
4. Verificar la estructura de archivos de traducción:
   ```
   /src/locales/
     /es/
       common.json  ← debe tener estructura: { nav: {}, dashboard: {}, auth: {} }
     /en/
       common.json  ← debe tener estructura: { nav: {}, dashboard: {}, auth: {} }
   ```
5. Verificar que `src/i18n.ts` esté cargando los mensajes correctamente
6. Si persiste el problema, revisar el middleware de next-intl

### Implementar Botones de Navegación:
1. Opción 1: Crear componente `BackButton.tsx` reutilizable
2. Opción 2: Agregar directamente en los layouts de learning y games
3. Usar `next/link` con locale: `<Link href={`/${locale}/dashboard`}>`
4. Agregar traducciones:
   - en/common.json: `"nav": { "backToHome": "Back to Home" }`
   - es/common.json: `"nav": { "backToHome": "Volver al inicio" }`

## 📊 Estado del Proyecto

- ✅ OAuth autenticación funcionando
- ✅ Base de datos con contenido (7 lecciones + 8 juegos)
- ❌ Traducciones necesitan verificación/corrección
- ⚠️ Navegación necesita botones de retorno
- ⚠️ Learning Center y Games muestran contenido pero necesitan desarrollo completo de funcionalidad

## 🎯 Objetivos Próxima Sesión

1. Resolver problema de traducciones definitivamente
2. Implementar botones de navegación
3. Verificar que toda la experiencia de usuario fluya correctamente
4. (Opcional) Comenzar desarrollo de funcionalidad de lecciones interactivas
