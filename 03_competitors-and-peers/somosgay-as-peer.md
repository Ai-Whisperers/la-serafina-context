# SOMOSGAY como organización hermana (peer)

> **TL;DR:** AIREANA y SOMOSGAY son **organizaciones hermanas** en Paraguay — lesbianas + gays, respectivamente, fundadas con ~2 años de diferencia, compartiendo coaliciones y muchos aliados. Esta ficha documenta la relación y lo que AIREANA puede aprender (y viceversa) de SOMOSGAY.

## Tabla comparativa

| Aspecto | AIREANA | SOMOSGAY |
|---------|---------|----------|
| Fundación | **Febrero 2003** | 2005/2009 (formalizada 23 mayo 2009) |
| Foco | Lesbianas (LBT específico) | Gay men + salud comunitaria |
| Sede | La Serafina, Eligio Ayala 907 | Independencia Nacional 1032 c/ Manduvirá |
| Presidente | Carolina Robledo | Paloma Vera (ED) + Simón Cazal (co-founder) |
| Premio internacional | **Premio Francés 2011** (15.000€, Fillon) | amfAR, AHF, Global Fund grants |
| Programa estrella | Festival LesBiGayTrans (21 ediciones) | Clínica Kunu'u (PrEP, TARV) |
| Línea de atención | Ro'hendu (2013) | Ñande Rekorã (community care system) |
| Grupo juvenil | Desobedientas (LBT 18-29) | Tekoharã + youth shelter |
| Coaliciones compartidas | Coalición TLGBI, Codehupy, RCTD, OEA, Mercosur LGBTI | Mismas |
| Site status | aireana.org.py (WordPress, 13 rutas verificadas 200 OK 2026-07-12) | somosgay.org (Next.js, parcialmente roto 2026-07-10) |

## Coaliciones compartidas

Ambas son miembros activos de:

- **Coalición TLGBI Paraguay** — AIREANA co-fundadora (2009), SOMOSGAY co-fundadora
- **Codehupy** (Coordinadora de Derechos Humanos del Paraguay) — AIREANA desde 2016, SOMOSGAY activo
- **RCTD** (Red Contra Toda Forma de Discriminación) — AIREANA co-fundadora (2007)
- **Coalición LGBTTTI OEA** — AIREANA desde 2008/2011, SOMOSGAY activo
- **DIVERCILAC Mercosur LGBTI** — ambas
- **Marcha del Orgullo Asunción** — ambas co-organizan

## Co-organización histórica

AIREANA + SOMOSGAY co-organizan:

- **Marcha del Orgullo** anual en Asunción
- **Caso 108** — conmemoraciones anuales (1 sept muerte Aranda, 30 sept "Carta de un Amoral")
- **Ro'hendu** + **Ñande Rekorã** se complementan (Ro'hendu: lesbianas; Ñande Rekorã: hombres)
- **Coalición TLGBI** — trabajo político compartido
- **Codehupy** — co-autoría del Informe Anual sobre Situación de DDHH en Paraguay

## Lo que AIREANA puede aprender de SOMOSGAY

| Tema | Lo que tiene SOMOSGAY | Lo que AIREANA podría adoptar |
|------|------------------------|--------------------------------|
| **Clínica + salud** | Clínica Kunu'u modelo servicio público | Posible alianza para PrEP inclusiva de lesbianas (a menudo invisible en programas de VIH) |
| **Tono directo** | Simón Cazal: "estado supremacista, heteropatriarcal, capitalista" | Ya tienen tono similar (Rosa Posa: "Don't be pitiful") |
| **Engagement modelo** | Engaged con Ai-Whisperers via 120+ docs context repo + questionnaire | Estamos en posición similar |
| **Tech audit** | Live HTTP probe encontró 50% de páginas rotas | Nuestro probe encuentra 100% OK — pero las páginas pueden estar sub-optimizadas |
| **Tatucada pattern** | [NO — Tatucada es de AIREANA] | — |
| **Podcasting** | Aireatena tiene 12 episodios + Spotify | Similar |

## Lo que SOMOSGAY puede aprender de AIREANA

| Tema | Lo que tiene AIREANA | Lo que SOMOSGAY podría adoptar |
|------|----------------------|--------------------------------|
| **Premio internacional** | Premio Francés 2011 — visibilidad masiva | Métrica de impacto no replicable fácilmente |
| **Tatucada** | Batucada callejera — visibilidad pública + body-territory | Podrían replicar |
| **Naming en guaraní** | Tatucada, Ro'hendu, Aireana, Desobedientas | SOMOSGAY usa Tekoporã, Kunu'u, Tekoharã — también bilingüe pero menos |
| **Festival de cine** | 21 ediciones, 700+ films, 24K+ asistentes | SOMOSGAY no tiene |
| **Memoria lésbica** | Casa Serafina Dávalos 2025-2026 | SOMOSGAY tiene Caso 108 + youth shelter |
| **Publicaciones** | "De toda la vida" (libro AIREANA 2012) | SOMOSGAY no tiene libro propio |

## Coordinación con Ai-Whisperers

| Engagement | Repo | Foco |
|------------|------|------|
| SOMOSGAY | `Ai-Whisperers/somosgay-context` (120+ docs) | Health clinic + community programs |
| AIREANA | `Ai-Whisperers/la-serafina-context` (80+ docs) | Cultural space + helpline + festival |

**Recomendación operativa:**

1. **Engagement paralelo pero no fusionado** — cada org tiene su propia dinámica. No intentar hacer un solo proyecto compartido.
2. **Tech stack compartido** — paragu-ai-platform + Next.js + Tailwind + JSON-LD pattern. Ahorra trabajo.
3. **Donor relations separadas** — no compartir donor lists sin permiso explícito.
4. **OPSEC consistente** — ambos enfrentan riesgo político. Patrones de seguridad deben ser similares.
5. **Coordinación semanal** — si Ai-Whisperers tiene engagements activos con ambos, Kiki/Ivan deben sincronizar.

## Para el sitio demo de AIREANA

El demo site actual (`laserafina.paragu-ai.com`) **NO debe enlazar** a somosgay.org directamente, salvo en:

- Coaliciones compartidas (Coalición TLGBI, Codehupy)
- Menciones históricas del Caso 108 (memoria compartida)

Esto es por:

- **OPSEC** — no exponer el vínculo operacional entre las dos orgs en el demo público
- **Branding** — AIREANA tiene su propia identidad (más cultural-poética), SOMOSGAY tiene otra (más salud-política)
- **Donor separation** — funders no deben inferir cross-subsidization

## Sources

- https://www.aireana.org.py/coalicion-lgtttbits/ — coaliciones compartidas
- https://es.wikipedia.org/wiki/Sim%C3%B3n_Cazal — SOMOSGAY
- https://www.somosgay.org/about — SOMOSGAY
- `Ai-Whisperers/somosgay-context` — 120+ docs context repo
- `03_competitors-and-peers/paraguayan-lgbti-orgs.md` — peers
- `01_organization/coalicion-tlgbi-completo.md` — coaliciones
- `01_organization/voces-citadas.md` — personas compartidas entre coaliciones