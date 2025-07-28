#!/usr/bin/env bash
set -euo pipefail
ruff etl/src
mypy etl/src
