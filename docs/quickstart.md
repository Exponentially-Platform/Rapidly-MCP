# Rapidly MCP setup

ChatGPT and Claude connect from Rapidly's listing. Codex, Claude Code and other agents use this MCP address:

```text
https://www.rapidly.co/mcp
```

Opening that address in a browser returns an empty response by design. Follow the path for your agent below.

## Claude Code or Codex plugin

The quickest setup is the Rapidly plugin. It adds the connection and skills that tell your agent when to use Rapidly.

```text
/plugin marketplace add Exponentially-Platform/Rapidly-MCP
/plugin install rapidly@rapidly
```

Those are Claude Code commands; then run `/mcp`, choose Rapidly and sign in. In Codex:

```bash
codex plugin marketplace add Exponentially-Platform/Rapidly-MCP
codex plugin add rapidly@rapidly
```

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

### Claude

1. Open [Rapidly in the Claude directory](https://claude.ai/directory/www-rapidly-co) and select **Connect**.
2. When Rapidly opens, sign in if it asks, choose your Rapidly team and select **Allow access**.
3. In a conversation, turn Rapidly on from **+ → Connectors**.

On a Team or Enterprise plan, an owner adds Rapidly first: open **Organization settings → Connectors → Browse connectors**, select Rapidly, then select **Add to your team**. Members then follow the steps above.

Only the [advanced connection](tools.md#advanced-method-catalogue) needs the address added by hand:

1. On a Pro or Max plan, open **Customize → Connectors → + → Add custom connector**. If you own a Team or Enterprise organisation, open **Organization settings → Connectors → Add → Custom → Web**. Members of that organisation then open **Customize → Connectors** and select **Connect**.
2. Name it `Rapidly` and enter `https://www.rapidly.co/mcp/?catalog=advanced`.
3. Approve your Rapidly team.
4. In a conversation, turn Rapidly on from **+ → Connectors**.

### ChatGPT

1. Open [Rapidly in ChatGPT](https://chatgpt.com/plugins/plugin_asdk_app_6a8e5b049a408191aad1429cca54f2cf) and select **Install plugin**. If ChatGPT asks, select **Connect**.
2. When Rapidly opens, sign in if it asks, choose your Rapidly team and select **Allow access**.
3. Start a new chat and ask for what you want, such as "Ask Rapidly to test this idea: [describe your idea]". If ChatGPT doesn't use Rapidly, choose it from the **+** menu.

You don't need Developer mode. If your workspace shows **Disabled by admin**, ask a workspace admin to review Rapidly in **Admin Console → Plugins**.

Only the [advanced connection](tools.md#advanced-method-catalogue) needs the address added by hand, and ChatGPT gives a custom server its full tools only on Business, Enterprise and Education workspaces:

1. An admin or owner opens **Plugins**, selects **+**, then **Add custom MCP server**.
2. Name it `Rapidly`, enter `https://www.rapidly.co/mcp/?catalog=advanced` and choose OAuth.
3. Accept the risk warning, select **Create as a plugin** and approve your Rapidly team.

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
Ask Rapidly to find one idea for [company name] using [website URL]. Focus on [optional customer, problem or opportunity].
```

A working connection should return one idea with sources and offer the next Rapidly step.

You can also start with your own idea:

```text
Ask Rapidly to test this idea: [customer, problem and proposed change].
```

See [Example prompts](examples.md) for the complete first run.

If you need direct control of the Canvas, hypothesis or experiment stage, add a second connection using `https://www.rapidly.co/mcp/?catalog=advanced`. The normal connection is simpler for most work.
