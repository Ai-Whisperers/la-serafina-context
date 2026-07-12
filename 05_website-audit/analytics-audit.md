# 4. Analytics Audit

> **TL;DR:** Casi seguro **NO** tienen analytics en su sitio (sin verificación in-page). Facebook Page Insights es su única métrica confiable (5.5K followers en La Serafina, crecimiento orgánico). **No hay Google Analytics, no hay Facebook Pixel verificado**.

## What likely exists

| Herramienta | Estado probable | Notas |
|-------------|-----------------|-------|
| **Google Analytics** | ❓ No detectable | [VERIFY con curl en home] |
| **Google Tag Manager** | ❓ No detectable | [VERIFY] |
| **Facebook Pixel** | ❓ No detectable | [VERIFY] |
| **Plausible / Fathom** | ❓ No detectable | Probablemente no |
| **Matomo (self-hosted)** | ❓ No detectable | — |
| **Search Console** | ❓ No detectable | — |
| **Hotjar / Microsoft Clarity** | ❓ No detectable | — |
| **Mailchimp / Buttondown / Substack** | ❓ No newsletter | — |

## What we DO have visibility into

| Plataforma | Métrica | Valor |
|------------|---------|-------|
| **Facebook La Serafina** | Followers | ~5.5K |
| **Facebook La Serafina** | Reviews | 3 (sin rating promedio público) |
| **Facebook La Serafina** | Posts recientes | Activos |
| **Wikipedia AIREANA** | Backlink de alta autoridad | Sí |
| **Wheree** | Rating | 8.6/10 |
| **LatinPlaces** | Comentarios | 5 |
| **Wanderlog** | Reviews | Sí (positivas) |
| **CDE Direccionario** | Listed | Sí |
| **Google Maps** | Listed | [VERIFY reviews count] |

## What should exist (proposal)

### Mínimo viable (P0)

| Herramienta | Por qué |
|-------------|---------|
| **Plausible Analytics** (self-hosted o cloud) | Privacy-first, no cookie banner needed, GDPR/LEY friendly |
| **Search Console** | Para ver queries de Google |
| **Facebook Page Insights** | Ya lo tienen — maximizar uso |

### Importante (P1)

| Herramienta | Por qué |
|-------------|---------|
| **Buttondown / Listmonk** | Newsletter con privacidad |
| **Open Collective / Donorbox** | Tracking de donaciones sin exponer montos individuales |
| **Calendly / Cal.com** (self-hosted) | Tracking de reservas del espacio |

### Nice-to-have (P2)

| Herramienta | Por qué |
|-------------|---------|
| **Hotjar / Microsoft Clarity** | Heatmaps y session recording — **cuidado OPSEC**: anonimizar IPs |
| **Sentry** | Error tracking en producción |
| **Statuspage** | Uptime público (subscriber engagement) |

## OPSEC implications for analytics

> 🚨 **Crítico:** AIREANA es una ONG LGBTIQ+ en país hostil. **No usar Google Analytics** (comparte datos con Google).

**Por qué Plausible > GA:**

1. **Sin cookies** — no requiere banner
2. **Datos no vendidos** — Plausible es independiente, no vende datos
3. **Hash de IPs** — no almacena IPs completas
4. **Compatible con la ley 6534/2020 de protección de datos personales de Paraguay**
5. **Bajo peso en página** — script < 1KB
6. **Open source** — auditable

**Alternativa aún más privada:** Plausible self-hosted en VPS (más trabajo técnico, más control).

## Lo que NO mediremos

- ❌ Datos personales de usuarios (email, IP completa)
- ❌ Identidad LGBTIQ+ auto-reportada
- ❌ Ingresos por donación individual
- ❌ Uso de Ro'hendu por individuo
- ❌ Geolocalización precisa (solo país/ciudad)

## Sources

- https://www.aireana.org.py/ (curl 2026-07-11)
- [Plausible Analytics](https://plausible.io/)
- [Ley 6534/2020 — Protección de datos personales Paraguay](https://www.bacn.gov.py/leyes-paraguayas/9527/ley-n-6534-de-proteccion-de-datos-personales)