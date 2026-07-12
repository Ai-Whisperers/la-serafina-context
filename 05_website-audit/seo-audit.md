# 3. SEO Audit

> **TL;DR:** El sitio tiene **visibilidad básica** pero no está optimizado para SEO local (Asunción, Paraguay). No tiene sitemap.xml público, ni schema markup, ni hreflang. Google indexa pero no rankea para términos clave como "cultura LGBTIQ+ Asunción" o "festival cine LGBTI Paraguay".

## On-page

| Factor | Estado | Acción |
|--------|--------|--------|
| **Title tags** | [VERIFY] — probablemente presente | Auditar con curl |
| **Meta descriptions** | [VERIFY] | Auditar |
| **H1 / estructura headings** | [VERIFY] | Auditar |
| **URLs semánticas** | ✅ `/la-serafina/` funciona | Mantener |
| **Canonical tags** | ❌ No verificado | Crítico para evitar duplicación |
| **Open Graph (og:title, og:image, etc)** | ❌ No verificado | Crítico para compartir |
| **Twitter Card** | ❌ No verificado | Deseable |
| **Schema.org Organization** | ❌ No detectado | Alto valor — sede, contacto, eventos |
| **Schema.org Event** | ❌ No detectado | Alto valor — programación |
| **hreflang (es + gn)** | ❌ No existe | Oportunidad bilingüe |
| **Robots.txt** | [VERIFY] | Auditar |
| **Sitemap.xml** | ❌ No detectado públicamente | Crítico |

## Local SEO (Asunción, Paraguay)

| Factor | Estado | Acción |
|--------|--------|--------|
| **Google Business Profile** | ❓ [VERIFY] | Si no existe, crear |
| **NAP consistency** (Name/Address/Phone) | ✅ Dirección consistente en múltiples sitios (CDE, Wanderlog, FB) | Mantener |
| **Reviews** (Google, Facebook) | ⭐ Reviews en Facebook (~5.5K likes, 3 reseñas); Wheree 8.6/10 | Pedir activamente reviews |
| **Local citations** (Wanderlog, LatinPlaces, Wheree, Near-Place) | ✅ Bien listada en directorios | Mantener y actualizar |
| **Maps embed** | ❓ No verificado | Mejor: link a Maps (no embed, por OPSEC) |

## Keywords (estimación)

| Keyword | Volumen estimado PY | Competencia | Prioridad |
|---------|----------------------|-------------|-----------|
| "espacio cultural asunción" | Medio | Baja | P1 |
| "LGBTIQ+ Paraguay" | Medio | Baja | P1 |
| "festival cine LGBT Paraguay" | Bajo | Baja | P2 |
| "orgullo Asunción" | Medio (estacional) | Alta | P1 |
| "Ro'hendu" / "Rohendu" | Bajo | Cero (marca propia) | P0 |
| "La Serafina Asunción" | Bajo | Cero (marca propia) | P0 |
| "bar LGTBI Asunción" | Bajo | Baja | P2 |
| "airesponsabilidad" / "AIREANA" | Bajo | Cero (marca propia) | P0 |
| "voluntariado ONG Paraguay" | Medio | Media | P3 |
| "cultura paraguaya queer" | Muy bajo | Cero | P2 |

## Backlinks actuales (estimación)

- ✅ Wikipedia (es.wikipedia.org/wiki/Aireana) — backlink de alta autoridad
- ✅ CDE (cde.org.py) — backlink institucional
- ✅ Marcha del Orgullo Wikipedia — backlink probable
- ✅ Directorios: Wanderlog, LatinPlaces, Wheree, Near-Place
- ✅ Menciones en prensa: ABC, Última Hora, La Nación, HOY
- ❌ Falta: backlinks de SOMOSGAY, Coalición TLGBI, Codehupy, Mama Cash, Astraea

## Lo que falta técnicamente

1. **Canonical URL en cada página** — resolver `/la-serafina/` vs `/cultura-de-la-no-discriminacion/la-serafina/`
2. **Sitemap.xml dinámico** — auto-generado, actualizado al publicar
3. **Schema.org Organization** completo (sede, contacto, horarios, redes)
4. **Schema.org Event** para cada viernes cultural / concierto
5. **Open Graph + Twitter Card** con imágenes de 1200x630
6. **Hreflang es-GN + es-PY** si se hace bilingüe
7. **robots.txt explícito** + sitemap.xml apuntando
8. **Google Search Console** configurado (si no lo está) — para indexación

## Lo que NO es SEO pero importa

- **Velocidad** (ver `performance-audit.md`)
- **Accesibilidad** (ver `accessibility-audit.md`) — Google premia a11y
- **Mobile-friendly** — probablemente ok pero verificar
- **HTTPS** — [VERIFY]

## Sources

- https://www.aireana.org.py/ (curl 2026-07-11)
- https://es.wikipedia.org/wiki/Aireana
- https://www.google.com/search?q=la+serafina+asuncion