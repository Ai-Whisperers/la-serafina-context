# Ai-Whisperers legal + operational exposure — AIREANA / La Serafina

> **🚨 [HUMAN REVIEW REQUIRED]:** This is a risk document, not legal advice. Any decision about engagement scope, contracting structure, or data residency **must** go through actual legal counsel licensed in Paraguay (and possibly the US/EU depending on where Ai-Whisperers is incorporated).
>
> **Owner:** Ivan + legal counsel (Kiki).

## Why this matters

The repo correctly documents political risk for **AIREANA** (Santiago Peña presidency, "gender ideology" backlash, no marriage equality, no anti-discrimination law). What it does NOT document: **the equivalent risk for Ai-Whisperers as the foreign technology partner.**

AIREANA's site is different from SOMOSGAY's in **kind** (cultural space vs clinical service) but not in **degree** of sensitivity. Both serve LGBTIQ+ community in a hostile political environment. Both rely on international donor funding that has its own compliance requirements.

## Three risk vectors

### R1. Data residency + extraterritorial legal exposure

- If Ai-Whisperers hosts anything on Cloudflare Pages / Vercel / AWS US infrastructure, **visitor IP addresses, browser fingerprints, and form submissions are subject to US CLOUD Act requests**.
- US CLOUD Act (2018) authorizes US law enforcement to compel US providers to hand over data stored on foreign servers.
- A Paraguayan LGBTIQ+ visitor to the site from Asunción leaves a US-accessible trail.
- **Mitigation:**
  - Cloudflare Pages + client-side only (no backend storing user data)
  - CSP headers that prevent third-party trackers
  - No analytics on pages that mention Ro'hendu helpline or denuncias
  - Plausible self-hosted or removed
  - Zero form submissions stored anywhere outside Paraguay
  - **Do not store** Ro'hendu call logs, case notes, or anything resembling helpline data

### R2. Legal entity in Paraguay

- Ai-Whisperers is presumably a US/LatAm entity. **Engaging on LGBTIQ+ cultural work in Paraguay may have implications** depending on:
  - Whether Ai-Whisperers has a Paraguayan tax presence (no RUC today)
  - Whether AIREANA's grant funders (Mama Cash, Astraea, Fondo de Mujeres del Sur, Fondo Global para Mujeres) accept "foreign corporate" tech partners
  - Whether Ai-Whisperers' brand will be visible on the site (footer credit, "Built by" link, GitHub profile)
- **Mitigation:**
  - Decide upfront whether Ai-Whisperers wants attribution visible. If yes, accept the political exposure. If no, render pro-bono under a different name or as anonymous contribution. **Document the choice.**
  - For the demo site (`laserafina.paragu-ai.com`), attribution is implicit in the domain. **This is OK for portfolio but not for production.**

### R3. Funder compliance

AIREANA's funders each have due-diligence requirements on tech partners:

| Funder | Type | Likely requirements |
|--------|------|---------------------|
| **Mama Cash** | Dutch feminist fund (1983) | Privacy policy, data handling disclosure, anti-discrimination policy |
| **Astraea Lesbian Foundation for Justice** | US LBT fund | Tech partner security posture, US compliance |
| **Fondo de Mujeres del Sur** | Argentina regional | Regional LATAM compliance, transparency |
| **Fondo Global para Mujeres** | US/Global | Standard NGO due-diligence |

If Ai-Whisperers is named in any AIREANA funder report, our practices are auditable.

**Mitigation:**
- Provide Ai-Whisperers with a standard tech partner due-diligence pack (security posture, data handling, sub-processors list) **BEFORE signing any engagement**.

## What AIREANA's situation is different from SOMOSGAY's

AIREANA runs **cultural + advocacy**, not clinical. Lower direct risk profile for patient data — but **higher** risk for:

- **Community visibility** — Ro'hendu line is the only place where vulnerable people contact LGBTIQ+ services. If the site's IP logs leak, that's a targeted hit list.
- **Donor persecution** — Mama Cash + Astraea are US/NL-based. If those funder relationships become controversial in Paraguay (anti-"gender ideology" legislation), AIREANA's local partners could face pressure.
- **Festival programming** — Festival LesBiGayTrans 2005-2025 has been 21 editions. It's a public, documented, well-known event. Lower risk than private helpline.
- **Casa Serafina Dávalos** — already politically charged (2025-2026 IPS conflict). Adding tech infrastructure to that conflict could escalate it.

