# Example prompts

You can start by asking Rapidly to generate an idea or by giving it an idea you already have.

## Generate one or more ideas

```text
Ask Rapidly to generate [one or more] ideas for [company name] using [website URL]. Focus on [optional customer, problem or opportunity].
```

Including the company website gives Rapidly a clear place to start its research. It should return the number of grounded ideas you asked for, with cited public sources, and offer the next method step. Ask for more than one only when you want alternatives. A trial includes five new ideas.

## Test an idea you already have

```text
Ask Rapidly to test this idea:

Customer: claims agents handling live motor-insurance calls
Problem: finding the right policy clause and next action takes too long during the call
Proposed change: an AI copilot that recommends the clause and next action inside the claims workspace
Known evidence: [add the source]
Constraints: [privacy, brand, legal, operational or budget constraints]
```

Rapidly should preserve that customer, problem and proposed change rather than replacing the idea.

## Continue the same idea

After each result, accept the next Rapidly method when the agent offers it. This can be as simple as replying:

```text
yes
```

If the agent doesn't offer the next step, ask:

```text
Continue this same Rapidly idea to the next stage. Do not create a new idea.
```

Repeat after the Lean Canvas and hypothesis. The final experiment stage should return three to five Pretotyping options, a recommended first test, GO and NO-GO rules, and a build prompt for the test asset.

The Canvas, hypothesis and experiment stages are all part of the same idea. They don't each count as a new idea.

## Build the test asset

Copy the final build prompt into the agent or development tool you want to use for the asset.

Rapidly designs the experiment and build prompt. The other agent builds the asset. Review the asset before showing it to customers.

## Review a team portfolio

If your connection includes the team tools:

```text
Use Rapidly to show the authorised team's idea portfolio, include experiment coverage and prepare a sprint pack around the current focus idea.
```

Team tools depend on the access approved when connecting. See [what Rapidly can do](tools.md).

## Check every generated claim

Open the returned sources. Review proposed targets, customer facts and experiment thresholds before using them as evidence or decision rules.
