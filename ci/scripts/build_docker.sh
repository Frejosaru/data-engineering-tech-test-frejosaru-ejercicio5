#!/usr/bin/env bash
set -euo pipefail
TAG="${1:-latest}"
docker build -f docker/etl.Dockerfile -t ghcr.io/${GITHUB_REPOSITORY}:${TAG} .
