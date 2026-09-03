# Example prompts

You can start by asking Rapidly to generate an idea or by giving it an idea you already have.

## Generate and test three ideas in one go

```text
Ask Rapidly for three ideas for [company], focused on [opportunity], and fully test all three in one go.
```

Rapidly should save three ideas, then take each one through its Canvas, hypothesis and three to five experiment options. The completed result should include one recommended first test and one build prompt for each idea.

## Generate one or more ideas

```text
Ask Rapidly to generate [one or more] ideas for [company name] using [website URL]. Focus on [optional customer, problem or opportunity].
```

Including the company website gives Rapidly a clear place to start its research. It should save and return the number of grounded ideas you asked for, with cited public sources. Ask for more than one only when you want alternatives. A trial includes five new ideas.

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

## Let Rapidly complete the first test

Your agent should continue the same saved idea automatically while Rapidly reports `status: in_progress`. You shouldn't need to choose the next stage or confirm each save.

If the conversation stops before the run is complete, paste the project link or ID from Rapidly's last receipt and ask:

```text
Continue the Rapidly idea at [project link or project ID]. Do not create a new idea.
```

The completed result should contain three to five saved experiment options, a recommended first test, GO and NO-GO rules, and one build prompt for the recommended test asset. The other options remain saved without unnecessary prompts.

The Canvas, hypothesis and experiment stages are all part of the same idea. They don't each count as a new idea, and retrying a saved stage doesn't consume another idea.

## Build the test asset

Copy the final build prompt into the agent or development tool you want to use for the asset.

Rapidly designs the experiment and build prompt. The other agent builds the asset. Review the asset before showing it to customers.

## Review a team portfolio

```text
Use Rapidly to show the authorised team's saved ideas, including their current experiments and evidence, and recommend what we should test next.
```

The result should explain the evidence gaps, uncertainty and rationale for every candidate it considered. Tools depend on the access approved when connecting. See [what Rapidly can do](tools.md).

## Check every generated claim

Open the returned sources. Review proposed targets, customer facts and experiment thresholds before using them as evidence or decision rules.
