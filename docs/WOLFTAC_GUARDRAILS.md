# Wolftac Browser Automation Guardrails

## Default stance

Browser automation can touch authenticated sessions, cookies, client data, screenshots, downloads, local dev servers, and secrets. Default to local, isolated, reversible operation.

## Allowed by default

- Read-only docs inspection.
- Local non-secret smoke checks.
- Direct browser automation against public test pages.
- MCP startup tests with telemetry/cloud sync disabled.
- Repo-local config/cache directories under `.wolftac/`.

## Requires explicit approval

- Using Jonathan's real Chrome profile or cookies.
- Running `browser-use profile sync` or uploading profile data.
- `browser-use cloud connect` or Browser Use Cloud task execution.
- `browser-use tunnel` / Cloudflare tunnels for local dev servers.
- Any payment/x402/USDC credit flow.
- Pasted API keys or saving cloud credentials.
- Global installers, PATH mutation, winget/brew/apt installers, or broad setup scripts.
- Any command that kills Python/browser/Hermes processes globally.

## Required environment for Wolftac wrapper

```env
ANONYMIZED_TELEMETRY=false
BROWSER_USE_CLOUD_SYNC=false
BROWSER_USE_LOGGING_LEVEL=warning
BROWSER_USE_SETUP_LOGGING=false
```

## Verification gates

Before enabling in Hermes:

1. Confirm no secrets are printed.
2. Confirm MCP starts with safe env.
3. Confirm `BROWSER_USE_HOME` and `BROWSER_USE_CONFIG_DIR` point to repo/profile-local paths.
4. Confirm cloud sync and telemetry are disabled.
5. Confirm browser tests use public/test pages only.
