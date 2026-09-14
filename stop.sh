#!/usr/bin/env bash
set -euo pipefail

CONTAINER="fame-26-mdo-desktop"

if ! command -v docker >/dev/null 2>&1; then
  echo "Error: docker is not installed or not on PATH." >&2
  exit 1
fi

if ! docker info >/dev/null 2>&1; then
  echo "Error: Docker daemon is not running." >&2
  echo "Start Docker Desktop / the Docker service, then retry." >&2
  exit 1
fi

if docker ps -a --format '{{.Names}}' | grep -qx "$CONTAINER"; then
  docker stop "$CONTAINER"
  docker rm "$CONTAINER"
  echo "Stopped and removed ${CONTAINER}."
else
  echo "No container named ${CONTAINER} is present."
fi
