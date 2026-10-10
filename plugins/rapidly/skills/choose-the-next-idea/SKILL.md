---
name: choose-the-next-idea
description: Use when a team has several ideas saved in Rapidly and wants to know which one to test next, where the evidence gaps are, or how its idea portfolio is tracking. Rapidly compares the saved ideas and explains the scores, gaps, uncertainty and rationale for each one. Don't use it to generate new ideas; use test-an-idea or find_ideas for that.
---

# Choose the next idea to test

Most teams have more ideas than time to test them. Rapidly compares the ideas the team has already saved and recommends where the next experiment will teach the most.

## Run it

1. Call `list_ideas` to see the team's saved ideas and their stages.
2. Call `choose_next_idea`. It reads the saved ideas without changing them.
3. Show the user the recommended idea, the evidence gap it closes and why it beat the others. Include the runner-up and what would change the order.
4. If the user agrees, offer to continue with the `test-an-idea` skill for that idea, using its `project_id`.

## What to tell the user

- The ranking is based on what's saved in Rapidly. Ideas with no hypothesis or experiment yet will show bigger gaps.
- Picking an idea doesn't fund it. It decides what to test next.
