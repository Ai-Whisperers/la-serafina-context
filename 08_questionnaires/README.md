# 08 — Questionnaires

> Cuestionarios para AIREANA / La Serafina.
> **Patrón:** Multiple-choice + opción "recomendado por defecto" — para que AIREANA pueda responder por copy-paste en WhatsApp / email sin fricción.

| Doc | Purpose | STATUS | Lines | Size |
|-----|---------|--------|-------|------|
| [intake-aireana.md](intake-aireana.md) | **Intake mínimo viable** — 35 preguntas, 20–30 min | ✅ v2 | 288 | 6.3 KB |
| [intake-aireana-completo.md](intake-aireana-completo.md) | **Intake completo + pre-respuestas** — 210 preguntas en 25 bloques, 90–120 min | ✅ v3 | 1,400+ | 49 KB |

## Cuándo usar cada uno

- **`intake-aireana.md`** (mínimo viable): para una primera conversación donde solo querés confirmar lo básico (35 preguntas).
- **`intake-aireana-completo.md`** (profundo): para un compromiso serio de proyecto. Pre-respondido con research del repo.

## Cómo están construidos

Ambos siguen el patrón de `apps/nexa-paraguay/docs/01-client/plans/complete-questionnaire.md` (Sonia, 83 preguntas, 10 bloques).

**Diferencias con el de Sonia:**

| Aspecto | Sonia (Nexa) | AIREANA (La Serafina) |
|---------|--------------|----------------------|
| Bloques | 10 | 25 |
| Preguntas | 83 | ~210 |
| Tiempo | 75–85 min | 90–120 min |
| Pre-respuestas | ❌ | ✅ (research del repo) |
| Bloque OPSEC | ❌ | ✅ (esencial para LGBTIQ+ PY) |
| Bloque accesibilidad + Quick Exit | ❌ | ✅ |
| Bloque internacional | Ligero | ✅ "Venir al Sur" + coaliciones OEA |
| Bloque de marca/tono/estilo | Ligero | ✅ Detallado con recomendaciones |
| Bloque horizonte / aniversario | Ligero | ✅ 20° aniversario 2027 |
| Bloque riesgos | ❌ | ✅ |

## Por qué tan grande

El repo tiene **75 docs + 387 URLs verificadas**. Tirar la info al cliente sin estructura sería peor que hacer preguntas. Cada bloque pre-responde con fuentes reales (`✅ [PRE-RESPUESTA — research]`).

El cuestionario funciona como **dos cosas a la vez**:
1. **Recolecta info que AIREANA tiene y nosotros no** (gaps reales).
2. **Documenta todo lo que ya sabemos** (reduce carga cognitiva del cliente, valida nuestra research, y deja evidencia de las fuentes).

## Bloque 0 — OPSEC (CRÍTICO)

El primer bloque pregunta sobre seguridad digital, contraseñas, incidentes. Esto es **obligatorio** para un cliente LGBTIQ+ en Paraguay y normalmente no está en cuestionarios comerciales. Si AIREANA no quiere responderlo por escrito, lo conversamos en persona sin registro.

## Convenciones de marca

- ✅ = opción confirmada por research
- 🟡 = recomendación inferida (pedir confirmación)
- ❓ = no se sabe, AIREANA decide
- ⬜ = pendiente para más adelante
- `[VERIFY]` = dato que solo AIREANA puede confirmar

## Pre-respuestas incluidas

El cuestionario completo viene con **~80 pre-respuestas** ya marcadas con ✅ o 🟡, citando la fuente del repo. Esto sirve para:

- **Reducir carga del cliente:** no responder lo que ya sabemos
- **Validar research:** si AIREANA marca ✅ en una pre-respuesta, sabemos que el dato es correcto
- **Documentar fuentes:** cada pre-respuesta cita el doc + URL de origen