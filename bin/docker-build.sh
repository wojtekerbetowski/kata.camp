#!/usr/bin/env bash
set -euo pipefail
IMAGE="node:20-bookworm"
PROJECT_DIR="$(pwd)"
exec docker run --rm -t \
  -v "$PROJECT_DIR":/app \
  -w /app \
  "$IMAGE" bash -lc '
set -euo pipefail
if [ -f yarn.lock ]; then
  corepack enable >/dev/null 2>&1 || true
  corepack prepare yarn@stable --activate >/dev/null 2>&1 || true
  yarn install
  yarn build
else
  npm install
  npm run build
fi
'
