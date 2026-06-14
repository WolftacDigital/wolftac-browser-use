---
name: wolftac-browser-use
description: Use when operating the Wolftac-adapted Browser Use mirror through Hermes/Zeus. Applies guardrails for browser automation, MCP setup, local profiles, telemetry, cloud sync, public tunnels, and payment-gated features.
---

# Wolftac Browser Use

Use this skill before running Browser Use from this repository.

## Default path

1. Prefer Hermes native browser tools for simple browsing.
2. Use Browser Use only when persistent sessions, local Chrome profile workflows, or MCP browser automation adds value.
3. Use the Wolftac wrapper instead of upstream global installers:

```bash
scripts/wolftac-browser-use-mcp.sh
```

## Hard gates

Ask Jonathan before:

- syncing/uploading browser profiles or cookies,
- using cloud browsers,
- opening Cloudflare tunnels,
- saving Browser Use API keys,
- running payment/x402 flows,
- global installs or PATH mutation,
- killing Python/browser/Hermes processes.

## Required checks

Before enablement:

- telemetry disabled,
- cloud sync disabled,
- config/cache point to local `.wolftac/` paths,
- no secrets in command output,
- public/test page only for smoke tests.

Read `docs/WOLFTAC_GUARDRAILS.md` and `docs/HERMES_MCP_SETUP.md` for the full operational pattern.
