# OPSEC Checklist

> Pre-build + ongoing. Adapted from `Ai-Whisperers/somosgay-context/10_risk_assessment/opsec-checklist.md`.

## Pre-build (antes de cualquier despliegue público)

- [ ] Hosting elegido es **fuera de Paraguay** (Cloudflare Pages, NO VPS local)
- [ ] Dominio registrado con **registrar fuera de PY** (Namecheap / Cloudflare Registrar)
- [ ] **DNS over HTTPS** habilitado en Cloudflare
- [ ] **DNSSEC** activo
- [ ] **CAA records** limitan issuers
- [ ] HTTPS forzado + HSTS preload
- [ ] CSP estricto (sin unsafe-eval, sin dominios externos innecesarios)
- [ ] Permissions-Policy cierra geolocation, microphone, camera
- [ ] Referrer-Policy estricto
- [ ] **No Google Fonts** — fonts self-hosted
- [ ] **No Google Maps** — enlace a OSM
- [ ] **No Google Analytics** — Plausible / Workers Analytics
- [ ] **No reCAPTCHA** — Turnstile (Cloudflare) o honeypot
- [ ] **No Facebook Pixel** — Plausible mide lo necesario
- [ ] Forms con **rate limiting** (Cloudflare Turnstile / Workers)
- [ ] No exponer info de staff más allá de lo público
- [ ] No exponer RUC / datos financieros
- [ ] No exponer donantes con montos
- [ ] Política de privacidad publicada (Ley 6534/2020 PY)

## Ongoing (cada 3 meses)

- [ ] Audit headers con Mozilla Observatory (target A+)
- [ ] Audit dependencias con `npm audit` / `pnpm audit`
- [ ] Verificar que no se commiteó info sensible (git log scan)
- [ ] Actualizar CSP si se agregan nuevos servicios externos
- [ ] Revisar que dominios defensivos sigan registrados
- [ ] Backup del repo de contenido (GitHub org ya lo hace)
- [ ] Test de penetration básico con Playwright

## Incident response (si algo pasa)

1. **DDoS** — Cloudflare absorbe automáticamente. Si pasa, activar "Under Attack Mode".
2. **Domain takeover** — DNSSEC + registrar con 2FA + monitoreo de expiry.
3. **Data leak** — si se commiteó algo sensible, git filter-branch + force push + notificar a AIREANA inmediatamente.
4. **Hackeo** — restaurar desde backup de Cloudflare + rotación de secrets + post-mortem.
5. **Acoso en redes** — derivar a AIREANA, no responder desde cuentas Ai-Whisperers.

## Lo que NO hacemos (nunca)

- ❌ Subir el sitio a un VPS local paraguayo
- ❌ Usar dominios `.com.py` sin discutir OPSEC con AIREANA
- ❌ Recolectar datos de usuarios innecesariamente
- ❌ Compartir posición política partidaria desde cuentas Ai-Whisperers
- ❌ Publicar nombres de donantes con montos
- ❌ Publicar casos individuales de Ro'hendu

## Sources

- [Mozilla Observatory](https://observatory.mozilla.org/)
- [Cloudflare Turnstile](https://www.cloudflare.com/products/turnstile/)
- [Plausible Analytics](https://plausible.io/)
- `Ai-Whisperers/somosgay-context/10_risk_assessment/opsec-checklist.md`