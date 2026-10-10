---
name: setup
description: Use right after Rapidly is installed, or when the Rapidly tools aren't available, to connect the user's Rapidly account and run a first idea. Covers signing in with OAuth, choosing a Rapidly team and checking the connection.
---

# Set up Rapidly

Rapidly runs as a remote MCP server at `https://www.rapidly.co/mcp`. The plugin already includes the connection, so setup is mostly signing in.

## Run it

1. Start the sign-in for the Rapidly connection. In Claude Code, that's `/mcp` then Rapidly. In Codex, run `codex mcp login rapidly`. In ChatGPT, follow the connect prompt.
2. Pause only while the user signs in, chooses their Rapidly team and approves access. Don't report that Rapidly is connected until sign-in is complete.
3. If the user doesn't have a Rapidly account, send them to https://www.rapidly.co/rapidly-mcp. It creates the account and team in a minute, with a 30-day free trial.
4. Check the connection with a small, real request. Ask the user for one idea they're thinking about, or a company name and website, then use the `test-an-idea` skill.

## Keep it safe

- Never ask the user to paste a token or password into chat.
- If their agent can't use OAuth, explain how to store a Rapidly personal token as a secure Authorization bearer token outside chat, source code and project files. The setup guide is at https://github.com/Exponentially-Platform/Rapidly-MCP/blob/main/docs/for-agents.md
- For help, email hello@rapidly.co.