## What we should NOT build

| ❌ Don't build without legal review | Why |
|-------------------------------------|-----|
| Ro'hendu case-management system that stores case data on US infrastructure | CLOUD Act + helpline safety |
| Anything that logs user IP beyond 7 days | Extraterritorial risk |
| Authentication (login) for any helpline or denuncias feature | Data controller becomes Ai-Whisperers |
| Telegram / WhatsApp integrations that log messages on US infra | Same |
| CRM with visitor contact info | If breached, harms community |
| Donation flows that store donor PII for >12 months | Donor safety in hostile climate |
| Public map of Ro'hendu call origin locations | Operational security |
| Embedding of YouTube/Vimeo videos that auto-play with trackers | Visitor tracking |

## What we CAN safely build

| ✅ Safe to build | Notes |
|------------------|-------|
| Static informational site | Zero data exposure |
| Cloudflare Pages hosting | Paraguayan-friendly, free tier, CSP-friendly |
| Public donation flows to Mama Cash / Astraea | Donor data stays with the third party |
| Public event calendars | No PII |
| WhatsApp deep-link buttons (no tracking) | User's WhatsApp is user's own |
| Friday Culturales schedule / Festival schedule | No backend |
| Plausible analytics (EU-hosted, no PII) | Choose self-hosted for max safety |
| Multilingual content (ES + Guaraní) | Static |
| Micrositio Casa Serafina Dávalos (memorial/educativo) | Static |

## What we should ask AIREANA before Phase 1

These are blocking questions per `decisiones-pendientes.md`:

1. **Which funders require DPIA on tech partners?** (D-06)
2. **Does AIREANA have its own IT/data policy we need to comply with?** (D-07)
3. **Should Ai-Whisperers appear publicly in the site footer / GitHub?** (D-13)
4. **Is there a funder-approved list of tech partners?** (D-04)
5. **Has AIREANA been asked by any funder for a tech-partner due-diligence pack before?** (D-08)
6. **Does AIREANA have any legal counsel on retainer?** (new — recommend they do)
7. **Are there any political situations in 2026 we should be aware of?** (e.g., Casa Serafina Dávalos IPS conflict)

## Recommendation

Phase 1 should be **scoped to "safe to build" only**. Any feature from the "don't build without legal review" list should be deferred to Phase 2 pending legal sign-off.

**Specifically:**

- **Phase 1 (pro-bono, 3 months):** Static site rebuild + multilingual + programs info pages + Friday Culturales schedule + WhatsApp deep-link + multi-option donate. **Zero backend.**
- **Phase 2 (post-legal review):** Anything user-data-touching (booking, CRM, case management, Ro'hendu intake).

## What we should ALSO do proactively

1. **Write a public `OPSEC` page** for AIREANA's site that documents:
   - What data we collect
   - What we DON'T collect
   - How to use Tor Browser to access the site
   - How to delete browser history
   - Quick Exit button to leave the site fast
   - Contact via Signal / ProtonMail alternatives

2. **Document an "in case of closure" plan** for AIREANA:
   - What happens to the domain
   - What happens to the archive
   - What happens to donor contact lists
   - Succession / handover documentation

3. **Annual OPSEC review** of the site (e.g., every September around the Caso 108 commemorations).

## Sources

- CLOUD Act (US, 2018) — https://www.congress.gov/bill/115th-congress/house-bill/4943
- Global Fund data protection guidelines — https://www.theglobalfund.org/en/data-protection/
- Cloudflare Pages data residency — https://www.cloudflare.com/cloudflare-network/
- `docs/06_decisions/decisiones-pendientes.md` — pending decisions in this repo
- `docs/10_risk_assessment/political-risk-matrix.md` — Paraguay political risk baseline
- `docs/10_risk_assessment/opsec-checklist.md` — AIREANA-side OPSEC
- Ai-Whisperers/somosgay-context `docs/10_risk_assessment/ai-whisperers-legal-exposure.md` — sister doc (more clinical context)

## See also

- `AGENTS.md` — Hard Rule #4 in somosgay-context: "Never commit: ... anything that would put a community member at risk in Paraguay's current political climate"
- `docs/03_competitors-and-peers/paraguayan-lgbti-orgs.md` — peer orgs and their tech situations
- `docs/05_website-audit/whats-broken.md` — current AIREANA site state