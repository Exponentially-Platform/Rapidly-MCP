# Set up Rapidly from your agent

Point your agent at this page and ask it to connect Rapidly.

Rapidly MCP address:

```text
https://www.rapidly.co/mcp
```

## What your agent needs to do

1. If you are Codex, run both commands below in order:

   ```bash
   codex mcp add rapidly --url https://www.rapidly.co/mcp
   codex mcp login rapidly
   ```

   The second command starts OAuth. Don't send the user to Codex Settings to authenticate. Pause only when they need to sign in, choose a Rapidly team or approve access. If you can't run the login command, give the user the exact command `codex mcp login rapidly`.
2. For another agent, add Rapidly as a remote HTTPS MCP server and use OAuth when the agent supports it.
3. If OAuth isn't available, explain how to store a Rapidly personal token as a secure Authorization bearer token. Never put the token in chat, source code or project files.
4. Don't report that Rapidly is connected until authentication is complete.
5. Start a fresh conversation after the connection is complete.
6. Check the connection by asking Rapidly to find one idea for a company using its website URL.

If the user needs a personal token, send them to [rapidly.co/rapidly-mcp](https://www.rapidly.co/rapidly-mcp). The page creates their Rapidly account and team, then shows the token once.

## Copy this request into your agent

```text
Connect Rapidly as a remote MCP server using https://www.rapidly.co/mcp.

Complete the connection, including authentication. If you are Codex, run both commands below in order:

codex mcp add rapidly --url https://www.rapidly.co/mcp
codex mcp login rapidly

Don't stop after adding the server or send me to Codex Settings to authenticate. Pause only when I need to sign in, choose a Rapidly team or approve access. If you can't run the login command, give me the exact command.

For another agent, use OAuth if you support it. Otherwise, show me how to store my Rapidly personal token as a secure Authorization bearer token without putting it in chat or project files.

Explain what you will change before you make the connection. When it is ready, start a fresh conversation and check the connection with this request: Ask Rapidly to find one idea for [company name] using [website URL]. Focus on [optional customer, problem or opportunity].
```

## Run one idea

Start with:

```text
Ask Rapidly to test this idea: [describe the customer, problem and proposed change].
```

Call `test_idea` with the user's idea. If Rapidly returns `status: in_progress`, immediately call `test_idea` again with the returned `project_id`. Continue until it returns `status: complete` or a safe, clearly explained `status: incomplete` result.

Don't ask the user which stage to run, whether to save, or how to manage continuation. Rapidly saves each stage automatically. A completed first run returns the Canvas, hypothesis, every saved experiment option, one recommended first experiment and its build prompt.

Return Rapidly's final build prompt without expanding it into a product, dashboard or other collateral. The user should review the proposed targets and sources before building or running the experiment.

Use `https://www.rapidly.co/mcp/?catalog=advanced` only when the user explicitly wants direct Canvas, hypothesis or experiment-stage control.

See [all Rapidly tools](tools.md) or the [manual setup instructions](quickstart.md).
