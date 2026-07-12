# 7. What They Need — The Recommendation Stack

> **TL;DR:** P0 = hacer que lo que ya tienen funcione mejor. P1 = agregar funcionalidades evidentes. P2 = profundizar. P3 = pulir. P4 = especular.

## Priority tiers

| Prioridad | Definición | Effort |
|-----------|------------|--------|
| **P0 — Crítico** | Bloquea progreso / pierde donaciones / riesgo seguridad | ~3 semanas |
| **P1 — Alto** | Importante para engagement / conversión / confianza | ~6 semanas |
| **P2 — Medio** | Profundidad de contenido / SEO wins | ~10 semanas |
| **P3 — Pulir** | Performance / a11y / nice-to-have | ~6 semanas |
| **P4 — Especulativo** | Diferir hasta validar | TBD |

---

## P0 — Crítico (~3 semanas)

| Item | Por qué | Cómo | Effort |
|------|---------|------|--------|
| **Fix 5 URLs 404** | Pérdida de backlinks + confusión | Crear redirects 301 a URLs canónicas | 0.5 día |
| **Resolver duplicación /la-serafina/** | SEO + UX | Canonical tag + redirect `/cultura-de-la-no-discriminacion/la-serafina/` → `/la-serafina/` | 0.5 día |
| **Agregar página /donar/** | Captura donantes internacionales | Página bilingüe con enlaces a Mama Cash, Astraea, transferencia bancaria | 1 día |
| **Open Graph + Twitter Card** | Compartir bonito en WhatsApp/FB | Meta tags con imágenes 1200x630 por página | 1 día |
| **Schema.org Organization** | Google rich results | Markup JSON-LD con sede, contacto, horarios | 0.5 día |
| **HSTS + HTTPS forzado** | Seguridad básica | Verificar + agregar header | 0.5 día |
| **Privacy policy + términos** | Legal en Paraguay (Ley 6534/2020) | Página estática bilingüe | 1 día |
| **Plausible Analytics** | Privacy-first, sin cookies | 1 línea de script | 0.5 día |

**Total P0: ~1 semana** (con buffer)

## P1 — Alto (~6 semanas)

| Item | Por qué | Cómo | Effort |
|------|---------|------|--------|
| **Rediseñar arquitectura** | Sitio actual es plano, sin jerarquía | Next.js App Router + i18n es-GN | 1 semana |
| **Agenda online filtrable** | Hoy en Facebook — hay que migrar | CMS ligero (Sanity / Tina / Markdown files) + filtros por categoría | 2 semanas |
| **Sistema de reservas del espacio** | Hoy WhatsApp — no escalable | Calendly / Cal.com + integración WhatsApp | 1 semana |
| **Landing por evento** | Cada viernes cultural con URL compartible | Auto-generada desde agenda CMS | 0.5 semana |
| **Archivo del Festival de Cine** | 19 ediciones, material riquísimo | Micrositio con catálogo histórico | 1 semana |
| **Ro'hendu — formulario cifrado** | Hoy solo teléfono | Formulario con HTTPS + derivación a WhatsApp/email cifrado | 0.5 semana |
| **Newsletter signup** | Cero retención actual | Buttondown + landing + autorespuesta | 0.5 semana |
| **Bilingüe ES + Guaraní** | Oportunidad enorme + AIREANA ya usa guaraní | i18n nativo | 1 semana |
| **Manual de marca mínimo** | Coherencia visual | Logo variants + paleta + tipografía | 1 semana |
| **Google Business Profile** | SEO local | Crear/optimizar + verificar | 0.5 día |

**Total P1: ~6 semanas** (con buffer)

## P2 — Medio (~10 semanas)

| Item | Por qué | Cómo | Effort |
|------|---------|------|--------|
| **Micrositio "De toda la vida"** | Memoria histórica LBT paraguaya | Republicar PDF + nuevos perfiles | 2 semanas |
| **Memoria institucional AIREANA** | Para fundraising + legado | Timeline interactivo 2003-2026 | 2 semanas |
| **Estadísticas Ro'hendu agregadas** | Impact reporting (anonimizadas) | Dashboard público + datos por año | 1 semana |
| **Sección "Cómo ayudar"** | Multi-canal: donar, voluntariar, donar en especie | Landing bilingüe | 1 semana |
| **Manifiesto +立场 documents** | Para nuevos aliados + prensa | PDFs descargables | 1 semana |
| **Búsqueda interna** | UX para sitio mediano | Pagefind (estático) o Algolia | 0.5 semana |
| **Sección "Equipo"** | Humanizar la organización | Perfiles públicos de equipo | 1 semana |
| **Press kit descargable** | Para periodistas | PDF + imágenes en alta | 0.5 semana |
| **Página de artistas pasados** | Construir audiencia futura | Catálogo de artistas del Festival | 1 semana |

**Total P2: ~10 semanas** (con buffer)

## P3 — Pulir (~6 semanas)

| Item | Por qué | Cómo | Effort |
|------|---------|------|--------|
| **Performance: WebP/AVIF** | Carga rápida | next/image + Cloudflare Images | 1 semana |
| **Performance: self-hosted fonts** | OPSEC + velocidad | Variable fonts locales | 0.5 semana |
| **WCAG 2.2 AA audit completo** | Inclusividad | WAVE + axe + screen reader test | 1 semana |
| **Modo oscuro** | UX nocturna | CSS variables + toggle | 0.5 semana |
| **PWA / Service Worker** | Offline support (con cuidado) | Workbox + cache策略 | 1 semana |
| **Animaciones sutiles** | Polish | Framer Motion + respeto prefers-reduced-motion | 1 semana |
| **i18n EN (opcional)** | Para donantes internacionales | Traducción selectiva | 1 semana |

**Total P3: ~6 semanas** (con buffer)

## P4 — Especulativo (diferir)

| Item | Por qué diferir | Validar primero |
|------|-----------------|------------------|
| Tienda merch (camisetas, tote bags) | Operación logística | ¿Hay demanda real? |
| Foro comunidad | Moderación difícil | ¿Hay moderadoras voluntarias? |
| App móvil nativa | Costo alto | ¿Hay uso real que lo justifique? |
| Integración con Ro'hendu CRM | Sensible — solo si AIREANA lo pide | ¿Qué sistema usan hoy? |
| Chat AI WhatsApp | Útil pero sensible | ¿AIREANA acepta conversación automatizada? |
| Live streaming de eventos | Caro | ¿Cuántos eventos? |

---

## Phasing

| Fase | Semanas | Items | Inversión estimada |
|------|---------|-------|---------------------|
| **Fase 1** | 1–3 | Todos los P0 | ~ ₲X (setup) + ₲Y/mes |
| **Fase 2** | 4–9 | P1 núcleo: arquitectura + agenda + reservas + donar | + ₲A |
| **Fase 3** | 10–19 | P1 + P2 | + ₲B |
| **Fase 4** | 20–25 | P3 polish | + ₲C |
| **Fase 5** | TBD | P4 según validación | TBD |

## Lo que NO entra en este scope

- ❌ Reconstruir el Festival de Cine como plataforma de streaming — fuera de scope
- ❌ Operar Ro'hendu directamente — solo mejorar el front-end
- ❌ Manejar dinero — solo enlazar a mecanismos existentes
- ❌ Reclutar personal — AIREANA decide
- ❌ Posicionamiento político directo — solo infraestructura

## Sources

- Ver `sitemap-actual.md`, `whats-broken.md`, `seo-audit.md`, `analytics-audit.md`, `performance-audit.md`, `accessibility-audit.md`
- `Ai-Whisperers/somosgay-context/docs/05_website-audit/what-they-need.md` (sister repo)