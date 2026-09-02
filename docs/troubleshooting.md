# Troubleshooting

## The MCP address looks blank in my browser

That is expected. `https://www.rapidly.co/mcp` is an MCP endpoint, not a web page. A normal browser request returns `204 No Content`.

Use [rapidly.co/rapidly-mcp](https://www.rapidly.co/rapidly-mcp) for onboarding.

## My agent can't see Rapidly

1. Confirm the server address is exactly `https://www.rapidly.co/mcp`.
2. Start a new conversation after connecting.
3. Quit and reopen the agent if its connection list hasn't refreshed.
4. For OAuth, reconnect and approve the intended Rapidly team.
5. For a personal token, launch the agent from the terminal configured by the copy-ready setup.

## I lost the personal token

Rapidly can't show the old token again because it stores only the hash. Revoke the token in Rapidly and create a replacement.

## Codex app can't see the personal-token connection

The token-page route is designed for Codex CLI launched from the configured terminal. Use the OAuth commands for the Codex app, then quit and reopen it.

## Claude Code hasn't started OAuth

Start an interactive Claude Code session, run `/mcp`, select Rapidly and complete the authentication flow. Current Claude Code handles remote-server OAuth from the `/mcp` panel rather than a shell login subcommand.

## The run stopped before the build prompt

Ask the agent:

```text
Continue the Rapidly idea at [project link or project ID]. Do not create a new idea.
```

Use the project link or ID from Rapidly's last receipt. Rapidly saves each completed stage, and a retry should resume from the first missing stage without another project, experiment set or idea charge. If it doesn't, report the agent, version, project link and last completed stage. Don't expose tokens or private continuation data.

## I have used all five trial ideas

The five-idea trial counts new ideas. The Canvas, hypothesis and experiment stages for an existing idea don't each count again. For more ideas, email [hello@rapidly.co](mailto:hello@rapidly.co) to discuss the right next step for your team.

## Contact support

See [SUPPORT.md](../SUPPORT.md) for what to include. Remove tokens, customer data and confidential details from errors, logs and screenshots.

For suspected security problems, use the private process in [SECURITY.md](../SECURITY.md).
