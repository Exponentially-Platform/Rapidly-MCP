# Security and privacy

Read the [Rapidly Privacy Policy](https://www.rapidly.co/privacy) for the full terms.

## Authentication

Rapidly supports:

- a personal token created during new-customer onboarding;
- OAuth, where the user chooses a Rapidly team and approves access.

Personal tokens are shown once and stored as a hash. Keep tokens out of repositories, prompts, screenshots, tickets and shared shell history.

## Team access

Rapidly checks the credential, current team membership, granted scopes and tool access on each request. Successful method work saves only to the team authorised by the connection.

## Information sent through the connection

A tool call can contain the idea, customer context, Canvas, hypothesis, experiment content and any other information given to the AI client. Some grounded tools can also use public web search.

Use a non-confidential idea unless your organisation has approved sending that information through its AI client and Rapidly.

## Generated content

Treat generated company facts, cited sources, targets and experiment rules as proposals to review. Open the sources before using them with customers or as decision rules.

## Reporting a problem

Don't open a public issue for a suspected vulnerability. Use the private process in [SECURITY.md](../SECURITY.md).
