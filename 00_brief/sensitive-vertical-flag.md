# 🚨 Sensitive-Vertical Flag

> **Read this BEFORE sending any external communication about La Serafina.**

## What this means

La Serafina is the operational + cultural seat of **AIREANA**, a Paraguayan lesbian-feminist NGO. The work this org does is **real and high-stakes**. The wrong hosting choice, the wrong vendor logo placement, or the wrong data-handling policy could endanger the people the org serves.

## Political context (snapshot)

- Paraguay has no nationwide civil-union or marriage-equality law
- The Santiago Peña administration (2023–2028, ANR-PC) has actively promoted "anti-gender-ideology" rhetoric
- Multiple bills restricting LGBTIQ+ expression have been introduced in Congress (none passed yet, but the pressure is real)
- AIREANA has documented cases of discrimination that they handle via Ro'hendu
- Their donors are international feminist funds — public listing of donor amounts could create political ammunition

## Hard rules (apply to every artifact in this repo)

1. **Never commit:** RUC numbers, full staff/board lists, internal clinic-equivalent schedules, donor names beyond what's already on AIREANA's public site/Wikipedia, anything that could put a community member at risk.
2. **Minimize foreign corporate logos on any new build.** No "Built by Ai-Whisperers" banner without explicit client consent.
3. **Default to privacy-respecting analytics** (Plausible / self-hosted) — no Google Analytics, no Facebook Pixel.
4. **No Google Fonts CDN** (IPs leak to Google). Self-host fonts.
5. **No Google Maps embeds.** OpenStreetMap or static image.
6. **HTTPS + HSTS + CSP** non-negotiable on any new build.
7. **Quote in Spanish.** Preserve Guaraní sacred terms exactly.
8. **Frame any rebuild as community-led, not vendor-built.** They should own it.

## Decision rule

> **Assume the worst-case reader is hostile.** The repo will likely be public. Anything that would embarrass or endanger a community member if read by Paraguay's political opposition must not be there.

## Mirror source

This file mirrors the OPSEC rules in:

- `client-strategy-research-repo/references/sensitive-vertical-ngo-engagement-2026-07-10.md`
- `Ai-Whisperers/somosgay-context/AGENTS.md` (sister repo)

## Threat model summary

See `10_risk_assessment/political-risk-matrix.md` for the full threat model.

## Sources

- [Wikipedia — AIREANA](https://es.wikipedia.org/wiki/Aireana)
- [CDE — AIREANA](https://www.cde.org.py/direccionario/aireana-grupo-por-los-derechos-de-las-lesbianas/)