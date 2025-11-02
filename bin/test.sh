#!/usr/bin/env bash
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
"$SCRIPT_DIR/docker-build.sh"

if [ ! -f "$PROJECT_DIR/public/index.html" ]; then
  echo "ERROR: public/index.html was not generated" >&2
  exit 1
fi

if ! grep -q "Kata Camp" "$PROJECT_DIR/public/index.html"; then
  echo "ERROR: 'Kata Camp' not found in generated index.html" >&2
  exit 1
fi

if ! grep -q "AI Kata Warsaw" "$PROJECT_DIR/public/index.html"; then
  echo "ERROR: 'AI Kata Warsaw' not found in generated index.html" >&2
  exit 1
fi

echo "OK: Site generated and contains expected content."