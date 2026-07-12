# 2. What's Broken or Missing

> **TL;DR:** Lo más crítico: **sin donaciones, sin agenda online, sin sistema de reservas, sin chat/whatsapp bot, sin búsqueda**. También: 5+ URLs rotas, sin sitemap.xml público, sin Open Graph tags verificados.

## Broken (en aireana.org.py)

### Crítico

1. **5+ URLs devuelven 404** (sitemap-actual.md). Cada una es una oportunidad de backlink perdida.
   - `/secciones/la-serafina/`
   - `/sobre-aireana/`
   - `/donaciones/`
   - `/aireatena/`
   - `/cultura-de-la-no-discriminacion/`
2. **Sin página /donar/**: cero mecanismo de donación online. Para una ONG que depende de fondos internacionales, esto es sangría.
3. **Sin página /agenda/ o /eventos/**: no hay calendario público. La agenda vive en Facebook.
4. **Sin página de Ro'hendu con formulario**: solo descripción de la línea. Sin canal web.
5. **Sin landing individual por evento**: cada viernes cultural o concierto debería tener su URL.

### Importante

6. **Duplicación de URL de La Serafina**: `/la-serafina/` y `/cultura-de-la-no-discriminacion/la-serafina/` son el mismo contenido. Riesgo SEO.
7. **Sin sitemap.xml verificable**: malas noticias para Google.
8. **Sin RSS / feed**: cero suscripción.
9. **Sin Open Graph tags verificados**: compartir en WhatsApp / Facebook no muestra preview bonito.
10. **Sin Schema.org markup**: ni Organization ni Event.

### Nice-to-have

11. **Sin blog**: no hay canal editorial. La historia se pierde en notas de Facebook.
12. **Sin sección de prensa**: no hay kit de prensa descargable.
13. **Sin newsletter signup**: cero mecanismo de retención de audiencia.
14. **Sin búsqueda interna**: irrelevante en sitio pequeño pero molesta.
15. **Sin versión en guaraní**: una oportunidad enorme — AIREANA ya tiene varios términos en guaraní.
16. **Sin modo oscuro**: minoritario pero mejora UX nocturna.

## Missing (no existe, debería existir)

### Funcionalidad

| Funcionalidad | Prioridad | Notas |
|---------------|-----------|-------|
| Sistema de reservas del espacio | P0 | Hoy por WhatsApp — funcional pero no escalable |
| Agenda online filtrable | P0 | Hoy en Facebook — hay que migrar |
| Donaciones recurrentes | P0 | Hoy por transferencia bancaria |
| Newsletter | P1 | Hoy no existe |
| Chat WhatsApp Business | P1 | Hoy responden manualmente |
| Calendario descargable (iCal) | P2 | Power-user feature |
| Tienda merch | P3 | Ingreso complementario |
| Foro comunidad | P3 | Moderación difícil —谨慎 |
| Multi-idioma EN | P3 | Para aliados internacionales |

### Contenido

| Contenido | Prioridad | Notas |
|-----------|-----------|-------|
| Archivo del Festival de Cine (19 ediciones) | P0 | Material riquísimo sin publicar |
| Biografías de lesbianas paraguayas (De toda la vida) | P1 | Publicado en PDF — se podría republicar |
| Calendario de Ro'hendu (estadísticas anuales agregadas) | P1 | Respetando privacidad |
| Memoria institucional AIREANA 2003-2026 | P1 | Para fundraising |
| Catálogo de artistas/programación | P2 | Para press |
| Manifiesto /立场 document | P2 | Para nuevos aliados |
| Bilingual EN section for international donors | P3 | Para Mama Cash, Astraea |

## What IS working well (reconocer)

- ✅ El sitio **carga** (200 OK en todas las URLs principales).
- ✅ Hay **separación clara** entre AIREANA, La Serafina, Ro'hendu, Festival de Cine, La Tatucada — sub-marcas visibles.
- ✅ **Datos de contacto visibles** (teléfono, email, dirección).
- ✅ **Tono coherente** — cálido, defensor, sin postureo.
- ✅ **Imágenes reales** (de eventos), no stock photos.
- ✅ El sitio **NO** parece Wordpress básico + plugin barato. Hay un trabajo de diseño previo, aunque limitado.

## Lo que NO verificamos en esta sesión

- ❌ Funcionamiento de formularios de contacto (¿llegan los submits?)
- ❌ Búsqueda de emails en blacklist / spam
- ❌ Performance real (PageSpeed Insights) — ver `performance-audit.md`
- ❌ WCAG detallado — ver `accessibility-audit.md`

## Sources

- Verificación curl 2026-07-11 desde este VPS
- https://www.aireana.org.py/ y subpáginas