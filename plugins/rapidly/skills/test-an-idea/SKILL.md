---
name: test-an-idea
description: Use when someone is about to build, launch, fund or pitch a new product, feature, service or business and wants to know whether customers will want it first. Covers questions like "is this a good idea?", "how do I validate this before I build it?", "what's the smallest test I could run?" and "will customers pay for this?". Rapidly builds the Lean Canvas, a measurable hypothesis and three to five Pretotyping experiments, then returns a build prompt for the smallest test. Don't use it to write production code, build the finished product or write general marketing copy.
---

# Test an idea before building it

Rapidly applies Pretotyping, Alberto Savoia's method for testing demand before you build. A pretotype fakes the essential part of the product and measures what real customers do, not what they say they'll do. Rapidly does the method work and saves it with the idea, so the team can come back to it.

## Run it

1. Check that the Rapidly tools are available, for example `test_idea` and `find_ideas`. If they aren't, run the `setup` skill first.
2. If the user has an idea, call `test_idea` with the idea in their words: who the customer is, the problem and the proposed change. Add any facts, sources and constraints they've already given you.
3. If the user has a company but no idea yet, call `find_ideas` with a short brief that includes the company name and website. Use the number of ideas they asked for, or one. Then call `test_idea` for each idea they want to test.
4. When `test_idea` returns `status: in_progress`, call it again straight away with the same `project_id`. Keep going until it returns `complete` or a clearly explained `incomplete` result. Don't ask the user which stage to run or whether to save. Rapidly saves each stage itself.
5. Show the user the recommended first experiment, its pass mark, its go and no-go rule, and the build prompt exactly as Rapidly returned it. Mention that the other experiment options are saved with the idea.

## What to tell the user

- The pass mark is a proposal to test, not evidence. Real customers provide the evidence.
- Next step: build the test asset from the build prompt, put it in front of real customers, then come back with what happened. The `record-a-test-result` skill takes it from there.
- Generated facts and cited sources need a human check before anyone relies on them.

Don't expand the build prompt into a full product, dashboard or launch plan. The point is the smallest test that could change the decision.

## The method in brief

1. A Lean Canvas that names the customer, their problem and the proposed solution.
2. The riskiest assumption written as a market engagement hypothesis: who will do what, if offered what.
3. The same hypothesis made measurable as an XYZ hypothesis: at least X% of Y will do Z.
4. The cheapest named technique that tests it, such as a Fake Door, Pinocchio, Mechanical Turk, Provincial, Infiltrator or Imposter test, with the pass mark and decision rule set before the test starts.
5. A real test with real customers, then a decision to continue, change or stop.

More on the method: https://www.exponentially.com/pretotyping and https://www.exponentially.com/pretotyping-methods-101

Keep tokens, customer data and confidential idea details out of chat, logs and screenshots.
