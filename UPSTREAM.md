# Upstream Provenance

This repository is a Wolftac-adapted fork/mirror of Browser Use.

- Upstream: https://github.com/browser-use/browser-use
- Upstream commit inspected before adaptation: `da3d6a3e81c751b5970a5e40a4210072fef98ae5`
- Upstream license: MIT
- Original project homepage: https://browser-use.com

## Adaptation intent

Wolftac changes are focused on safe Hermes/Zeus operation:

- profile-local config/cache paths
- telemetry disabled by default for Wolftac wrapper usage
- cloud sync disabled by default
- explicit approval gates for profile upload, public tunnels, cloud sessions, and payment workflows
- Hermes skill guidance that avoids global/curl-piped installs

## Sync policy

Keep upstream as a remote/reference. Pull upstream updates into a feature branch, rerun the safety checklist, then merge only after verification.
