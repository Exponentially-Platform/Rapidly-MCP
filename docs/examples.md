# Example prompts

You can start by asking Rapidly to generate an idea or by giving it an idea you already have.

## Generate one idea

```text
Ask Rapidly for one business idea for an independent bookstore.
```

Rapidly should return one grounded idea with cited public sources and offer the next method step.

To explore several alternatives instead:

```text
Ask Rapidly for three business ideas for an independent bookstore. Keep the customer and business context clear, explain why each idea fits and cite the public sources used.
```

Request several ideas only when you want alternatives. Each new idea uses one idea allowance.

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

After each result, accept the next Rapidly method when the client offers it. This can be as simple as replying:

```text
yes
```

If the client doesn't offer the next step, ask:

```text
Continue this same Rapidly idea to the next stage. Do not create a new idea.
```

Repeat after the Lean Canvas and hypothesis. The final experiment stage should return Pretotyping options, a recommended first test, GO and NO-GO rules, and a build prompt for the test assets.

Continuing the same idea doesn't use another idea allowance.

## Build the test asset

Copy the final build prompt into the AI client or development tool you want to use for the asset.

Rapidly designs the experiment and build prompt. The other agent builds the asset. Review the asset before showing it to customers.

## Review a team portfolio

If your connection includes the team tools:

```text
Use Rapidly to show the authorised team's idea portfolio, include experiment coverage and prepare a sprint pack around the current focus idea.
```

The live `tools/list` response determines which team, read and write tools are available to the connection.

## Check every generated claim

Open the returned sources. Review proposed targets, customer facts and experiment thresholds before using them as evidence or decision rules.
