# Contributing

**Llama OS — Public Skills** is a curated, open methodology library. Improvements to
a framework, fixes to an error, a useful generic skill, or clearer writing are all
welcome.

## Ground rules (read first)

Read [`DISCLOSURE.md`](DISCLOSURE.md). Nothing in a contribution may include:

- information from private sources (meetings, DMs, recordings, private feeds);
- a model of a specific real person without that person's consent;
- anything about a specific LP, portfolio company, or active deal;
- personal contact information (names beyond bylines, emails, phone numbers); or
- internal infrastructure details (endpoints, credentials, schemas).

Examples must be **illustrative** — fictional or drawn from clearly public record.
Never embed a real, non-public deal or a real founder's assessment.

## How to contribute

1. Open an issue describing the change.
2. Fork, branch, and open a pull request.
3. Run `./scripts/scan.sh` locally — it must pass before review.
4. By contributing, you agree your contribution is licensed under [Apache-2.0](LICENSE).

## Adding or editing a skill

- Each skill is `skills/<name>/SKILL.md` with frontmatter (`name`, `description`),
  plus an optional `references/` folder loaded on demand.
- Keep skills **self-contained and tool-agnostic** — a `SKILL.md` should work for any
  capable AI agent, with no dependency on a private backend.
- If you have Claude Code, validate with `claude plugin validate .`.

## Style

- Write for clarity. Separate facts from opinions.
- Prefer the lightest framework that does the job.
