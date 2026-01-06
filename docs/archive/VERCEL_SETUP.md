# Configuración Rápida de Variables de Entorno en Vercel

## 🚨 Variables MÍNIMAS Requeridas (para que funcione OAuth)

Ve a tu proyecto en Vercel → **Settings** → **Environment Variables**

### 1. Variables de Base de Datos
```
DATABASE_URL = [Tu URL de Neon/Vercel Postgres]
POSTGRES_URL = [Misma URL de arriba]
```
**Dónde obtenerla:**
- Si usas Vercel Postgres: Storage tab en Vercel
- Si usas Neon: Dashboard de Neon → Connection String

---

### 2. Variables de Google OAuth (REQUERIDO)
```
GOOGLE_CLIENT_ID = [tu_client_id].apps.googleusercontent.com
GOOGLE_CLIENT_SECRET = [tu_secret]
```

**Cómo obtenerlas:**

#### Paso 1: Google Cloud Console
1. Ve a: https://console.cloud.google.com/apis/credentials
2. Crea un proyecto si no tienes uno
3. Click en **"Create Credentials"** → **"OAuth 2.0 Client ID"**

#### Paso 2: Configurar Cliente OAuth
- **Application type:** Web application
- **Name:** EduFin
- **Authorized JavaScript origins:**
  ```
  https://edufin-02-r3q2jw7e1-juanluiscc-gifs-projects.vercel.app
  ```
- **Authorized redirect URIs:**
  ```
  https://edufin-02-r3q2jw7e1-juanluiscc-gifs-projects.vercel.app/api/auth/callback
  ```

#### Paso 3: Copiar Credenciales
Después de crear, Google te mostrará:
- **Client ID** (largo, termina en .apps.googleusercontent.com)
- **Client Secret** (empieza con GOCSPX-)

#### Paso 4: Agregar a Vercel
En Vercel → Settings → Environment Variables:
```
GOOGLE_CLIENT_ID = [pega el Client ID aquí]
GOOGLE_CLIENT_SECRET = [pega el Client Secret aquí]
```

---

### 3. URL de la Aplicación (REQUERIDO)
```
NEXT_PUBLIC_APP_URL = https://edufin-02-r3q2jw7e1-juanluiscc-gifs-projects.vercel.app
```
⚠️ **Sin barra al final** ⚠️

---

### 4. JWT Secret (REQUERIDO)
```
JWT_SECRET = [genera uno aleatorio]
```

**Generar un JWT Secret seguro:**
Ejecuta en tu terminal:
```bash
openssl rand -base64 32
```

O usa uno de estos ejemplos (NO uses estos en producción, genera el tuyo):
```
4K7X9mP2wQ8vN5jR6tY3uB1aS0dF9gH4
```

---

### 5. Variables de Apple OAuth (OPCIONAL - por ahora)
Si quieres Apple Sign In después, necesitarás:
```
APPLE_CLIENT_ID = com.tuapp.serviceid
APPLE_TEAM_ID = ABC123DEF4
APPLE_KEY_ID = XYZ123ABC4
APPLE_PRIVATE_KEY = -----BEGIN PRIVATE KEY-----\n...\n-----END PRIVATE KEY-----
```

**Por ahora puedes omitir estas.** Google OAuth es suficiente para empezar.

---

## 🎯 Lista de Verificación Rápida

En Vercel → Settings → Environment Variables, asegúrate de tener:

- [ ] `DATABASE_URL` - URL de tu base de datos
- [ ] `POSTGRES_URL` - Misma URL
- [ ] `GOOGLE_CLIENT_ID` - De Google Cloud Console
- [ ] `GOOGLE_CLIENT_SECRET` - De Google Cloud Console
- [ ] `NEXT_PUBLIC_APP_URL` - URL de tu app en Vercel
- [ ] `JWT_SECRET` - Generado con openssl

---

## ⚡ Después de Configurar

1. **Redeploy en Vercel:**
   - Ve a la pestaña "Deployments"
   - Click en los 3 puntos del último deployment
   - Click en "Redeploy"

2. **Espera 2-3 minutos** para que el build termine

3. **Prueba el login** con Google

---

## 🐛 Si Sigue Fallando

Revisa los logs en Vercel:
1. Ve a tu deployment
2. Click en "Logs"
3. Busca errores con `[OAuth]` en el mensaje

Los logs mostrarán exactamente qué variable falta o qué está mal configurado.

---

## 📝 Notas Importantes

1. **La URL en Google Console DEBE coincidir exactamente con NEXT_PUBLIC_APP_URL**
2. **No olvides la ruta `/api/auth/callback` en la redirect URI**
3. **Después de agregar variables, DEBES hacer redeploy**
4. **Las variables se aplican en el PRÓXIMO deployment, no retroactivamente**
