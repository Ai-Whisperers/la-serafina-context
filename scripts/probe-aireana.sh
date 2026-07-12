#!/bin/bash
# probe-aireana.sh — Live HTTP probe of aireana.org.py
#
# Usage:
#   ./scripts/probe-aireana.sh           # one-shot, prints table
#   ./scripts/probe-aireana.sh --json    # JSON output for piping
#   ./scripts/probe-aireana.sh --alert   # exits non-zero if any unexpected non-200 detected
#
# Cron example (weekly probe + log):
#   0 9 * * 1 cd /root/la-serafina-context && ./scripts/probe-aireana.sh >> scripts/probe-history.log 2>&1
#
# Setup:
#   chmod +x scripts/probe-aireana.sh
#
# Requirements: bash, curl. No other deps.
#
# Mirrors the pattern from Ai-Whisperers/somosgay-context/scripts/probe-somosgay.sh
# Adapted for AIREANA's URL paths.

set -euo pipefail

BASE="https://www.aireana.org.py"
PATHS=(
  "/"
  "/la-serafina/"
  "/festival-de-cine-lesbigaytrans/"
  "/ro-hendu/"
  "/la-tatucada/"
  "/producciones/"
  "/desobedientas/"
  "/articulacion-feminista-del-paraguay/"
  "/un-poco-de-historia/"
  "/privadas-de-libertad/"
  "/coalicion-lgtttbits/"
  "/wp-sitemap.xml"
  "/robots.txt"
)

# Known 404s we tolerate
KNOWN_404_OK=(
  "/wp-sitemap.xml"
  "/robots.txt"
)

MODE="${1:-text}"

probe_one() {
  local path="$1"
  local result
  result=$(curl -sS -o /dev/null -w "%{http_code}|%{size_download}|%{time_total}" \
    --max-time 10 \
    "${BASE}${path}" 2>&1) || result="000|0|0"
  echo "${path}|${result}"
}

is_known_404_ok() {
  local path="$1"
  for known in "${KNOWN_404_OK[@]}"; do
    if [[ "$path" == "$known" ]]; then
      return 0
    fi
  done
  return 1
}

if [[ "$MODE" == "--json" ]]; then
  echo "{"
  echo "  \"base\": \"${BASE}\","
  echo "  \"timestamp\": \"$(date -u +%Y-%m-%dT%H:%M:%SZ)\","
  echo "  \"results\": ["
  first=true
  for p in "${PATHS[@]}"; do
    line=$(probe_one "$p")
    IFS='|' read -r path code size time <<< "$line"
    if [[ "$first" == "true" ]]; then first=false; else echo ","; fi
    printf '    {"path": "%s", "http": %s, "bytes": %s, "time_s": %s}' \
      "$path" "$code" "$size" "$time"
  done
  echo ""
  echo "  ]"
  echo "}"
elif [[ "$MODE" == "--alert" ]]; then
  fail=0
  for p in "${PATHS[@]}"; do
    line=$(probe_one "$p")
    IFS='|' read -r path code size time <<< "$line"
    if [[ "$code" != "200" ]] && ! is_known_404_ok "$path"; then
      # /sitemap.xml 404 is a KNOWN issue (see docs/05_website-audit/whats-broken.md)
      # Alert on any OTHER non-200
      echo "ALERT: ${path} returned ${code} (${size}B in ${time}s)" >&2
      fail=1
    fi
  done
  exit $fail
else
  # text mode
  printf "%-45s %-6s %-10s %-10s\n" "PATH" "HTTP" "BYTES" "TIME(s)"
  printf "%-45s %-6s %-10s %-10s\n" "----" "----" "-----" "-------"
  for p in "${PATHS[@]}"; do
    line=$(probe_one "$p")
    IFS='|' read -r path code size time <<< "$line"
    printf "%-45s %-6s %-10s %-10s\n" "$path" "$code" "${size}B" "$time"
  done
fi