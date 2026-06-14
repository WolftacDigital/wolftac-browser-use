# Wolftac Browser Use

Wolftac-adapted mirror of [`browser-use/browser-use`](https://github.com/browser-use/browser-use) for Hermes/Zeus browser automation experiments.

This repo keeps the upstream codebase intact where possible, but adds Wolftac defaults, Hermes MCP guardrails, and explicit controls for telemetry, cloud sync, browser profile handling, public tunnels, and payment flows.

## Upstream provenance

- Upstream repo: `browser-use/browser-use`
- Upstream commit mirrored: `da3d6a3e81c751b5970a5e40a4210072fef98ae5`
- Upstream license: MIT. See `LICENSE`.
- Local adaptation owner: Wolftac Digital / Zeus.

## Wolftac defaults

Use this repo with the safe wrapper and profile-local paths first:

```bash
scripts/wolftac-browser-use-mcp.sh
```

Default environment controls set by the wrapper:

```env
ANONYMIZED_TELEMETRY=false
BROWSER_USE_CLOUD_SYNC=false
BROWSER_USE_HOME=<repo-local .wolftac/browser-use-home>
BROWSER_USE_CONFIG_DIR=<repo-local .wolftac/browseruse-config>
BROWSER_USE_LOGGING_LEVEL=warning
BROWSER_USE_SETUP_LOGGING=false
```

## What is intentionally gated

Do **not** use these without explicit Jonathan approval:

- `browser-use profile sync`
- `browser-use cloud connect`
- `browser-use tunnel ...`
- `browser-use cloud login <api-key>` with pasted secrets
- x402 / USDC payment setup
- curl-piped installer from docs
- broad global setup that mutates PATH, installs cloudflared/profile-use, or kills Python processes

## Hermes integration path

1. Review `docs/WOLFTAC_GUARDRAILS.md`.
2. Review `docs/HERMES_MCP_SETUP.md`.
3. Run non-secret local validation.
4. Stage MCP disabled by default.
5. Enable only after wrapper/doctor checks pass.

## Upstream docs

The original Browser Use docs and code remain in the repo. Start with:

- `AGENTS.md`
- `browser_use/skill_cli/README.md`
- `skills/browser-use/SKILL.md`
- `skills/open-source/SKILL.md`

## Current status

This is a Wolftac-controlled mirror/adaptation baseline, not a production-approved automation stack yet. Treat cloud/profile/tunnel/payment features as gated until separately approved.
