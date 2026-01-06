# Configuración de OAuth - EduFin

## Error Actual: `?error=oauth_failed`

Este error significa que el flujo de OAuth está fallando. Las causas más comunes son:

1. **Variables de entorno no configuradas**
2. **Redirect URI incorrecta en Google/Apple**
3. **Credenciales OAuth inválidas**

---

## Solución Paso a Paso

### 1. Configurar Google OAuth

#### A. Crear Proyecto en Google Cloud Console

1. Ve a [Google Cloud Console](https://console.cloud.google.com/)
2. Crea un nuevo proyecto o selecciona uno existente
3. Habilita la API "Google+ API" o "People API"

#### B. Crear Credenciales OAuth 2.0

1. Ve a **APIs & Services** > **Credentials**
2. Click en **Create Credentials** > **OAuth 2.0 Client ID**
3. Tipo de aplicación: **Web application**
4. Nombre: `EduFin App`

#### C. Configurar URIs Autorizadas

**Authorized JavaScript origins:**
```
http://localhost:3000
https://tu-dominio.vercel.app
```

**Authorized redirect URIs:**
```
http://localhost:3000/api/auth/callback
https://tu-dominio.vercel.app/api/auth/callback
```

⚠️ **IMPORTANTE**: La URL de callback DEBE coincidir exactamente con la configurada en tu código.

#### D. Copiar Credenciales

Después de crear, copia:
- **Client ID**: `123456789-abc.apps.googleusercontent.com`
- **Client Secret**: `GOCSPX-abcdefgh123456`

### 2. Configurar Variables de Entorno

Crea un archivo `.env.local` en la raíz del proyecto:

```bash
# Copia desde .env.example
cp .env.example .env.local
```

Edita `.env.local` y agrega tus credenciales:

```env
# OAuth Google
GOOGLE_CLIENT_ID="TU_CLIENT_ID.apps.googleusercontent.com"
GOOGLE_CLIENT_SECRET="TU_CLIENT_SECRET"

# URL de la aplicación (DEBE coincidir con Google Console)
NEXT_PUBLIC_APP_URL="http://localhost:3000"

# Base de datos (si ya tienes una)
DATABASE_URL="tu_database_url"

# JWT Secret
JWT_SECRET="genera_uno_seguro_con_openssl_rand_base64_32"
```

### 3. Verificar Configuración

#### A. Verificar Variables de Entorno

```bash
# En desarrollo, verifica que las variables estén cargadas
node -e "console.log({
  GOOGLE_CLIENT_ID: process.env.GOOGLE_CLIENT_ID?.slice(0, 20) + '...',
  GOOGLE_CLIENT_SECRET: process.env.GOOGLE_CLIENT_SECRET ? 'SET' : 'NOT SET',
  NEXT_PUBLIC_APP_URL: process.env.NEXT_PUBLIC_APP_URL
})"
```

#### B. Verificar URLs

1. La URL en `NEXT_PUBLIC_APP_URL` debe coincidir con:
   - La URL donde corre tu app
   - La URL en Google Cloud Console (Authorized redirect URIs)

2. Para producción (Vercel):
   ```
   NEXT_PUBLIC_APP_URL="https://tu-app.vercel.app"
   ```

### 4. Reiniciar Servidor de Desarrollo

**¡IMPORTANTE!** Después de cambiar variables de entorno:

```bash
# Detén el servidor (Ctrl+C)
# Reinicia
npm run dev
```

### 5. Verificar Logs

Cuando intentes iniciar sesión, verás logs detallados en la consola:

```
[OAuth] Generated Google auth URL with redirect: http://localhost:3000/api/auth/callback
[OAuth] Exchanging Google code for tokens
[OAuth] Successfully exchanged Google code for tokens
[OAuth] Fetching Google user info
[OAuth] Successfully fetched Google user info for: usuario@gmail.com
```

Si hay un error, verás exactamente dónde falla:

```
[OAuth] Google token exchange failed: { status: 401, error: 'invalid_client' }
```

---

## Errores Comunes y Soluciones

### Error: `invalid_client`
**Causa**: Client ID o Client Secret incorrectos
**Solución**: Verifica que copiaste correctamente las credenciales

### Error: `redirect_uri_mismatch`
**Causa**: La redirect URI no coincide con la configurada en Google
**Solución**:
1. Verifica en Google Console: la URI debe ser exactamente `http://localhost:3000/api/auth/callback`
2. Verifica que `NEXT_PUBLIC_APP_URL` sea `http://localhost:3000` (sin barra al final)

### Error: `access_denied`
**Causa**: Usuario canceló el login o no tiene permisos
**Solución**: Normal, el usuario decidió no continuar

### Error: Variables de entorno no se cargan
**Causa**: Archivo `.env.local` en lugar incorrecto o servidor no reiniciado
**Solución**:
1. Archivo debe estar en `/edufin/.env.local`
2. Reiniciar servidor con `npm run dev`

---

## Testing

### Probar OAuth Localmente

1. **Iniciar servidor**:
   ```bash
   npm run dev
   ```

2. **Abrir navegador**:
   ```
   http://localhost:3000
   ```

3. **Click en "Sign in with Google"**

4. **Verificar consola del servidor**:
   - Deberías ver logs de cada paso
   - Si hay error, el log mostrará exactamente qué falló

### URLs para Testing

- **Desarrollo**: `http://localhost:3000`
- **Callback**: `http://localhost:3000/api/auth/callback`
- **Iniciar OAuth**: `http://localhost:3000/api/auth/google?locale=es`

---

## Configuración en Vercel (Producción)

1. Ve a tu proyecto en Vercel
2. Settings > Environment Variables
3. Agrega las mismas variables pero con URLs de producción:

```
GOOGLE_CLIENT_ID=tu_client_id
GOOGLE_CLIENT_SECRET=tu_secret
NEXT_PUBLIC_APP_URL=https://tu-app.vercel.app
DATABASE_URL=tu_database_url
JWT_SECRET=tu_secret_seguro
```

4. **IMPORTANTE**: Agrega la URL de Vercel a Google Console:
   - Authorized redirect URIs: `https://tu-app.vercel.app/api/auth/callback`

5. Redeploy tu app en Vercel

---

## Debugging Avanzado

Si sigues teniendo problemas, revisa:

1. **Logs del servidor**: Verás exactamente dónde falla el flujo OAuth
2. **Network tab del navegador**: Verifica las redirecciones
3. **Google Cloud Console**: Verifica que las APIs estén habilitadas

### Habilitar Logs Detallados

Los logs ya están habilitados en el código. Verás:

```
[OAuth] Generated Google auth URL with redirect: ...
[OAuth Callback] OAuth callback received: { hasCode: true, hasState: true }
[OAuth Callback] Parsed state: { provider: 'google', locale: 'es' }
[OAuth Callback] Exchanging Google code for tokens...
[OAuth] Exchanging Google code for tokens
[OAuth] Successfully exchanged Google code for tokens
[OAuth] Fetching Google user info
[OAuth] Successfully fetched Google user info for: usuario@gmail.com
[OAuth Callback] Got user info: { email: 'usuario@gmail.com', name: 'Usuario' }
```

---

## Siguiente Paso

Una vez configurado Google OAuth:

1. Crea el archivo `.env.local` con tus credenciales
2. Reinicia el servidor
3. Intenta iniciar sesión
4. Revisa los logs para ver qué está fallando

Si el error persiste, comparte los logs de la consola para diagnosticar el problema específico.
