#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
IMAGE="ghcr.io/hadidhd/fame-26-mdo:latest"
CONTAINER="fame-26-mdo-desktop"
WORKSPACE="${ROOT}/Workspace"

if ! command -v docker >/dev/null 2>&1; then
  echo "Error: docker is not installed or not on PATH." >&2
  echo "Install Docker Desktop (macOS/Windows) or Docker Engine (Linux), then retry." >&2
  exit 1
fi

if ! docker info >/dev/null 2>&1; then
  echo "Error: Docker daemon is not running." >&2
  echo "Start Docker Desktop / the Docker service, then retry." >&2
  exit 1
fi

if [[ ! -d "$WORKSPACE" ]]; then
  echo "Error: Workspace directory not found at ${WORKSPACE}" >&2
  exit 1
fi

echo "Pulling ${IMAGE}..."
docker pull "$IMAGE"

echo "Removing previous container if present..."
docker rm -f "$CONTAINER" >/dev/null 2>&1 || true

echo "Starting ${CONTAINER}..."
docker run -d \
  --name "$CONTAINER" \
  -p 6080:6080 \
  -p 5901:5901 \
  -v "${WORKSPACE}:/workspace" \
  "$IMAGE"

echo
echo "Eclipse is starting. Open: http://localhost:6080"
