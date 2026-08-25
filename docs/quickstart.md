# Rapidly MCP setup

Add Rapidly to your agent with this MCP address:

```text
https://www.rapidly.co/mcp
```

Opening that address in a browser returns an empty response by design. Follow the path for your agent below.

## New customer with a personal token

Open [rapidly.co/rapidly-mcp](https://www.rapidly.co/rapidly-mcp). Enter your name, email and team name. Rapidly creates the account and team, then shows the token once.

Codex supports both connection paths. A new user can connect Codex CLI with the personal token below. OAuth is the tested route for the Codex app and is also available to Codex CLI.

### Codex CLI

1. Choose **Copy Codex setup** on the token page.
2. Paste it into a fresh Bash or Zsh terminal and press Enter.
3. When prompted, return to the page and choose **Copy token**.
4. Paste the token into the terminal and press Enter.

The supplied setup keeps the token in the current terminal environment, registers Rapidly using `--bearer-token-env-var RAPIDLY_MCP_TOKEN`, and opens Codex. It does not write the token into the command or repository.

### Claude Code

1. Choose **Copy Claude setup** on the token page.
2. Paste it into a fresh terminal and press Enter.
3. When prompted, choose **Copy token** on the page.
4. Paste the token into the terminal and press Enter.

The supplied setup registers Rapidly at user scope with an environment-backed Authorization header, then opens Claude Code. The token is not written into the project configuration.

## OAuth connection

Existing Rapidly team members can approve a named team through OAuth. The tested Codex app route also works for a new `/rapidly-mcp` account.

### Codex app

Run in Terminal:

```bash
codex mcp add rapidly --url https://www.rapidly.co/mcp
codex mcp login rapidly
```

Run both commands. Don't use Codex Settings to start authentication. If the login command can't be run automatically, give the user the exact command `codex mcp login rapidly`.

Choose the intended Rapidly team and select **Allow access**. Quit and reopen Codex, open **Settings > Connections**, confirm Rapidly is listed, then start a fresh task.

The Codex app, Codex CLI and Codex IDE extension share Codex MCP configuration.

### Codex CLI

For OAuth, use the same two commands shown for the Codex app, approve the team, then start a fresh Codex session.

For a personal token, use the copy-ready setup on the Rapidly token page instead.

### Claude Code

```bash
claude mcp add --transport http --scope user rapidly https://www.rapidly.co/mcp
```

Start Claude Code and run `/mcp`. Select Rapidly, complete the OAuth sign-in, choose the intended team and select **Allow access**. Then start a new conversation.

### Claude custom connector

For Claude Pro or Max:

1. Open **Settings > Connectors**.
2. Select **Add custom connector**.
3. Name it `Rapidly`, enter `https://www.rapidly.co/mcp` and select **Add**.
4. Select **Connect**, choose the intended Rapidly team and select **Allow access**.
5. In a new conversation, open **Search and tools** and enable Rapidly.

For Claude Team or Enterprise, an owner first adds Rapidly under **Settings > Connectors > Organization connectors**. Each member then connects it from the same page.

This setup is documented, but the recorded Rapidly production smoke covered Claude Code rather than the hosted Claude connector.

### ChatGPT

Full MCP write support requires an eligible ChatGPT Business, Enterprise or Edu workspace and depends on workspace policy.

1. An admin or authorised workspace user enables Developer mode for custom MCP apps.
2. Open **Workspace settings > Apps > Create**.
3. Add Rapidly with `https://www.rapidly.co/mcp` and choose OAuth.
4. Select **Scan Tools**, approve the intended Rapidly team and create the draft app.
5. Start a new chat and select the Rapidly draft app from the tools menu.

### Hermes, OpenClaw, Grokbot and other agents

Any agent that supports a remote HTTPS MCP server can use Rapidly when it also supports OAuth or a secure Authorization header.

Ask the agent:

```text
Add Rapidly as a remote MCP server at https://www.rapidly.co/mcp.
Use OAuth if you support it. Otherwise, show me how to configure my Rapidly personal token as a secure Authorization bearer token without putting it in chat or project files.
```

The agent should explain where it stores the connection and credential before making the change. Never paste a personal token into a chat message. After connecting, start a fresh conversation and use the check below.

You can also point the agent at the shorter [agent setup page](for-agents.md).

## Check the connection

Start a fresh conversation and ask:

```text
Ask Rapidly to generate one idea for [company name] using [website URL]. Focus on [optional customer, problem or opportunity].
```

A working connection should return one idea with sources and offer the next Rapidly step.

You can also start with your own idea:

```text
Ask Rapidly to test this idea: [customer, problem and proposed change].
```

See [Example prompts](examples.md) for the complete first run.
