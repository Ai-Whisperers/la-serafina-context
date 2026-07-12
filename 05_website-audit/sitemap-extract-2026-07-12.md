# Sitemap Extraction — aireana.org.py (2026-07-12)

> **TL;DR:** El sitemap de AIREANA (`aireana.org.py/sitemap.xml`) contiene **387 URLs**. Lo crawlamos el 2026-07-11. Acá el inventario completo + qué tenemos documentado vs qué falta.

## El sitemap completo

### Categorías encontradas

| Categoría | URLs | Status |
|-----------|------|--------|
| Páginas institucionales (la-serafina, historia, programas, etc.) | ~29 | ✅ Cubierto en `01_organization/` |
| Posts de blog/noticias (2005-2026) | **~267** | ⚠️ Parcial — solo extractos destacados |
| Ediciones del Festival (21 subpáginas) | 21 | ✅ Cubierto en `festival-de-cine-completo.md` |
| Entradas de línea de tiempo | ~28 | ✅ Cubierto en `timeline-1959-2026.md` |
| Categorías de blog | ~18 | ✅ Cubierto |
| Páginas de autor | ~6 | ✅ Cubierto en `voces-citadas.md` |
| Páginas de archivo (date-based) | ~12 | ❌ Sin extraer |
| Layouts del tema WordPress (wp-content, etc.) | ~6 | ❌ No relevante |
| **TOTAL** | **387** | |

### Páginas institucionales críticas (extraídas)

| URL | Status |
|-----|--------|
| `/` (home) | ✅ |
| `/la-serafina/` | ✅ → `la-serafina-overview.md` |
| `/festival-de-cine/` | ✅ → `festival-de-cine-completo.md` |
| `/ro-hendu/` | ✅ → `ro-hendu-completo.md` |
| `/la-tatucada/` | ✅ → `la-tatucada-completo.md` |
| `/aireatena/` | ✅ → `aireatena-podcast-completo.md` |
| `/coalicion-tlgbi/` | ✅ → `coalicion-tlgbi-completo.md` |
| `/privadas-de-libertad/` | ✅ → `timeline-privadas-de-libertad.md` |
| `/violencia-contra-lesbianas/` | ✅ Cubierto |
| `/desobedientas/` (grupo juvenil LBT) | ⚠️ Mencionado |
| `/articulacion-feminista-del-paraguay/` | ⚠️ Mencionado |
| `/alienzas/` | ⚠️ Mencionado |
| `/un-poco-de-historia/` | ⚠️ Mencionado |
| `/producciones/` (audiovisual) | ⚠️ Mencionado (Vulvasónicas, Lesbiatán, Rohendu) |
| `/videos-coalicion/` | ✅ Parcial |

### Posts destacados (los más relevantes)

Los posts del blog no se han extraído todos. Los siguientes son los **más relevantes para el demo site / cliente**:

| Tema | URL pattern | Acción recomendada |
|------|-------------|-------------------|
| Visitas íntimas (cronología 25 fechas) | `/categoria/.../visitas-intimas/` | ✅ Documentado en `timeline-privadas-de-libertad.md` |
| Caso Colegio Huerto (2022) | `/2022/03/colegio-huerto/` | ✅ En `casos-simbolicos-completos.md` |
| Premio Francés 2011 | `/2011/12/premio-frances/` | ✅ En `history-and-timeline.md` |
| Casa Serafina Dávalos 2025-2026 | `/2025/.../casa-serafina-davalos/` | ✅ En `caso-serafina-davalos-restauracion.md` |
| Venir al Sur (encuentros) | `/venir-al-sur/` | ✅ En `venir-al-sur-encuentro-lesbitrans.md` |
| Editoriales y pronunciamientos | `/2024/.../editorial-...` | ⚠️ Parcial |

### Lo que falta extraer (gap)

Para llegar a **100% del sitemap** faltaría:

1. **~200 posts de blog 2018-2025** — mayoría son notas de prensa sobre eventos, premios, posicionamientos. Útiles para archivo, no críticos para el demo.
2. **6 subpáginas institucionales** marcadas ⚠️ arriba — agregaría ~30 minutos de extracción.
3. **12 archivos por fecha** — navegacionales, no agregan contenido.
4. **~18 categorías de blog** — navegacionales.

### Decisión

**NO extraemos los ~200 posts uno por uno.** Razones:

1. **Demasiado tiempo** — 200 × 5 min = 16 horas de extracción.
2. **Ruido > señal** — la mayoría son notas repetitivas (anuncios de eventos, gacetillas de prensa).
3. **Ya tenemos las fuentes principales** — Codehupy informes anuales, Wikipedia, CDE, prensa destacada (ABC, Última Hora, EFE, Diario HOY).
4. **Mejor estrategia**: extracción **on-demand** cuando se necesite un dato específico.

## Plan de extracción on-demand (si se necesita)

Para cuando AIREANA pregunta algo y no tenemos la respuesta en research:

```bash
# 1. Buscar el post específico en el sitemap
grep "tema-buscado" <(curl -s https://www.aireana.org.py/sitemap.xml)

# 2. Extraer el contenido
curl -s -A "Mozilla/5.0" "https://www.aireana.org.py/<ruta-del-post>/" | \
  python3 -c "import sys, re; html = sys.stdin.read(); 
  content = re.sub('<[^>]+>', ' ', html); 
  content = re.sub('\s+', ' ', content); 
  print(content[:5000])"

# 3. Documentar en el doc correspondiente de 01_organization/
```

## Cron job sugerido (futuro)

Si en algún momento queremos **monitoreo sistemático** de los posts de AIREANA (sin scraping agresivo):

```yaml
name: aireana-watchdog
schedule: weekly
prompt: |
  Fetch aireana.org.py/sitemap.xml.
  Compare against last known list.
  If there are new URLs, fetch first 500 chars of each.
  If anything looks significant (eventos, premios, posicionamientos políticos),
  add to 02_research/notas-prensa.md with source URL.
  Never contact AIREANA. Read-only.
```

---

## Métricas de este análisis

- **URLs totales indexadas:** 387
- **Documentadas en el repo:** ~80
- **Cubrimiento:** ~20% (URLs)
- **Cubrimiento de páginas institucionales:** ~85% (29 páginas, 25 documentadas)
- **Cubrimiento de ediciones Festival:** 100% (21/21)
- **Cubrimiento de posts del blog:** ~5% (~13/267)

## Por qué este porcentaje es suficiente

El demo site no necesita los 267 posts. Necesita:
- ✅ Datos institucionales (cubierto al 85%)
- ✅ Hitos y fechas (cubierto al 100% vía `timeline-1959-2026.md`)
- ✅ Números duros (películas, asistentes, ediciones — cubierto al 100%)
- ✅ Casos emblemáticos (cubierto al 100% en `casos-simbolicos-completos.md`)

Lo que **falta del blog** son gacetillas que solo servirían si AIREANA pide "necesito el archivo histórico completo".

---

*Documento creado 2026-07-12 como respuesta al análisis de gaps del cuestionario.*
*Sigue el patrón del `06_decisions/decisiones-pendientes.md` — OPSEC-safe.*