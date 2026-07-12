# Decisiones Pendientes

> Lo que hay que decidir antes de empezar a construir. Cada decisión tiene su opción recomendada marcada con ⭐.

## D1 — Hosting

| Opción | Pros | Contras | OPSEC |
|--------|------|---------|-------|
| ⭐ **Cloudflare Pages** | Gratis, CDN global, DDoS protection, hard to take down, sin VPS local | Menos customizable que VPS | ✅ Excelente |
| Netlify | Similar a Cloudflare, gratis | Comparable | ✅ |
| VPS propio en Paraguay | Control total, datos locales | Single point of seizure, mantenimiento, costo | ⚠️ Riesgo político |
| AWS / GCP | Enterprise-grade | Caro, vendor lock-in | ⚠️ AWS tiene datacenter en Brasil — verificable |

**Recomendación:** **Cloudflare Pages**. Es el patrón recomendado para ONGs LGBTIQ+ en países hostiles. Libre de vendor lock-in local.

**Decisión:** Pendiente aprobación AIREANA.

## D2 — Dominio

| Opción | Pros | Contras | OPSEC |
|--------|------|---------|-------|
| **aireana.org.py** (existente) | Continuidad, branding | Mantener el .py atrae atención local | ⚠️ |
| **aireana.org** (registrar) | Internacional, .org = nonprofit | Costo, dominio actualmente no registrado | ✅ Mejor |
| **laserafina.org** | SEO local claro | No es la marca madre | ✅ |
| **Subdomain paragu-ai.com** (`aireana.paragu-ai.com`) | Sin costo, infra lista | Branding compartido con Ai-Whisperers | ⚠️ Revela vendor |
| **paragu-ai.com/apps/aireana** | Patrón del monorepo | Branding compartido | ⚠️ Revela vendor |

**Recomendación:** **Registrar `aireana.org` como dominio primario** + mantener `aireana.org.py` con redirect 301. Costo anual: ~$15 USD.

**Decisión:** Pendiente aprobación AIREANA + investigación de disponibilidad.

## D3 — Branding

| Opción | Pros | Contras |
|--------|------|---------|
| ⭐ **"Built by community, for community"** | Cero exposición vendor | Necesita diseño cuidado |
| "Built by Ai-Whisperers" | Branding para nosotros | Atrae atención política a AIREANA |
| "Built with support from [Funder]" | Refuerza relación con donor | Depende del funder |

**Recomendación:** **"Built by community"** con crédito al final del footer si AIREANA quiere. Sin logo de Ai-Whisperers en header.

**Decisión:** Pendiente aprobación AIREANA.

## D4 — Idioma

| Opción | Pros | Contras |
|--------|------|---------|
| ⭐ **Solo español** | Simple | Pierde audiencia guaraní-hablante (~30% PY) |
| ⭐ **Bilingüe ES + Guaraní** (i18n nativo) | Inclusivo, AIREANA ya usa guaraní | Más trabajo de traducción |
| **Trilingüe ES + Guaraní + EN** | Para donors internacionales | Mucho más trabajo |

**Recomendación:** **Bilingüe ES + Guaraní** desde el inicio. EN solo si AIREANA quiere (P3).

**Decisión:** Pendiente aprobación AIREANA.

## D5 — Manejo de datos

| Opción | Pros | Contras |
|--------|------|---------|
| ⭐ **Estático (Next.js SSG)** | Sin base de datos, sin leaks, sin admin panel que hackear | Menos dinámico |
| WordPress con admin | AIREANA puede editar | Más superficie de ataque |
| Headless CMS (Sanity, Tina) | AIREANA edita, nosotros controlamos backend | Costo de servicio |

**Recomendación:** **Next.js con markdown files + frontmatter**. AIREANA edita vía GitHub (o PRs desde un editor visual). Cero base de datos.

**Decisión:** Pendiente aprobación AIREANA.

## D6 — Donaciones

| Opción | Pros | Contras |
|--------|------|---------|
| ⭐ **Enlace a fondos establecidos** (Mama Cash, Astraea) | Cero manejo de dinero, deducible en algunos países | No atribuible directo a AIREANA |
| **Open Collective** | Transparente, deducible, baja comisión | Setup inicial + AIREANA necesita personería |
| **Stripe directo** | Atribución clara | Manejo de dinero, PCI compliance |
| **MercadoPago** | Local, popular en PY | Comisiones, manejo de datos |

**Recomendación:** **Fase 1: enlace a fondos. Fase 2: explorar Open Collective.**

**Decisión:** Pendiente aprobación AIREANA.

## D7 — Comunicación externa

| Opción | Pros | Contras |
|--------|------|---------|
| ⭐ **Draft + verify + manual send** | OPSEC-safe, AIREANA aprueba cada envío | Más lento |
| Auto-send desde Hermes | Eficiente | Riesgo político si enviamos algo mal |

**Recomendación:** **Draft + verify siempre.** Nunca auto-send en nombre de AIREANA.

**Decisión:** Confirmada. Ver `AGENTS.md`.

## D8 — Timeline

| Hito | Fecha tentativa |
|------|-----------------|
| Confirmar contacto con AIREANA | Semana 1 |
| Enviar intake questionnaire | Semana 1 |
| Respuesta esperada | Semana 2-3 |
| Aprobación scope P0 | Semana 4 |
| Construcción Fase 1 (P0) | Semanas 5-7 |
| Review + iteración | Semana 8 |
| Lanzamiento Fase 1 | Semana 9 |

**Decisión:** Pendiente aprobación Ivan para enviar intake.

## Sources

- `Ai-Whisperers/somosgay-context/06_decisions/decisiones-pendientes.md` (sister repo)
- `client-strategy-research-repo/references/sensitive-vertical-ngo-engagement-2026-07-10.md`