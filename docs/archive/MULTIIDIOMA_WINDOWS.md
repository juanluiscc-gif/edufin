# 🌍 Sistema Multiidioma - Instrucciones para Windows

## 🪟 Guía Específica para Windows PowerShell

Esta guía está optimizada para usuarios de **Windows** usando **PowerShell**.

## 🚀 Inicio Rápido

### Paso 1: Configurar API Key de Anthropic

```powershell
# Configurar API key (temporal - solo para esta sesión de PowerShell)
$env:ANTHROPIC_API_KEY="sk-ant-api03-tu-clave-aqui"

# Verificar que se configuró correctamente
echo $env:ANTHROPIC_API_KEY
```

**Nota:** Esta variable solo dura mientras PowerShell esté abierto. Para hacerla permanente, ver sección "Configuración Permanente" más abajo.

### Paso 2: Instalar Dependencias

```powershell
npm install
```

Esto instalará `@anthropic-ai/sdk` y todas las dependencias necesarias.

### Paso 3: Traducir al Español

```powershell
npm run translate:es
```

Esto tomará **15-30 minutos** y generará:
- `prisma/migration_es_translation.sql`
- `prisma/translation_es_log.json`

### Paso 4: Ejecutar SQL en Neon

1. Abre tu navegador
2. Ve a: https://console.neon.tech/
3. Selecciona tu proyecto EduFin
4. Click en "SQL Editor"
5. Abre el archivo `prisma/migration_es_translation.sql` con Notepad
6. Copia todo el contenido (Ctrl+A, Ctrl+C)
7. Pega en el SQL Editor de Neon (Ctrl+V)
8. Click en **RUN**
9. Espera a que termine

### Paso 5: Verificar en la App

```powershell
npm run dev
```

Luego abre tu navegador en: http://localhost:3000/es/learn

## 🌍 Traducir Otros Idiomas

```powershell
# Francés
npm run translate:fr

# Alemán
npm run translate:de

# Japonés
npm run translate:ja

# Chino
npm run translate:zh
```

Cada uno genera su propio archivo SQL: `migration_fr_translation.sql`, etc.

## 🔧 Configuración Permanente de API Key

### Opción A: Variable de Entorno del Sistema (Recomendado)

1. Click en el botón de Windows
2. Busca "variables de entorno"
3. Click en "Editar las variables de entorno del sistema"
4. Click en "Variables de entorno..."
5. En "Variables de usuario", click en "Nueva..."
6. Nombre: `ANTHROPIC_API_KEY`
7. Valor: `sk-ant-api03-tu-clave-aqui`
8. Click "Aceptar" en todos los diálogos
9. **Cierra y abre PowerShell nuevamente**

### Opción B: Archivo .env.local (Alternativa)

Crea un archivo llamado `.env.local` en la raíz del proyecto:

```powershell
# Crear el archivo
New-Item -Path .env.local -ItemType File

# Agregar la clave
Add-Content -Path .env.local -Value "ANTHROPIC_API_KEY=sk-ant-api03-tu-clave-aqui"
```

O simplemente crea el archivo manualmente con Notepad y agrega:
```
ANTHROPIC_API_KEY=sk-ant-api03-tu-clave-aqui
```

## 📊 Ver Progreso Durante la Traducción

El script mostrará algo como:

```
🌍 Starting multilingual content translation...

📝 Configuration:
  - Source language: English (en)
  - Target language: Spanish (Latin American) (es)
  - Translation engine: Claude 3.5 Sonnet
  - Storage: ContentTranslation table

📚 Found 18 lessons to translate

📖 Translating lesson: What is Money?
  - Translating 4 sections...
  - Translating 4 quiz questions...
  ✓ Completed: What is Money?

📖 Translating lesson: Different Types of Currency
  ...

🎮 Found 1 games to translate
🎮 Translating game: 💰 Money Basics Quiz
  - Translating 10 questions...
  ✓ Completed: 💰 Money Basics Quiz

✨ Translation Complete!

📊 Summary:
  - Target language: Spanish (Latin American) (es)
  - Lessons translated: 18
  - Games translated: 1
  - Total strings translated: 350

📝 Next steps:
  1. Review the SQL file: prisma/migration_es_translation.sql
  2. Execute it in your Neon SQL console
  3. Verify translations in the app
```

## 🐛 Solución de Problemas (Windows)

### Error: "ANTHROPIC_API_KEY environment variable not set"

```powershell
# Configurar nuevamente
$env:ANTHROPIC_API_KEY="tu-clave-aqui"

# Verificar
echo $env:ANTHROPIC_API_KEY
```

### Error: "npm : no se reconoce como comando"

Node.js no está instalado o no está en el PATH.

**Solución:**
1. Descarga Node.js desde: https://nodejs.org/
2. Instala la versión LTS (recomendada)
3. Cierra y abre PowerShell nuevamente
4. Verifica: `node --version`

### Error: "tsx : no se reconoce como comando"

```powershell
# Instalar dependencias
npm install

# Verificar que tsx está instalado
npm list tsx
```

### Error: "Cannot find module '@anthropic-ai/sdk'"

