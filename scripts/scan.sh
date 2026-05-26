#!/usr/bin/env bash
# scan.sh — pre-publish deny-list scanner for llama-os-public
#
# Safety gate: greps the whole repo for things that must NEVER ship publicly.
# Exit 0 = clean. Exit 1 = at least one hit (DO NOT PUBLISH).
#
#   ./scripts/scan.sh
#
# Two layers of patterns:
#   1. GENERIC patterns below — structural leaks (emails, phones, drive links,
#      opaque IDs). Safe to live in this public file.
#   2. PRIVATE deny-list — firm-specific strings (internal domains, real deal &
#      founder names). Lives OUTSIDE this repo so the scanner itself never
#      leaks them. Path via $LLAMA_DENYLIST, default ../.llama-public-denylist
#      (one extended-regex per line; '#' comments and blank lines ignored).
#
# Run before EVERY review checkpoint and again right before `git init` + push.

set -uo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

EXCLUDES=(--exclude-dir=.git --exclude-dir=.omc --exclude=scan.sh --exclude=*-b64.txt)

# Layer 1 — generic structural patterns (publishable).
PATTERNS=(
  "any email address|||[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}"
  "phone-like number|||(\+?[0-9]{1,3}[ -]?)?\(?[0-9]{3}\)?[ -]?[0-9]{3}[ -]?[0-9]{4}"
  "Google Drive folder link|||drive\.google\.com/drive/folders/"
  "opaque 32+ char token (Drive ID / API key shaped)|||\\b[A-Za-z0-9]{32,}\\b"
  "AWS-key-shaped|||AKIA[0-9A-Z]{16}"
  "private key block|||-----BEGIN [A-Z ]*PRIVATE KEY-----"
)

# Layer 2 — load firm-specific private deny-list from OUTSIDE the repo.
DENYLIST="${LLAMA_DENYLIST:-$ROOT/../.llama-public-denylist}"
if [[ -f "$DENYLIST" ]]; then
  while IFS= read -r line; do
    [[ -z "$line" || "$line" =~ ^[[:space:]]*# ]] && continue
    PATTERNS+=("private deny-list|||$line")
  done < "$DENYLIST"
  echo "ℹ️  loaded private deny-list: $DENYLIST"
else
  echo "⚠️  no private deny-list found at $DENYLIST — running GENERIC patterns only."
  echo "    (set \$LLAMA_DENYLIST or create the file before trusting a clean result)"
fi
echo ""

# Allowlist — strings that are intentionally public (firm contact address, etc.).
# The generic person-email pattern still catches everything else @llamaventures.vc.
ALLOW_RE='info@llamaventures\.vc'

hits=0
for entry in "${PATTERNS[@]}"; do
  label="${entry%%|||*}"
  regex="${entry##*|||}"
  matches="$(grep -rInE "${EXCLUDES[@]}" -- "$regex" . 2>/dev/null | grep -vE "$ALLOW_RE" || true)"
  if [[ -n "$matches" ]]; then
    echo "── HIT: ${label}"
    echo "$matches" | sed 's/^/    /'
    echo ""
    hits=$((hits + 1))
  fi
done

if [[ "$hits" -gt 0 ]]; then
  echo "❌ scan FAILED — ${hits} pattern group(s) matched. DO NOT PUBLISH. Clean and re-run."
  exit 1
fi

echo "✅ scan clean — no deny-list patterns found."
exit 0
