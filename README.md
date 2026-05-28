<p align="center">
  <a href="https://llamaventures.vc"><img src="assets/llama-logo-horizontal-full.svg" alt="Llama Ventures" width="360"></a>
</p>

<h1 align="center">Llama OS — Public Skills</h1>

<p align="center">
  <em>How Llama Ventures thinks, as reusable AI-agent skills.</em>
</p>

<p align="center">
  <a href="LICENSE"><img alt="License: Apache 2.0" src="https://img.shields.io/badge/license-Apache--2.0-blue.svg?style=flat-square"></a>
  <img alt="Skills: 9" src="https://img.shields.io/badge/skills-10-fb923c?style=flat-square">
  <img alt="Claude Code plugin" src="https://img.shields.io/badge/Claude_Code-plugin-7c3aed?style=flat-square">
  <img alt="Made by Llama Ventures" src="https://img.shields.io/badge/made_by-Llama_Ventures-111?style=flat-square">
</p>

<p align="center">
  <b>English</b> · <a href="README.zh-CN.md">中文</a>
</p>

---

A small, curated set of **team-level methodology skills** — portable Markdown that
teaches any AI agent (Claude Code, Cursor, OpenClaw, …) a piece of how an
early-stage venture firm approaches its work: due-diligence frameworks,
market-scale calibration, technical assessment, cognitive mapping, and
multi-perspective debate.

We open-source the **methodology** because a written framework is a brand asset,
not a moat. This repo is the **open layer** of a larger AI-native operating system;
the private layers — a richer skill library, plus the backend where the firm's
agents act on live work — stay private. See the [Constitution](CONSTITUTION.md).

## Two ways to use it

- **If you're an investor** — run these frameworks to evaluate a startup: structured
  due diligence, market-scale calibration, technical assessment, and multi-perspective
  debate.
- **If you're a founder** — run the *same* frameworks on **your own** startup. See it
  the way a VC would, and find the gaps before the meeting. When you're ready, **pitch
  us — agent to agent** (see below).

## Install (Claude Code plugin)

```bash
/plugin marketplace add Llama-Ventures/llama-os-public
/plugin install llama-os-public@llama-ventures
```

Then invoke any skill:

```bash
/llama-os-public:dd-partner
```

## Use it with any agent

Point your agent at this repository and it will read [`AGENTS.md`](AGENTS.md) —
written for AI agents on how to load and use the skills. Or simply open any
`skills/<name>/SKILL.md` and read it; each is self-contained plain Markdown.

## What's inside

| Skill | What it does |
|-------|--------------|
| **`llama-investment-os`** | The investment operating system — vision, thinking, and DD method in one bilingual reference (start here). |
| **`dd-partner`** | A Socratic due-diligence thinking partner: verifies facts against public sources and surfaces *your* judgment via a business / people framework. |
| **`dd-onepager`** | Produces a structured DD one-pager — facts and opinions cleanly separated. |
| **`ic-report`** | Turns due-diligence work into a polished investment-committee report (HTML). |
| **`map-maker`** | Builds a cognitive map of any industry or domain — bird's-eye structuring, hidden threads, scaled detail. |
| **`big-picture`** | Calibrates the real-world scale of a company or market against public market data. |
| **`tech-oracle`** | Assesses a startup's technical claims and generates technical DD questions — for investors without a deep technical background. |
| **`tech-diligence`** | Deep technology-landscape research for a sector or direction. |
| **`vc-pantheon`** | 100 well-known investors as AI personas (built from public information) for multi-perspective debate and evaluation. |
| **`finance-health-check`** | 7-department medical-style framework for systematic financial diagnosis of public companies — cash flow, earnings quality, balance sheet, growth, capital efficiency, moat, and risk veto. Bilingual (zh/en). |

## Pitch us — agent to agent 🤝

You've just used Llama Ventures' own frameworks to think through a startup. If it's
**your** startup, have your agent pitch ours: **[llamaventures.vc/agent](https://www.llamaventures.vc/agent)** —
point your AI there and let it make the case directly. We believe it's one of the
first agent-to-agent venture pitches.

Prefer humans? Email the team at **info@llamaventures.vc**. The Llama CLI is open
source at **[github.com/Llama-Ventures/llama-cli](https://github.com/Llama-Ventures/llama-cli)**.

## What this is **not**

- Not the full internal operating system — no pipeline, no backend, no CLI.
- No individual "virtual partner" personas.
- No deal data, portfolio companies, LP relationships, or contact information.

## Disclaimer

- **Not investment advice.** These are educational frameworks for *thinking about*
  venture investing. Nothing here is investment, legal, financial, or tax advice,
  or a solicitation or recommendation regarding any security.
- **No warranty.** Provided "as is" under Apache-2.0, without warranties of any
  kind. You are responsible for your own decisions.
- **Illustrative & AI-generated content.** Examples are illustrative, not real
  transactions. The [`vc-pantheon`](skills/vc-pantheon) profiles are **AI
  simulations built solely from publicly available information**; they do **not**
  represent the actual views, statements, or endorsement of the named individuals
  and are not affiliated with or approved by them.
- **Third-party names and trademarks** (companies, funds, investors) are the
  property of their respective owners and are used for identification and
  commentary only.

## Contributing

Contributions are welcome — see [`CONTRIBUTING.md`](CONTRIBUTING.md). Please read
[`DISCLOSURE.md`](DISCLOSURE.md) (what does and doesn't belong here) and
[`CODE_OF_CONDUCT.md`](CODE_OF_CONDUCT.md) first. To report sensitive content, see
[`SECURITY.md`](SECURITY.md).

## License & attribution

[Apache-2.0](LICENSE). Developed at [Llama Ventures](https://llamaventures.vc);
released as a reusable methodology. If you build on it, attribution is appreciated.

<p align="center">
  <sub><a href="https://llamaventures.vc">llamaventures.vc</a> · An AI-native, early-stage venture firm.</sub>
</p>
