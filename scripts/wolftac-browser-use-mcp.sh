#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

export ANONYMIZED_TELEMETRY="${ANONYMIZED_TELEMETRY:-false}"
export BROWSER_USE_CLOUD_SYNC="${BROWSER_USE_CLOUD_SYNC:-false}"
export BROWSER_USE_LOGGING_LEVEL="${BROWSER_USE_LOGGING_LEVEL:-warning}"
export BROWSER_USE_SETUP_LOGGING="${BROWSER_USE_SETUP_LOGGING:-false}"
export BROWSER_USE_HOME="${BROWSER_USE_HOME:-$REPO_ROOT/.wolftac/browser-use-home}"
export BROWSER_USE_CONFIG_DIR="${BROWSER_USE_CONFIG_DIR:-$REPO_ROOT/.wolftac/browseruse-config}"

mkdir -p "$BROWSER_USE_HOME" "$BROWSER_USE_CONFIG_DIR"

exec uvx browser-use --mcp
