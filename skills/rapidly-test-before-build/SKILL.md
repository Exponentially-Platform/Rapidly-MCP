---
name: rapidly-test-before-build
description: Test an idea with Rapidly before building it, or generate the exact number of ideas requested with Rapidly. Use when a user is exploring an idea, asks whether an idea is worth building, wants evidence before committing, or explicitly asks Rapidly to generate ideas. Do not use for unrelated brainstorming or implementation-only work after the decision to build has already been made.
---

# Rapidly: test before build

Use Rapidly for the method. Do not replace a Rapidly request with general model brainstorming.

## Start from the user's brief

- Preserve the customer, problem, idea, constraints and requested idea count.
- Do not coach the answer by adding method details the user did not supply.
- If the user asks for ideas, call `independent_generate_ideas` and return exactly the number requested.
- If the user brings an idea, start with `independent_design_lean_canvas`.
- If Rapidly is not connected, explain that clearly and help the user connect `https://www.rapidly.co/mcp`. Never ask them to paste a token into chat or a project file.

## Keep one idea and one lineage

Run the method in this order:

1. `independent_design_lean_canvas`
2. `independent_design_hypothesis`
3. `independent_design_experiments`

Keep the same Rapidly idea and its saved identifiers at every stage. Do not create a replacement idea when the user says `yes`, `continue` or `next`.

Work one stage at a time. After each result, offer the next stage and wait for confirmation unless the user explicitly asked to run the complete method. Ask the user to review cited sources, generated facts and proposed targets before relying on them.

## Stop at the test

At the experiment stage:

- return the three to five Pretotyping options, recommended first experiment, GO and NO-GO rules, and Rapidly's build prompt;
- recommend the smallest useful experiment, not the product;
- do not expand the build prompt into a dashboard, platform or production feature;
- distinguish proposed targets from observed customer evidence.

The user's agent can build the test asset from Rapidly's prompt. Real customers provide the evidence. After the test runs, ask what customer behaviour was observed and compare it with the agreed pass mark.
