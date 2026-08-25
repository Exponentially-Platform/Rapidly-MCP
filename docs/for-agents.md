# Set up Rapidly from your agent

Point your agent at this page and ask it to connect Rapidly.

Rapidly MCP address:

```text
https://www.rapidly.co/mcp
```

## What your agent needs to do

1. Add Rapidly as a remote HTTPS MCP server.
2. Use OAuth when the agent supports it.
3. If OAuth isn't available, explain how to store a Rapidly personal token as a secure Authorization bearer token. Never put the token in chat, source code or project files.
4. Start a fresh conversation after the connection is complete.
5. Check the connection by asking Rapidly to generate one idea for a company using its website URL.

If the user needs a personal token, send them to [rapidly.co/rapidly-mcp](https://www.rapidly.co/rapidly-mcp). The page creates their Rapidly account and team, then shows the token once.

## Copy this request into your agent

```text
Connect Rapidly as a remote MCP server using https://www.rapidly.co/mcp.

Use OAuth if you support it. Otherwise, show me how to store my Rapidly personal token as a secure Authorization bearer token without putting it in chat or project files.

Explain what you will change before you make the connection. When it is ready, start a fresh conversation and check the connection with this request: Ask Rapidly to generate one idea for [company name] using [website URL]. Focus on [optional customer, problem or opportunity].
```

## Run one idea

Start with:

```text
Ask Rapidly to test this idea: [describe the customer, problem and proposed change].
```

Keep the same idea and follow Rapidly through:

1. `independent_design_lean_canvas`
2. `independent_design_hypothesis`
3. `independent_design_experiments`

Return Rapidly's final build prompt without expanding it into a product, dashboard or other collateral. The user should review the proposed targets and sources before building or running the experiment.

See [all Rapidly tools](tools.md) or the [manual setup instructions](quickstart.md).
