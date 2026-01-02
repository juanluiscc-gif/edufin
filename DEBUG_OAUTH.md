# 🔍 Debug OAuth - Variables Configuradas pero Sigue Fallando

## Checklist de Verificación

### ✅ 1. Verificar que las Variables se Aplicaron
**Problema:** Las variables se agregan pero no se aplican hasta el PRÓXIMO deployment.

**Solución:**
1. Ve a Vercel → Settings → Environment Variables
2. Verifica que TODAS estas estén presentes:
   - ✓ GOOGLE_CLIENT_ID
   - ✓ GOOGLE_CLIENT_SECRET
   - ✓ NEXT_PUBLIC_APP_URL
   - ✓ JWT_SECRET
   - ✓ DATABASE_URL
3. Ve a Deployments → Click en los 3 puntos del último → **"Redeploy"**
4. Espera a que termine el build (2-3 min)

---

### ✅ 2. Verificar URL de Redirect en Google Cloud Console

**El problema #1 más común:** La URL en Google no coincide exactamente.

#### Ir a Google Cloud Console:
1. https://console.cloud.google.com/apis/credentials
2. Click en tu OAuth 2.0 Client ID
3. Verifica **Authorized redirect URIs:**

**DEBE SER EXACTAMENTE:**
```
https://edufin-02-r3q2jw7e1-juanluiscc-gifs-projects.vercel.app/api/auth/callback
```

**Errores comunes que fallan:**
❌ `https://edufin-02-r3q2jw7e1-juanluiscc-gifs-projects.vercel.app/api/auth/callback/` (barra extra)
❌ `http://edufin-02-r3q2jw7e1-juanluiscc-gifs-projects.vercel.app/api/auth/callback` (http en vez de https)
❌ `https://edufin-02.vercel.app/api/auth/callback` (dominio diferente)

---

### ✅ 3. Verificar NEXT_PUBLIC_APP_URL

En Vercel → Environment Variables, verifica:

**DEBE SER:**
```
NEXT_PUBLIC_APP_URL = https://edufin-02-r3q2jw7e1-juanluiscc-gifs-projects.vercel.app
```

**SIN barra al final:**
❌ `https://edufin-02-r3q2jw7e1-juanluiscc-gifs-projects.vercel.app/`
✅ `https://edufin-02-r3q2jw7e1-juanluiscc-gifs-projects.vercel.app`

---

### ✅ 4. Ver Logs en Tiempo Real

1. Ve a Vercel → Deployments → Click en el último deployment
2. Click en "Logs" o "Functions"
3. **Intenta hacer login** desde otra pestaña
4. Los logs mostrarán el error EXACTO

**Busca estos mensajes:**

**Si ves esto = Variables no configuradas:**
```
[OAuth] OAuth Error: GOOGLE_CLIENT_ID not configured
```

**Si ves esto = Redirect URI mal configurado:**
```
[OAuth] Google token exchange failed: redirect_uri_mismatch
```

**Si ves esto = Credenciales incorrectas:**
```
[OAuth] Google token exchange failed: invalid_client
```

---

### ✅ 5. Prueba Manual de la URL de Redirect

Construye la URL manualmente y prueba:

```
https://accounts.google.com/o/oauth2/v2/auth?client_id=TU_CLIENT_ID&redirect_uri=https://edufin-02-r3q2jw7e1-juanluiscc-gifs-projects.vercel.app/api/auth/callback&response_type=code&scope=https://www.googleapis.com/auth/userinfo.email%20https://www.googleapis.com/auth/userinfo.profile&access_type=offline&prompt=consent&state={"provider":"google","locale":"es"}
```

Reemplaza `TU_CLIENT_ID` con tu Client ID real.

Si da error `redirect_uri_mismatch` = La URL no está en Google Console.

---

## 🎯 Solución Según el Error

### Error: `redirect_uri_mismatch`
**Causa:** URL en Google Console no coincide
**Solución:**
1. Ve a Google Cloud Console
2. Edita tu OAuth Client
3. Agrega la URL EXACTA:
   ```
   https://edufin-02-r3q2jw7e1-juanluiscc-gifs-projects.vercel.app/api/auth/callback
   ```
4. Guarda
5. Espera 5 minutos (puede tardar en propagarse)
6. Intenta de nuevo

---

### Error: `invalid_client`
**Causa:** Client ID o Secret incorrectos
**Solución:**
1. Ve a Google Cloud Console → Credentials
2. Copia de nuevo el Client ID y Secret
3. Ve a Vercel → Environment Variables
4. Actualiza las variables
5. Redeploy

---

### Error: `GOOGLE_CLIENT_ID not configured`
**Causa:** Variables no se aplicaron al deployment
**Solución:**
1. Verifica que las variables estén en Vercel
2. Haz **Redeploy** (importante!)
3. Espera a que termine el build
4. Las variables NO se aplican retroactivamente

---

## 📸 ¿Puedes compartir?

Para ayudarte mejor, comparte screenshot de:

1. **Vercel Environment Variables** (oculta los valores sensibles)
2. **Google Cloud Console** → Authorized redirect URIs
3. **Logs de Vercel** cuando intentas hacer login

Con eso puedo ver exactamente qué está mal.

---

## 🚨 Si Nada Funciona

Opción temporal: Usa un Client ID de prueba que yo configure:
- Te doy credenciales temporales
- Pruebas que OAuth funcione
- Luego configuras las tuyas propias

¿Quieres que te ayude en vivo viendo los logs?
