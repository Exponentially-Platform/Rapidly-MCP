# AI interview-practice agent

This is a real Rapidly MCP output from 24 August 2026. It shows the recommended experiment, decision rule and customer-facing asset. No customer test was run.

## Idea given to Rapidly

> An AI interview-practice agent for job seekers with a real interview scheduled in the next 2 to 6 weeks. It runs short adaptive role-plays, identifies mistakes, and gives targeted practice so the customer performs better in the actual interview.

## Rapidly's recommendation

**Experiment:** LinkedIn Fake Door to Book a Mock Interview

**Type:** Fake Door

**Hypothesis:** Job seekers with interviews in the next 2 to 6 weeks will take immediate action to get an AI-led mock interview that gives mistake detection and targeted drills. A simple post plus scheduler flow can test demand without building the product.

**Success measure:**

- Denominator: unique visitors who land on the booking page from LinkedIn posts, comments or direct messages within 7 days.
- Numerator: visitors who complete the booking form, select an interview date and confirm they have a real interview in the next 2 to 6 weeks.
- Metric: booking conversion rate.

**Proposed decision rule:** GO at 10% or more of qualified participants completing the target behaviour during the experiment. NO-GO below 10%.

Rapidly identified this as the smallest evidence-gathering experiment to run before implementation.

## What the agent built

[Open the customer-facing booking page](booking-page.html).

The page follows Rapidly's build prompt:

- one self-contained, editable HTML file;
- no backend, account, payment, dashboard or analytics system;
- headline: “Book a mock interview”;
- qualification: “Confirm you have a real interview in the next 2–6 weeks.”;
- CTA: “Book my mock interview”;
- required booking fields and qualification checkbox;
- inline validation and an on-page confirmation state.

## What happened here

Rapidly chose the experiment and defined the behaviour and proposed pass mark. The agent built only the booking form Rapidly requested.

The threshold is a proposal for review, not a measured result. No customer bookings were collected, so this is a designed experiment, not validation.

To run the experiment, upload `booking-page.html` to simple static hosting and use its URL in the LinkedIn post or direct messages. Record the numerator and denominator in Rapidly for calculation, interpretation and the GO/NO-GO decision.
