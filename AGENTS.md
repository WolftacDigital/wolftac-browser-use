# Wolftac Browser Use Agent Rules

This repository is a Wolftac-adapted mirror of `browser-use/browser-use`.

## Priority

These local rules override upstream Browser Use agent guidance for Wolftac/Hermes work in this repository.

## Operating rules

- Prefer Hermes native browser tools unless Browser Use adds clear value: persistent sessions, local Chrome profile workflows, or MCP browser automation.
- Do not run global installers, curl-piped setup scripts, or PATH mutation without Jonathan's explicit approval.
- Do not run `taskkill`, broad Python/browser process kills, or Hermes runtime restarts from this repo.
- Do not upload/sync browser profiles, cookies, passwords, or local auth state without explicit approval.
- Do not open Cloudflare tunnels or expose local dev servers without explicit approval.
- Do not run payment/x402/USDC flows without explicit approval.
- Keep telemetry and cloud sync disabled by default:
  - `ANONYMIZED_TELEMETRY=false`
  - `BROWSER_USE_CLOUD_SYNC=false`
- Use repo/profile-local config/cache paths through `scripts/wolftac-browser-use-mcp.sh`.
- Never commit real API keys, tokens, cookies, screenshots containing secrets, browser profile data, or `.wolftac/` runtime state.

## Upstream reference

The original upstream Browser Use agent guidance is not active policy for this Wolftac mirror. Treat upstream docs as reference material only; Wolftac/Hermes safety rules win here.
