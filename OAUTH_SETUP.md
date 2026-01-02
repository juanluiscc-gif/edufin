# Configuración de OAuth para EduFin

## Problema Actual
Error: `?error=oauth_failed` al intentar iniciar sesión con Google.

## Solución Paso a Paso

### 1. Verificar Variables de Entorno en Vercel

Ve a tu proyecto en Vercel → Settings → Environment Variables y asegúrate de tener:

```
GOOGLE_CLIENT_ID=tu_client_id_aqui
GOOGLE_CLIENT_SECRET=tu_client_secret_aqui
NEXT_PUBLIC_APP_URL=https://edufin-02.vercel.app
```

**IMPORTANTE:** Después de agregar o modificar variables de entorno:
1. Haz un nuevo deploy (o redeploy)
2. Las variables NO se aplican automáticamente

### 2. Configuración en Google Cloud Console

#### A. Orígenes de JavaScript autorizados
Debe tener EXACTAMENTE:
```
https://edufin-02.vercel.app
```

#### B. URIs de redirección autorizados
Debe tener EXACTAMENTE:
```
https://edufin-02.vercel.app/api/auth/callback
```

**NO necesitas las rutas con `/en`, `/es`, etc.** La aplicación maneja el idioma internamente.

#### C. Verificar que el proyecto esté en producción
- Si tu aplicación de OAuth está en modo "Testing", solo funcionará con usuarios de prueba agregados
- Ve a "OAuth consent screen" y verifica el estado
- Si dice "Testing", agrega tu email en "Test users" O publica la aplicación

### 3. Diagnóstico

#### A. Verificar configuración (solo en desarrollo local)
Visita: `http://localhost:3000/api/auth/test-config`

Deberías ver:
```json
{
  "google_client_id": "SET",
  "google_client_secret": "SET",
  "app_url": "https://edufin-02.vercel.app",
  "expected_callback": "https://edufin-02.vercel.app/api/auth/callback"
}
```

#### B. Ver logs en Vercel
1. Ve a tu proyecto en Vercel
2. Click en Deployments → Latest deployment
3. Click en "Functions" o "Runtime Logs"
4. Intenta iniciar sesión nuevamente
5. Busca los console.log que agregamos:
   - "OAuth callback received"
   - "Exchanging Google code for tokens"
   - "Google OAuth exchange failed" (si hay error)

### 4. Problemas Comunes y Soluciones

#### Error: "redirect_uri_mismatch"
**Causa:** La URI de redirección no coincide exactamente.

**Solución:**
1. Ve a Google Cloud Console → Credentials
2. Edita tu OAuth 2.0 Client ID
3. En "Authorized redirect URIs", asegúrate de tener EXACTAMENTE:
   ```
   https://edufin-02.vercel.app/api/auth/callback
   ```
4. Guarda y espera 5 minutos (Google tarda en propagar cambios)

#### Error: "access_denied"
**Causa:** La aplicación está en modo Testing y tu usuario no está en la lista.

**Solución:**
1. Ve a "OAuth consent screen"
2. Opción A: Agrega tu email en "Test users"
3. Opción B: Publica la aplicación (cambiar a "In production")

#### Error: "invalid_client"
**Causa:** CLIENT_ID o CLIENT_SECRET incorrectos.

**Solución:**
1. Verifica que copiaste correctamente los valores de Google Cloud Console
2. Asegúrate de que no haya espacios al inicio o final
3. Redeploy en Vercel después de cambiar

#### El botón de Google no aparece o no funciona
**Causa:** Variables de entorno no están configuradas.

**Solución:**
1. Verifica variables en Vercel
2. Haz un nuevo deploy
3. Limpia caché del navegador

### 5. Prueba Paso a Paso

1. **Limpia cookies:**
   - Abre DevTools (F12)
   - Application → Cookies → Elimina todas las cookies de edufin-02.vercel.app

2. **Verifica la URL de inicio:**
   - Click en "Sign in with Google"
   - Deberías ser redirigido a `accounts.google.com`
   - La URL debe incluir: `redirect_uri=https%3A%2F%2Fedufin-02.vercel.app%2Fapi%2Fauth%2Fcallback`

3. **Después de autorizar:**
   - Deberías ser redirigido a `https://edufin-02.vercel.app/api/auth/callback?code=...&state=...`
   - Si ves `?error=oauth_failed`, revisa los logs en Vercel

### 6. Lista de Verificación

- [ ] Variables de entorno configuradas en Vercel
- [ ] Nuevo deploy realizado después de configurar variables
- [ ] URI de redirección exactamente: `https://edufin-02.vercel.app/api/auth/callback`
- [ ] Origen de JavaScript: `https://edufin-02.vercel.app`
- [ ] Aplicación en "Production" O tu email en "Test users"
- [ ] Sin espacios en CLIENT_ID y CLIENT_SECRET
- [ ] Esperado 5 minutos después de cambios en Google Cloud Console

### 7. Comando Rápido para Ver Logs

Si tienes Vercel CLI instalado:
```bash
vercel logs edufin-02 --follow
```

Luego intenta iniciar sesión y verás los logs en tiempo real.

## ¿Todavía no funciona?

Comparte los siguientes detalles:
1. Captura de pantalla de las variables de entorno en Vercel (oculta los valores)
2. Captura de pantalla de "Authorized redirect URIs" en Google Cloud Console
3. Los logs de la función en Vercel cuando intentas iniciar sesión
4. El mensaje de error completo en la URL (después de `?error=`)
