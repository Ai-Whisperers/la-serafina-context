# scripts/

Re-runnable scripts for monitoring + maintaining the AIREANA / La Serafina context.

| Script | Purpose | Cadence |
|--------|---------|---------|
| [probe-aireana.sh](probe-aireana.sh) | Live HTTP probe of aireana.org.py (13 key routes) | Weekly cron + on-demand |

## Setup

```bash
chmod +x scripts/probe-aireana.sh
```

## Usage

```bash
# Text table (default)
./scripts/probe-aireana.sh

# JSON output (for piping into dashboards)
./scripts/probe-aireana.sh --json

# Exit 1 if any unexpected non-200 detected (for cron + alerting)
./scripts/probe-aireana.sh --alert
```

## Cron example

```bash
0 9 * * 1 cd /root/la-serafina-context && ./scripts/probe-aireana.sh >> scripts/probe-history.log 2>&1
```

## Pattern

Mirrors `Ai-Whisperers/somosgay-context/scripts/probe-somosgay.sh` — same structure, adapted for AIREANA's URL paths.

## Why this matters

AIREANA's site has known 404s (see `05_website-audit/whats-broken.md`). Live probing catches:

- New 404s (regressions)
- New 500s (server errors)
- Slow pages (>3s)
- Unexpected redirects

We alert on **unexpected** non-200s only. `/sitemap.xml` and `/robots.txt` 404s are tolerated because they're known issues.