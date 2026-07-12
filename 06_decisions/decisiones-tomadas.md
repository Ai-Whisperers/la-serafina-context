# Decisiones Tomadas — AIREANA / La Serafina

> **TL;DR:** Log cronológico de decisiones que afectan al engagement. Cada decisión documenta **qué** se decidió, **cuándo**, **por qué**, **alternativas consideradas**, y **cómo revertir si falla**.

## Última actualización: 2026-07-12

---

## D-2026-07-12-01 — Construir 4 páginas core en el demo site

**Decisión:** En el demo site `apps/la-serafina-site`, construir 4 páginas nuevas: `/espacio`, `/ro-hendu`, `/historia`, `/apoyar`.

**Contexto:** El sitio tenía solo 1 página (`/`) + `/gn` + `/privacidad`. El nav prometía 7 destinos, 6 eran 404.

**Alternativas consideradas:**
1. **A:** Strip nav a las páginas que existen → rechazo (mala UX)
2. **B:** Marcar las rutas como "Próximamente" con badge → rechazo (lite)
3. **C:** Construir las 4 páginas con contenido del research → **elegido**

**Por qué:** El research tenía el contenido. 4 páginas × ~3 KB JSON = 12 KB, factible en una sesión.

**Reversión:** Si AIREANA no quiere esas páginas, basta remover el directorio `app/<ruta>/`.

**Status:** ✅ Implementado.

---

## D-2026-07-12-02 — Convertir Header en client component, extraer MobileMenu

**Decisión:** Header queda como `"use client"` (necesita `usePathname` para active state). MobileMenu se extrae a su propio componente client.

**Contexto:** Auditoría previa marcó Header como innecesariamente client. Pero al revisar: necesita usePathname para highlight del active item. La parte que realmente se beneficia de extracción es el menu hamburguesa.

**Alternativas consideradas:**
1. **A:** Convertir todo Header en server + pasar pathname via middleware → rechazo (complejo)
2. **B:** Mantener Header client, extraer MobileMenu → **elegido** (mantiene usePathname)
3. **C:** Sacar active highlighting → rechazo (UX peor)

**Por qué:** El bundle del MobileMenu se carga solo en mobile. El Header desktop sigue server-rendered cuando JS está deshabilitado.

**Reversión:** Trivial — mover todo de vuelta a Header.tsx.

**Status:** ✅ Implementado.

---

## D-2026-07-12-03 — Fix canonical URL bug (somosgay → laserafina)

**Decisión:** En `app/layout.tsx` y `app/page.tsx`, cambiar canonical de `/` o `${SITE_URL}/` a `SITE_URL` (sin trailing slash).

**Contexto:** Auditoría previa identificó que canonical era `https://somosgay.paragu-ai.com` (copiado del template). Google iba a tratar todas las páginas como duplicados del sitio equivocado.

**Alternativas consideradas:**
1. **A:** Hardcodear la URL absoluta sin SITE_URL → rechazo (no escalable)
2. **B:** Usar `${SITE_URL}` (sin trailing slash) → **elegido** (más limpio)
3. **C:** Usar `${SITE_URL}/` (con trailing slash) → rechazo (inconsistencia con metadataBase)

**Por qué:** Next.js best practice para canonical es usar SITE_URL directamente. La barra final genera inconsistencias con metadataBase.

**Reversión:** Trivial.

**Status:** ✅ Implementado.

---

## D-2026-07-12-04 — Corregir Instagram handle en JSON-LD

**Decisión:** Cambiar `"https://www.instagram.com/laserafinapy/"` → `"https://www.instagram.com/laserapy/"` + agregar 5 handles más verificados del footer de aireana.org.py.

**Contexto:** La auditoría + el research habían identificado el handle `@laserafinapy` (con ñ) como incorrecto. El real según footer oficial es `@laserapy` (sin ñ).

**Alternativas consideradas:**
1. **A:** Mantener `@laserafinapy` por consistencia con Linktree → rechazo (Linktree es la excepción, no la regla)
2. **B:** Solo cambiar el handle → rechazo (perdimos TikTok, YouTube, etc.)
3. **C:** Cambiar + expandir a 9 handles verificados → **elegido**

**Por qué:** Google y los LLMs indexan sameAs[]. Mejor tener todos los reales.

**Reversión:** Trivial.

**Status:** ✅ Implementado.

---

## D-2026-07-12-05 — No traducir cuestionario al guaraní

**Decisión:** Mantener el cuestionario `intake-aireana-completo.md` solo en español.

**Contexto:** Considerado traducir al guaraní parcial (bloques 0, 1, 7, 13).

**Alternativas consideradas:**
1. **A:** Traducción completa → rechazo (costo)
2. **B:** Traducción parcial (bloques sensibles) → rechazo (AIREANA opera internamente en español)
3. **C:** Solo español → **elegido**

**Por qué:** AIREANA se comunica internamente en español. La traducción agregaría barrera sin valor. El glosario anexo (Anexo 5) documenta los términos sagrados en guaraní para que Ai-Whisperers los respete.

**Reversión:** Si AIREANA pide versión en guaraní, ~3 horas de traducción humana especializada (no automática).

**Status:** ✅ Implementado.

---

