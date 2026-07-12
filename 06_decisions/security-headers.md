# Security Headers — Minimum Viable

> Headers de seguridad que el nuevo sitio **debe tener**. Adaptado del patrón de `Ai-Whisperers/somosgay-context`.

## Required headers (Cloudflare Pages _headers file)

```text
/*
  Strict-Transport-Security: max-age=31536000; includeSubDomains; preload
  X-Frame-Options: DENY
  X-Content-Type-Options: nosniff
  Referrer-Policy: strict-origin-when-cross-origin
  Permissions-Policy: geolocation=(), microphone=(), camera=()
  Content-Security-Policy: default-src 'self'; script-src 'self' 'sha256-...'; style-src 'self' 'unsafe-inline'; img-src 'self' data: https://*.aireana.org.py; font-src 'self'; connect-src 'self' https://plausible.io; frame-ancestors 'none'; base-uri 'self'; form-action 'self'

/api/*
  X-Robots-Tag: noindex
```

## CSP explained

| Directive | Value | Por qué |
|-----------|-------|---------|
| `default-src` | `'self'` | Por defecto solo recursos del propio dominio |
| `script-src` | `'self'` + nonce específico | No inline scripts sin nonce |
| `style-src` | `'self' 'unsafe-inline'` | Permitir estilos inline (Next.js usa) — refinar a nonce |
| `img-src` | `'self' data:` + dominio propio | Solo imágenes controladas |
| `font-src` | `'self'` | Self-hosted, no Google Fonts |
| `connect-src` | `'self' + Plausible` | Solo APIs controlados |
| `frame-ancestors` | `'none'` | Anti-clickjacking |
| `base-uri` | `'self'` | Anti-base-tag injection |
| `form-action` | `'self'` | Forms solo a endpoints propios |

## Other security measures

| Medida | Estado | Acción |
|--------|--------|--------|
| **HTTPS forzado** | ✅ Asumido en Cloudflare Pages | Confirmar |
| **HSTS preload** | ✅ Recomendado | Submit to hstspreload.org |
| **DNSSEC** | ⚠️ Depende del registrar | Activar si posible |
| **CAA records** | ⚠️ Limitar issuers | Agregar `0 issue "letsencrypt.org"` y `0 issuewild ";"` |
| **Rate limiting** | ✅ Cloudflare default | Confirmar |
| **DDoS protection** | ✅ Cloudflare default | Activo |
| **Bot protection** | ⚠️ Turnstile vs reCAPTCHA | **Usar Turnstile** (Cloudflare, más privado) |
| **CSP reporting** | [VERIFY] | Configurar endpoint de report |

## Anti-patterns to avoid

- ❌ Google reCAPTCHA — comparte datos con Google
- ❌ Google Fonts — comparte IPs con Google
- ❌ Google Maps embeds — mismo
- ❌ Cloudflare Analytics con cookies — usar Plausible o Workers Analytics
- ❌ Inline scripts sin nonce
- ❌ Inline styles sin nonce (excepto críticos)
- ❌ `unsafe-eval` en CSP
- ❌ `*.googleapis.com` en CSP sin razón

## Lo que NO se hace

- ❌ Publicar stack tecnológico en headers (X-Powered-By etc)
- ❌ Incluir vendor branding en security.txt
- ❌ Permitir CORS abierto

## Security.txt

Archivo `.well-known/security.txt` recomendado:

```text
Contact: mailto:seguridad@aireana.org.py
Expires: 2027-12-31T23:59:59z
Preferred-Languages: es
Canonical: https://aireana.org.py/.well-known/security.txt
```

## Sources

- [Mozilla Observatory](https://observatory.mozilla.org/)
- [CSP Cheatsheet](https://cheatsheetseries.owasp.org/cheatsheets/Content_Security_Policy_Cheat_Sheet.html)
- [HSTS Preload](https://hstspreload.org/)
- `Ai-Whisperers/somosgay-context/06_decisions/security-headers.md`