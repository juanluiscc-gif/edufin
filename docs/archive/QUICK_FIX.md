# ⚡ Fix Rápido - 5 Minutos

## El problema actual:
OAuth falla porque faltan las variables de entorno en Vercel.

## Solución en 5 pasos:

### 1️⃣ Obtener credenciales de Google (3 min)
1. Ve a: https://console.cloud.google.com/apis/credentials
2. Click en **"Create Credentials"** → **"OAuth 2.0 Client ID"**
3. Tipo: **Web application**
4. Authorized redirect URIs:
   ```
   https://edufin-02-r3q2jw7e1-juanluiscc-gifs-projects.vercel.app/api/auth/callback
   ```
5. Copia el **Client ID** y **Client Secret**

### 2️⃣ Configurar Vercel (2 min)
1. Ve a: https://vercel.com/juanluiscc-gifs-projects/edufin-02/settings/environment-variables
2. Agrega estas variables:

```
GOOGLE_CLIENT_ID = [pega aquí tu Client ID]
GOOGLE_CLIENT_SECRET = [pega aquí tu Client Secret]
NEXT_PUBLIC_APP_URL = https://edufin-02-r3q2jw7e1-juanluiscc-gifs-projects.vercel.app
JWT_SECRET = [cualquier string aleatorio largo, ej: abc123xyz789]
DATABASE_URL = [tu URL de database de Vercel/Neon]
POSTGRES_URL = [misma URL de arriba]
```

### 3️⃣ Redeploy
1. Ve a: Deployments
2. Click en los 3 puntos del último deployment
3. Click en **"Redeploy"**

### 4️⃣ Espera 2 minutos

### 5️⃣ Prueba el login

---

## ¿No tienes acceso a Google Cloud Console?
Comparte pantalla o dame permisos temporales y lo configuro por ti.

## ¿Ya tienes un proyecto en Google Cloud?
Dime el nombre del proyecto y te guío dónde encontrar las credenciales.
