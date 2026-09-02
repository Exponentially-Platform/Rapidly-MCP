# What Rapidly can do

You normally ask for the outcome in plain English. Your agent chooses the Rapidly tools needed to do the work.

## Standard catalogue

The default Rapidly catalogue contains seven tools. A connection receives only the tools permitted by its approved OAuth scopes and team access:

| Tool | What it does |
|---|---|
| `test_idea` | Saves or resumes one idea, then builds its Canvas, measurable hypothesis, three to five saved experiment options, recommendation and one build prompt. |
| `find_ideas` | Generates and saves the requested number of ideas from a company, problem or open brief. |
| `list_ideas` | Lists ideas in the Rapidly team authorised by the connection. |
| `get_idea` | Returns one saved idea with its Canvas, hypothesis, experiment options, prompt, evidence and decisions. |
| `record_test_result` | Appends real observations and numbers to an experiment, or records a correction without overwriting history. |
| `decide_idea` | Interprets the current evidence and saves a traceable continue, change or stop recommendation. It doesn't change the idea's lifecycle automatically. |
| `choose_next_idea` | Compares saved ideas and shows scores, evidence gaps, uncertainty and rationale for every candidate considered. |

For a complete first run, ask Rapidly to test the idea. Your agent should repeat `test_idea` with the saved project while the result says `in_progress`. Completed work is saved at every stage, so a safe retry resumes from the first missing stage without creating another idea or charge.

## Advanced method catalogue

Connect to `https://www.rapidly.co/mcp/?catalog=advanced` only when you need direct control of a method stage. It includes the seven standard tools plus:

| Tool | What it does |
|---|---|
| `design_lean_canvas` | Creates or revises a complete Lean Canvas on one saved idea. |
| `design_hypothesis` | Creates or revises the measurable hypothesis on the same saved idea. |
| `design_experiments` | Saves every useful experiment option, identifies the recommended first experiment and generates its build prompt. |

Backend idea, experiment, bundle and team-knowledge editing functions still support Rapidly's web product and trusted server workflow. They are not exposed as MCP tools.

The tools available to an agent depend on the team and access you approve when connecting. Rapidly checks that access on every request.