```powershell
# Reinstalar dependencias
Remove-Item -Recurse -Force node_modules
npm install
```

### Error al ejecutar script: "running scripts is disabled"

PowerShell tiene restricción de ejecución de scripts.

**Solución:**
```powershell
# Permitir ejecución de scripts (ejecutar como Administrador)
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

# Luego intenta nuevamente
npm run translate:es
```

### La traducción se detuvo a la mitad

```powershell
# El script se puede re-ejecutar sin problemas
npm run translate:es

# El SQL incluye DELETE de traducciones previas, así que no habrá duplicados
```

## 📁 Ubicación de Archivos Generados

```
edufin/
└── prisma/
    ├── migration_es_translation.sql    ← Archivo SQL para español
    ├── migration_fr_translation.sql    ← Archivo SQL para francés
    ├── migration_de_translation.sql    ← Archivo SQL para alemán
    ├── migration_ja_translation.sql    ← Archivo SQL para japonés
    ├── migration_zh_translation.sql    ← Archivo SQL para chino
    ├── translation_es_log.json         ← Log de traducciones en español
    ├── translation_fr_log.json         ← Log de traducciones en francés
    └── ...
```

Para abrir estos archivos:

```powershell
# Con Notepad
notepad prisma/migration_es_translation.sql

# Con VS Code (si lo tienes instalado)
code prisma/migration_es_translation.sql

# Abrir carpeta en el explorador
explorer prisma
```

## 💰 Costos y Tiempos

| Idioma | Costo Aprox | Tiempo |
|--------|-------------|--------|
| Español (es) | $3-4 USD | 20-30 min |
| Francés (fr) | $3-4 USD | 20-30 min |
| Alemán (de) | $3-4 USD | 20-30 min |
| Japonés (ja) | $3-4 USD | 20-30 min |
| Chino (zh) | $3-4 USD | 20-30 min |
| **TOTAL (5 idiomas)** | **$15-20 USD** | **~2-3 horas** |

## 🧪 Probar la Traducción Localmente

```powershell
# Iniciar servidor de desarrollo
npm run dev

# Abrir en navegador:
# Inglés:  http://localhost:3000/en/learn
# Español: http://localhost:3000/es/learn
# Francés: http://localhost:3000/fr/learn
# Alemán:  http://localhost:3000/de/learn
# Japonés: http://localhost:3000/ja/learn
# Chino:   http://localhost:3000/zh/learn
```

## 📝 Comandos Útiles en PowerShell

```powershell
# Ver todas las variables de entorno
Get-ChildItem Env:

# Ver solo la API key
$env:ANTHROPIC_API_KEY

# Limpiar cache de npm
npm cache clean --force

# Ver versión de Node.js
node --version

# Ver versión de npm
npm --version

# Reinstalar todo desde cero
Remove-Item -Recurse -Force node_modules
Remove-Item -Force package-lock.json
npm install

# Ver logs en tiempo real durante traducción
npm run translate:es | Tee-Object -FilePath "translation.log"
```

## 🎯 Flujo de Trabajo Completo (Windows)

```powershell
# 1. Navegar al proyecto
cd C:\Users\TuUsuario\edufin

# 2. Configurar API key
$env:ANTHROPIC_API_KEY="sk-ant-api03-tu-clave-aqui"

# 3. Instalar dependencias (solo la primera vez)
npm install

# 4. Traducir español
npm run translate:es

# 5. Abrir archivo SQL generado
notepad prisma\migration_es_translation.sql

# 6. Copiar contenido y ejecutar en Neon console

# 7. Verificar localmente
npm run dev

# 8. Abrir navegador en http://localhost:3000/es/learn
```

## 🔄 Re-traducir un Idioma

Si necesitas volver a traducir (por actualizaciones o correcciones):

```powershell
# Simplemente ejecuta nuevamente
npm run translate:es

# El script automáticamente:
# 1. Borra las traducciones previas en español
# 2. Genera nuevas traducciones
# 3. Crea nuevo archivo SQL

# Luego ejecuta el nuevo SQL en Neon
```

## 📚 Documentación Adicional

- **Guía general:** `MULTIIDIOMA.md`
- **Arquitectura del sistema:** Ver `MULTIIDIOMA.md` sección "Arquitectura"
- **Troubleshooting completo:** Ver `MULTIIDIOMA.md` sección "Troubleshooting"

## ✅ Checklist para Windows

- [ ] Node.js instalado (verificar con `node --version`)
- [ ] npm funcionando (verificar con `npm --version`)
- [ ] Git instalado (opcional, para commits)
- [ ] API key de Anthropic obtenida
- [ ] Variable de entorno configurada
- [ ] `npm install` ejecutado exitosamente
- [ ] PowerShell con permisos de ejecución de scripts
- [ ] Conexión a internet estable (para llamadas a API)

## 🎉 ¡Listo!

Ahora tienes todo listo para traducir tu aplicación EduFin a múltiples idiomas usando Windows PowerShell.

**Siguiente paso:**
```powershell
npm run translate:es
```

**¡Éxito con tu aplicación multiidioma! 🌍🚀**
