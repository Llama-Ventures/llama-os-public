# What does / doesn't go in this repo

Default: **if it's safe, publish it** — written methodology is a brand asset, not
a moat. The rules below exist to keep the unsafe things out. Anything added here
must clear all five, and pass `scripts/scan.sh`.

## Not allowed

1. **Information from private sources** — anything learned in a meeting, DM, deal
   conversation, recording, or private feed. Source isn't public → it doesn't go
   here, no matter how harmless the content seems.

2. **Models of a specific person** — a "virtual <name>" that replicates an
   individual's judgment needs that person's explicit sign-off (commentary on
   public figures built from public material is fine).

3. **Anything about an LP, a portfolio founder, or an active deal** — regardless
   of source. Trust and fiduciary duty, separate from privacy.

4. **Personal information** — real names beyond bylines, emails, phone numbers,
   contact lists, scraped founder data.

5. **Internal infrastructure** — API endpoints, routes, auth mechanisms, database
   schema, and any description that admits a security gap. Test: if it leaked,
   could the live system be attacked? If yes, it's a bug to fix, not a secret.

## Note on anonymizing

Stripping a name does **not** make private-sourced content safe — an identifiable
person stays identifiable, and publishing distilled private material is a breach
regardless of the byline. Anonymization only helps when the content is already
generic and merely carried someone's label.

## Examples in skills

Use fictional or publicly-sourced scenarios. Never embed a real company's deal
metrics or a real founder's assessment as an "example."
