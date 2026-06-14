# Hermes MCP Setup for Wolftac Browser Use

This is the intended future integration pattern. Do not enable live MCP until local validation passes.

## Wrapper

Use:

```bash
scripts/wolftac-browser-use-mcp.sh
```

The wrapper sets Wolftac-safe defaults and runs:

```bash
uvx browser-use --mcp
```

## Staged Hermes config example

```yaml
mcp_servers:
  wolftac_browser_use:
    command: bash
    args:
      - C:/Users/jonmo/wolftac-browser-use/scripts/wolftac-browser-use-mcp.sh
    enabled: false
    timeout: 180
    connect_timeout: 60
    sampling:
      enabled: false
```

## Activation checklist

- Run local static checks.
- Run wrapper without secrets.
- Run Hermes MCP test.
- Keep cloud/profile/tunnel/payment flows disabled unless explicitly approved.
