# Troubleshooting

## The MCP address looks blank in my browser

That is expected. `https://www.rapidly.co/mcp` is an MCP endpoint, not a web page. A normal browser request returns `204 No Content`.

Use [rapidly.co/mcp-connect](https://www.rapidly.co/mcp-connect) for onboarding.

## My client can't see Rapidly

1. Confirm the server address is exactly `https://www.rapidly.co/mcp`.
2. Start a new conversation after connecting.
3. Quit and reopen the client if its connection list hasn't refreshed.
4. For OAuth, reconnect and approve the intended Rapidly team.
5. For a personal token, launch the client from the terminal configured by the copy-ready setup.

## I lost the personal token

Rapidly can't show the old token again because it stores only the hash. Revoke the token in Rapidly and create a replacement.

## Codex app can't see the personal-token connection

The token-page route is designed for Codex CLI launched from the configured terminal. Use the OAuth commands for the Codex app, then quit and reopen it.

## Claude Code hasn't started OAuth

Start an interactive Claude Code session, run `/mcp`, select Rapidly and complete the authentication flow. Current Claude Code handles remote-server OAuth from the `/mcp` panel rather than a shell login subcommand.

## The continuation created another idea

Ask the client:

```text
Continue the same Rapidly idea. Do not create or branch a new idea.
```

If it still creates a new idea, report the client, version and exact stage. Don't expose the private continuation value.

## I have used all five trial ideas

Continue one of the existing ideas through its Canvas, hypothesis and experiments. Continuing doesn't use another allowance. A new idea or branch does.

## Contact support

See [SUPPORT.md](../SUPPORT.md) for what to include. Remove tokens, customer data and confidential details from errors, logs and screenshots.

For suspected security problems, use the private process in [SECURITY.md](../SECURITY.md).
