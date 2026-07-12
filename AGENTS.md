# AGENTS.md — AI agent instructions

Read this before doing anything in this repo.

## Identity

You are working on the **Ai-Whisperers/la-serafina-context** repo — a context-only research repo for a possible engagement with **La Serafina**, the flagship cultural project of **AIREANA**, a Paraguayan lesbian-feminist NGO founded in 2003 in Asunción.

The repo follows the conventions of `Ai-Whisperers/somosgay-context` (closest analog — sensitive-vertical NGO in Paraguay), `Ai-Whisperers/dentist` (numbered `00–09` folders, per-folder `README.md`), and `Ai-Whisperers/sarah-lubricants` (sensitive-data OPSEC).

## 🚨 SENSITIVE-VERTICAL FLAG

This client is a **LGBTIQ+ rights organization in a politically-hostile country**. Apply the OPSEC rules from `client-strategy-research-repo/references/sensitive-vertical-ngo-engagement-2026-07-10.md` BEFORE writing anything to this repo. The summary:

- The Republic of Paraguay has no nationwide civil-union or marriage-equality law
- Public LGBTIQ+ expression is constitutionally protected but socially stigmatized in much of the country
- The Peña (2023–2028) administration has rhetoric hostile to "gender ideology"
- Donors are international (Mama Cash, Astraea, Fondo de Mujeres del Sur, Fondo Global para Mujeres) — funding visibility could attract political pressure
- Their board, donors, and cultural programming are ALL public-safe to mention (already in press / Wikipedia)

**Mirror `somosgay-context` exactly for OPSEC. Don't reinvent.**

## Hard rules

1. **No fabricated facts.** Every claim must cite a URL. If you can't find a source, write `[VERIFY]` and move on.
2. **No fabricated URLs.** Use only URLs from real `web_search` / `web_extract` results this session or from existing repo files.
3. **No commits without `STATUS: complete` flags in `INDEX.md`.** Mid-research work goes in a branch with `STATUS: draft`.
4. **Never commit:** RUC numbers, full staff/board lists (only already-public names from Wikipedia), unlisted personal phone numbers, donor amounts beyond what press has reported, anything that could put a community member at risk.
5. **Bilingual by default.** Primary language: **Spanish** (their language). English secondary for documentation. **Guaraní terminology is sacred** — preserve accents and spelling exactly. (Tatucada, Ro'hendu, Tatú, Aireana, Tekoporã, Ñande Rekó, Kuña Kuimba'e).
6. **Date every session.** Append to `CHANGELOG.md` with one-line summary + files touched.

## Cultural framing (must read before writing)

| Org / Term | Cultural anchor | Why it matters |
|---|---|---|
| **AIREANA** (org) | **airea** (imperative of "airear"/"ventilar" = "ventilate") + **na** (Guaraní = "please") | Reframes the movement as homegrown, language-anchored in Paraguay's bilingual reality |
| **La Serafina** (cultural space) | "The Sapphic house of Paraguay" — cultural anchor | Reframes dignity, not shame |
| **Ro'hendu** (helpline) | Guaraní = "I hear you" / "Te escucho" | Service to the community, in their language |
| **La Tatucada** (batucada) | Tatú = Guaraní for armadillo AND colloquially for vulva | Double-meaning as political resistance + reclaiming of body |
| **Tatú** (the animal) | Native to the Chaco; protected species | Ecological anchoring |

**Do NOT translate sacred terms in headlines.** Translate in a glossary file (`docs/04_brand/guarani-terminology.md`) and link to it.

## Conventions

- Folder numbering: `NN_name-with-hyphens` for top-level (`00_brief`, `01_organization`, …). Subfolders: `lowercase`.
- File naming: `kebab-case.md` for narrative. `STATUS.md` for dashboards. `YYYY-MM-DD_topic.md` for dated.
- Per-folder `README.md`: every folder MUST have one. Indexes files in 1-line-per-file table with `STATUS` column.
- Status flags: `complete` / `draft` / `pending` / `archived` / `blocked`.
- Source attribution: `[label](url)` inline, dedup at end under `## Fuentes`.
- Tense: present for narrative ("AIREANA operates…"), past for events ("was founded in 2003").

## Canonical doc roles

- **`INDEX.md`** = single source of truth for "what is this repo" (file inventory + STATUS flags).
- **`CHANGELOG.md`** = session log (append-only history).
- Do NOT duplicate content across both. `INDEX.md` indexes files; `CHANGELOG.md` narrates sessions.

## Source confidence levels

- `✅ Confirmado` — primary source URL in this session.
- `🟡 Default recomendado` — inference; client must confirm before acting.
- `⬜ Pendiente cliente` — only client can answer.
- `[HUMAN REVIEW REQUIRED]` — sensitive content (LGBTIQ+ PY history, OPSEC, legal risk).

## What this repo is NOT

- Not the website repo. The website (if we build one) lives separately, probably at `Ai-Whisperers/paragu-ai-platform/apps/la-serafina` mirroring `Ai-Whisperers/somosgay` if it gets cloned.
- Not a CRM. No contact info beyond what's already published (Carolina Robledo via CDE, the public email, the public phones).
- Not a place for the client to write back. Use `08_questionnaires/` for that.

## When in doubt

- Read `CLAUDE.md` for Claude-specific notes.
- Mirror `Ai-Whisperers/somosgay-context` exactly for OPSEC.
- Mirror `Ai-Whisperers/dentist` for repo structure (numbered folders, READMEs, INDEX/CHANGELOG).
- Ask Ivan. Don't silently decide on political/OPSEC matters.