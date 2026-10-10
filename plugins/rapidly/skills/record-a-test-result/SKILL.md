---
name: record-a-test-result
description: Use when someone has run a test for an idea saved in Rapidly, such as a Fake Door page, landing page, pre-order, sign-up form, pilot or customer conversations, and wants to record what customers did and decide whether to continue, change or stop. Rapidly saves the observation against the experiment without overwriting history, then gives a traceable recommendation. Don't use it for ideas that haven't been tested yet; use test-an-idea instead.
---

# Record a test result and decide

A test only helps if the result is written down against the idea and someone makes a call. Rapidly keeps every observation and decision with the experiment, so the team can see why an idea moved forward or stopped.

## Run it

1. Find the idea. If the user gives a project ID or link, call `get_idea`. Otherwise call `list_ideas` and confirm which idea and experiment they mean.
2. Get the facts of what happened: how many people saw the test, how many took the action, over what dates, and anything unusual. Ask for the numbers if the user only gives an impression.
3. Call `record_test_result` with those observations for the right experiment. If a number was wrong earlier, record a correction rather than a new result.
4. Call `decide_idea` to get Rapidly's advisory recommendation: continue, change or stop, with its reasoning.
5. Show the user the result against the pass mark set before the test, Rapidly's recommendation and the reasoning.

## What to tell the user

- The recommendation is advice. The team decides, and Rapidly doesn't change the idea's stage on its own.
- Record what customers did, not what they said they'd do.

Keep personal data about customers out of the observations. Counts and dates are enough.