## D-2026-07-12-06 — Extraer 3 sub-páginas institucionales del sitemap

**Decisión:** Agregar 3 docs al research: `producciones-audiovisuales.md`, `desobedientas-grupo-juvenil.md`, `articulacion-feminista.md`.

**Contexto:** El sitemap revelaba 6 sub-páginas institucionales no documentadas (desobedientas, producciones, articulación feminista, alianzas, un-poco-de-historia, videos-coalición). De las 6, priorizamos las 3 más relevantes para el demo.

**Alternativas consideradas:**
1. **A:** Extraer las 6 → rechazo (tiempo)
2. **B:** Extraer solo 1 (la más importante) → rechazo (perdemos el patrón)
3. **C:** Extraer 3 + documentar las 3 restantes como gaps en `sitemap-extract-2026-07-12.md` → **elegido**

**Por qué:** 3 docs × 10 min = 30 min. Cubre los programas no documentados (Desobedientas, producciones) y una alianza clave (Articulación Feminista).

**Reversión:** N/A — solo agrega docs.

**Status:** ✅ Implementado.

---

## D-2026-07-12-07 — No extraer los 200+ posts del blog de aireana.org.py

**Decisión:** Documentar el sitemap completo (387 URLs) + identificar gaps + NO extraer los ~267 posts del blog uno por uno.

**Contexto:** Sitemap crawl reveló 267 posts de blog + 29 páginas institucionales + 21 ediciones Festival + 28 entradas de timeline + 18 categorías.

**Alternativas consideradas:**
1. **A:** Extraer los 267 posts → rechazo (16+ horas de trabajo)
2. **B:** Extracción on-demand según necesidad → **elegido**
3. **C:** Suscribirse a RSS + monitoreo automático → pendiente (cron job)

**Por qué:** El demo site no necesita los 267 posts. Tiene los hitos, las fechas, los datos duros. Los posts son gacetillas.

**Reversión:** Si AIREANA pide "necesito el archivo histórico completo", empezar el crawl en orden cronológico.

**Status:** ✅ Implementado (documentación) + pendiente (cron job).

---

## D-2026-07-12-08 — Cuestionario v3.1 con 6 anexos

**Decisión:** Agregar al cuestionario 6 anexos: matriz de priorización (BRS), pricing matrix, checklist pre-propuesta, timeline sugerido, glosario AIREANA, referencias cruzadas.

**Contexto:** El cuestionario v3 era "data collection". Los anexos lo convierten en "decision tool".

**Alternativas consideradas:**
1. **A:** Cuestionario solo → rechazo (es solo recolección)
2. **B:** Cuestionario + 1 anexo (pricing) → rechazo (insuficiente)
3. **C:** Cuestionario + 6 anexos → **elegido**

**Por qué:** El cuestionario responde "¿qué necesita AIREANA?" pero no "¿qué hago con la respuesta?". Los anexos cierran el loop.

**Reversión:** N/A — los anexos son consultivos, no comprometen.

**Status:** ✅ Implementado.

---

## D-2026-07-12-09 — Pricing de 3 tiers con descuento ONG -20%

**Decisión:** Proponer 3 tiers (USD 800-9.000) con descuento automático del 20% para AIREANA por ser ONG LGBTIQ+.

**Contexto:** El pattern de Sonia/Nexa tenía pricing específico. Adaptamos a AIREANA.

**Alternativas consideradas:**
1. **A:** Precio único (como Sonia hoy) → rechazo (no escalable)
2. **B:** 3 tiers sin descuento → rechazo (no es política de Ai-Whisperers)
3. **C:** 3 tiers + -20% ONG → **elegido**

**Por qué:** Los tiers dan opciones según capacidad. El descuento es política interna documentada en Anexo 2.

**Reversión:** Si el descuento afecta el margen, ajustar caso por caso.

**Status:** ✅ Documentado. Pendiente confirmación con Ivan.

---

## D-2026-07-12-10 — Bloque 0 OPSEC primero en cuestionario

**Decisión:** El primer bloque del cuestionario es OPSEC (seguridad), no identidad o misión.

**Contexto:** AIREANA trabaja en contexto de riesgo. Cualquier decisión técnica/de comunicación debe pasar el filtro de seguridad antes.

**Alternativas consideradas:**
1. **A:** Empezar con identidad → rechazo (parece "normal" pero invisibiliza el riesgo)
2. **B:** Empezar con OPSEC → **elegido**

**Por qué:** Para clientes LGBTIQ+ en Paraguay, la seguridad no es opcional. Hacerla visible desde el bloque 0 normaliza la conversación.

**Reversión:** Si AIREANA dice "no necesito OPSEC, confío en ustedes", se mueve al final como Anexo.

**Status:** ✅ Implementado.

---

## Decisiones pendientes (de las sesiones previas)

Ver `decisiones-pendientes.md` (anterior) para decisiones que aún no se han resuelto:
- ¿Cuándo contactar a AIREANA formalmente?
- ¿Quién es el contacto primario? (Carolina Robledo presumida)
- ¿Qué nivel de formalidad requiere la propuesta?

---

*Log mantenido por Erebus. Próxima revisión cuando se envíe el cuestionario a AIREANA.*