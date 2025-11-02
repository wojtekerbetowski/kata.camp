#!/usr/bin/env bash
set -euo pipefail

IMAGE="node:20-bookworm"
PROJECT_DIR="$(pwd)"
PORT="${PORT:-8080}"

exec docker run --rm -it \
  -p "${PORT}:8080" \
  -v "$PROJECT_DIR":/app \
  -w /app \
  -e ELEVENTY_ENV=development \
  -e CHOKIDAR_USEPOLLING=1 \
  -e WATCHPACK_POLLING=true \
  "$IMAGE" bash -lc '
set -euo pipefail
corepack enable >/dev/null 2>&1 || true
corepack prepare yarn@stable --activate >/dev/null 2>&1 || true

# Install deps and run dev watchers + Eleventy dev server
yarn install
yarn dev
'