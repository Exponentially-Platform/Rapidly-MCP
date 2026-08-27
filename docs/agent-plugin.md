# Install the Rapidly Agent Plugin

The Rapidly Agent Plugin gives supported AI agents one repeatable way to test an idea before building it. It packages the Rapidly MCP connection with the `rapidly-test-before-build` skill.

## VS Code and GitHub Copilot

Run **Chat: Install Plugin From Source** from the Command Palette, then enter:

```text
https://github.com/Exponentially-Platform/Rapidly-MCP
```

VS Code installs the portable Agent Plugins 1.0 package from the repository. Enable Rapidly, complete the OAuth connection when prompted and start a fresh chat.

## Cursor

For a local check, clone this repository and link it into Cursor's local plugin folder:

```bash
mkdir -p ~/.cursor/plugins/local
ln -s /absolute/path/to/Rapidly-MCP ~/.cursor/plugins/local/rapidly
```

Reload Cursor, open **Customize** and confirm the Rapidly skill and MCP server are available. Complete authentication when prompted.

## Codex and ChatGPT

Add the Rapidly repository as a Codex plugin source, then install Rapidly:

```bash
codex plugin marketplace add Exponentially-Platform/Rapidly-MCP
codex plugin add rapidly@rapidly-mcp
```

Restart ChatGPT or Codex after installation. Complete the Rapidly OAuth connection when prompted. Public directory installation will be added after the package passes OpenAI review.

## Try it

Start with an uncoached request:

```text
Ask Rapidly to generate three ideas for a mobile coffee cart.
```

Or bring an idea you already have:

```text
Ask Rapidly to test this idea before I build it: [describe the idea].
```

Rapidly works one stage at a time. Review its sources and proposed targets, keep the same idea as you continue, and stop at the smallest test worth running.
