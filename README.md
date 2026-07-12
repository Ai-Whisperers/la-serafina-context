# La Serafina — Context Repo

> **TL;DR:** La Serafina es el proyecto cultural más emblemático de **AIREANA**, organización feminista paraguaya que trabaja por los derechos de las lesbianas y personas en disidencia sexual y genérica desde 2003. La Serafina funciona como **sede + espacio cultural** abierto al público desde 2005 en Eligio Ayala 907 c/ Tacuary, Asunción. Este repo documenta la organización, su contexto político, su huella digital actual y propone un plan de construcción de sitio web en `paragu-ai-platform`.

---

## 📊 Estado del repo (2026-07-12)

- **80 documentos** en 10 carpetas
- **~58K palabras** de research verificado
- **135+ URLs** únicas verificadas vía curl/web_extract
- **Demo site:** 15 rutas activas en `apps/la-serafina-site` (paragu-ai-platform)
- **Cuestionario:** 210 preguntas + 6 anexos en `08_questionnaires/intake-aireana-completo.md`
- **Decisiones:** 10 documentadas en `06_decisions/decisiones-tomadas.md`
- **Demo público:** https://laserafina.paragu-ai.com

---

## Resumen ejecutivo

- **Qué es:** Centro cultural feminista + bar + espacio multiuso en Asunción, Paraguay. Es la sede operativa de AIREANA desde 2005.
- **Quién lo opera:** AIREANA (Grupo por los derechos de las lesbianas), ONG fundada en 2003, ganadora del Premio Libertad, Igualdad, Fraternidad del gobierno francés en 2011.
- **Qué hacen:** Programación cultural semanal (viernes culturales), festival anual de cine LGBTIQ+, línea de atención contra la violencia (Ro'hendu), producción de podcast (Aireatena), intervenciones callejeras (La Tatucada), alquiler del espacio para eventos privados.
- **Estado digital:** Sitio web vivo (aireana.org.py), Facebook activo (5.5K followers en LaSerafinaPy), página de La Serafina poco actualizada, sin ecommerce, sin reservas online, sin chatbot.
- **Por qué importa para Ai-Whisperers:** Oportunidad de construir un sitio web profesional bilingüe (ES + Guaraní) en `paragu-ai-platform` que les dé (a) agenda pública consultable, (b) reservas de espacio privadas, (c) canal de donaciones internacional, (d) hub de prensa y memoria histórica, (e) portal de Ro'hendu integrado.

## Datos clave

| Campo | Valor |
|-------|-------|
| Nombre completo | La Serafina — Espacio Cultural Feminista |
| Organización madre | AIREANA — Grupo por los derechos de las lesbianas |
| Dirección | Eligio Ayala 907 c/ Tacuary, Asunción 001218, Paraguay |
| Teléfono principal | +595 21 492 835 (fijo) |
| WhatsApp / celular | +595 984 123381 |
| Email público | aireanaparaguay@gmail.com (FB) / aireana@aireana.org.py (CDE) |
| Web | https://www.aireana.org.py/la-serafina/ |
| Facebook (La Serafina) | https://www.facebook.com/LaSerafinaPy/ (~5.5K) |
| Facebook (AIREANA) | https://www.facebook.com/aireana.laserafina |
| Instagram (La Serafina) | https://www.instagram.com/laserapy/ (**@laserapy sin ñ**) |
| Instagram (AIREANA) | https://www.instagram.com/aireanalaserafina/ |
| Twitter/X | https://x.com/aireanapy |
| Coordenadas | -25.2857252, -57.62674 |
| Horarios | Viernes 20:00–02:00 (programación pública); resto bajo reserva |
| Línea Ro'hendu | 0800 110108 / 0981 110108 — L-V 13:00–20:00 |
| Presidente AIREANA | Carolina Robledo |
| Co-fundadoras | Rosa Posa Guinea, Carolina Robledo, Judith Grenno |
| Fundación AIREANA | Febrero 2003 |
| Fundación La Serafina | 2005 |

## Áreas de intersección con Ai-Whisperers

| Área | Qué hay | Qué podría construir Ai-Whisperers |
|------|---------|-----------------------------------|
| **Agenda cultural** | Cartelera se anuncia en Facebook + WhatsApp | Sitio con agenda filtrable por categoría (cine / música / teatro / poesía / conversatorios) + iCal export |
| **Reservas del espacio** | Llamadas + WhatsApp + email | Sistema de reserva online con calendario, pago de seña, contrato digital |
| **Donaciones internacionales** | Solo por transferencia bancaria directa + contacto por email | Botón de donación recurrente (Mama Cash / Fondo de Mujeres del Sur / Astraea pueden recibir vía su plataforma) + transparencia pública |
| **Festival de Cine LesBiGayTrans** | 19 ediciones desde 2005, página web mínima | Micrositio del festival con catálogo histórico, films ganadores, submissions |
| **Ro'hendu** | Línea telefónica publicada | Portal web con formulario de contacto cifrado (encriptado end-to-end) + derivación |
| **Memoria histórica** | Fragmentada en notas de prensa | Archivo digital: biografías de lesbianas paraguayas (proyecto "De toda la vida") |
| **Tienda / merch** | No existe | Merch feminist (camisetas, tote bags) — ingresos para sostener La Serafina |
| **Newsletter** | No existe | Newsletter mensual con agenda + análisis + cómo apoyar |
| **Incidencia política** | Informes anuales puntuales | Repositorio descargable de informes + base de datos de legislación |
| **Comunidad LBT** | Grupo privado en Facebook | Foro/muro moderado + meet-ups (cuidando OPSEC) |

## Estructura del repo

```
la-serafina-context/
├── README.md           ← este archivo (entry point)
├── AGENTS.md           ← reglas universales para AI agents
├── CLAUDE.md           ← notas específicas Claude Code
├── INDEX.md            ← tabla canónica con STATUS flags
├── CHANGELOG.md        ← bitácora de sesiones
├── 00_brief/           ← brief ejecutivo, objetivos, KPIs
├── 01_organization/    ← AIREANA + La Serafina identidad, historia, equipo
├── 02_research/        ← contexto LGBTIQ+ PY, político, social
├── 03_competitors-and-peers/  ← pares LGBTIQ+ LATAM, espacios culturales Asunción
├── 04_brand/           ← visual, terminología guaraní, guías
├── 05_website-audit/   ← 7-file pattern: sitemap, broken, SEO, analytics, perf, a11y, what-they-need
├── 06_decisions/       ← hosting, dominio, branding, seguridad
├── 07_backlog/         ← backlog de tareas + prioridades
├── 08_questionnaires/  ← intake para AIREANA
├── 09_deliverables/    ← paquetes finales
├── 10_risk_assessment/ ← matriz de riesgos políticos / OPSEC
├── HANDOFF/            ← operator-facing folder (aún vacío — esperar primer contacto)
├── assets/             ← logos, fotos públicas, dossier
├── docs/_archive/      ← archivos fechados
└── scripts/            ← validaciones del repo
```

## Próximo paso

1. **Revisar este repo completo** (`INDEX.md` → `05_website-audit/what-they-need.md`).
2. **Confirmar si AIREANA / La Serafina es un cliente real** o un ejercicio estratégico.
3. **Si es real:** enviar `08_questionnaires/intake-aireana.md` por WhatsApp / email al contacto público. Esperar respuesta 7–14 días.
4. **Si es prospecto frío / referencia:** mantener el repo como benchmark para futuros clientes LGBTIQ+ en Paraguay.

## Fuentes principales

- [AIREANA — sitio web oficial](https://www.aireana.org.py/)
- [La Serafina — página oficial](https://www.aireana.org.py/la-serafina/)
- [La Serafina en Facebook](https://www.facebook.com/LaSerafinaPy/)
- [Wikipedia — AIREANA](https://es.wikipedia.org/wiki/Aireana)
- [CDE — Direccionario AIREANA](https://www.cde.org.py/direccionario/aireana-grupo-por-los-derechos-de-las-lesbianas/)
- [De toda la vida — memorias de lesbianas en Paraguay](https://www.fundacioncarolina.es/wp-content/uploads/2022/10/De-toda-la-vida-historia-de-lesbianas.pdf)