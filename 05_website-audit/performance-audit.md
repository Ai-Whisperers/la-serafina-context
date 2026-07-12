# 5. Performance Audit

> **TL;DR:** Sin verificación in-browser real (Pagespeed / WebPageTest), pero probable: el sitio actual es aceptable pero no excelente. No detectamos indicadores de optimización extrema (sin CDN obvio, sin service worker, sin image optimization verificable). **Para P0:** auditar con Lighthouse real antes de proponer mejoras.

## What we can infer

| Factor | Inferencia | Acción |
|--------|-----------|--------|
| **TTFB (Time to First Byte)** | Aceptable (responde 200 en <500ms desde VPS nuestra) | Medir con WebPageTest |
| **Page size** | [VERIFY] — probablemente <2MB | Medir |
| **Requests** | [VERIFY] — probablemente 30-60 | Medir |
| **HTTPS** | [VERIFY] | Confirmar |
| **HTTP/2** | [VERIFY] | Confirmar |
| **CDN** | ❓ No detectable | Evaluar Cloudflare (gratis, recomendado) |
| **Image optimization** | [VERIFY] — probablemente no WebP/AVIF | Optimizar |
| **Lazy loading** | [VERIFY] | Implementar si no |
| **Service Worker / PWA** | ❓ No detectable | Out-of-scope |
| **Font loading** | [VERIFY] — probablemente Google Fonts (malo para OPSEC) | Self-host |
| **CSS / JS minification** | [VERIFY] | Auditar |

## Specific OPSEC + performance improvements

| Cambio | Beneficio | OPSEC impact |
|--------|-----------|--------------|
| **Self-host fonts** (no Google Fonts) | +Performance, +Privacy | ✅ Positivo |
| **No Google Maps embed** | +Performance, +Privacy | ✅ Positivo |
| **No external trackers** | +Performance, +Privacy | ✅ Positivo |
| **Cloudflare CDN + DDoS protection** | +Performance, +Security | ✅ Positivo |
| **Image WebP + lazy load** | +Performance | Neutral |
| **Static site generation (Next.js / Astro)** | +Performance masivo | Neutral |
| **Service Worker** | Offline support | ⚠️ Cuidado con cache de datos sensibles |

## Targets (Core Web Vitals)

| Métrica | Target "Good" | Comentario |
|---------|---------------|------------|
| **LCP (Largest Contentful Paint)** | < 2.5s | Imágenes suelen ser el cuello |
| **FID (First Input Delay)** | < 100ms | JavaScript debería ser mínimo |
| **CLS (Cumulative Layout Shift)** | < 0.1 | Reservar tamaño para imágenes |
| **INP (Interaction to Next Paint)** | < 200ms | Reemplaza FID desde 2024 |
| **TTFB** | < 800ms | Depende del hosting |

## Recommended stack for rebuild

| Capa | Stack | Por qué |
|------|-------|---------|
| **Framework** | Next.js 16 (App Router) | Static export + i18n nativo |
| **Hosting** | Cloudflare Pages | CDN global, gratis, DDoS protection |
| **Dominio** | .com.py (si AIREANA controla) o paragu-ai.com subdomain | [VERIFY] |
| **Imágenes** | Cloudflare Images o next/image | Auto-optimization |
| **Forms** | Basin / Formspree o Cloudflare Workers | Sin backend |
| **Donations** | Open Collective embed | Sin manejar dinero directo |
| **Analytics** | Plausible Cloud o self-hosted | Privacy-first |

## What to verify with browser pass (P1)

1. Lighthouse mobile + desktop
2. WebPageTest desde Asunción (si hay nodo cercano)
3. Chrome DevTools coverage
4. WAVE accessibility
5. Page size breakdown

## Sources

- [WebPageTest](https://www.webpagetest.org/)
- [PageSpeed Insights](https://pagespeed.web.dev/)
- [Lighthouse](https://developer.chrome.com/docs/lighthouse/overview)
- [Core Web Vitals](https://web.dev/vitals/)