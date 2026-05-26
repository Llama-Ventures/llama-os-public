<p align="center">
  <a href="https://llamaventures.vc"><img src="assets/llama-logo-horizontal-full.svg" alt="Llama Ventures" width="360"></a>
</p>

<h1 align="center">Llama OS — Public Skills</h1>

<p align="center">
  <em>把 Llama Ventures 的思考方式，做成任何 AI agent 都能加载的 skill。</em>
</p>

<p align="center">
  <a href="LICENSE"><img alt="License: Apache 2.0" src="https://img.shields.io/badge/license-Apache--2.0-blue.svg?style=flat-square"></a>
  <img alt="Skills: 9" src="https://img.shields.io/badge/skills-9-fb923c?style=flat-square">
  <img alt="Claude Code plugin" src="https://img.shields.io/badge/Claude_Code-plugin-7c3aed?style=flat-square">
  <img alt="Made by Llama Ventures" src="https://img.shields.io/badge/made_by-Llama_Ventures-111?style=flat-square">
</p>

<p align="center">
  <a href="README.md">English</a> · <b>中文</b>
</p>

---

一组精选的**团队级方法论 skill**——可移植的 Markdown，教任何 AI agent
（Claude Code、Cursor、OpenClaw……）一部分"早期 VC 怎么做事"：尽调框架、
市场规模刻度感、技术评估、认知地图、多视角辩论。

我们开源**方法论**——因为写下来的框架是品牌资产，不是护城河。
这个仓库是一套更大的 AI 原生操作系统的**公开层**；私有层——更丰富的 skill 库，
以及让团队 agent 在真实业务上干活的后台——不公开。详见 [Constitution](CONSTITUTION.md)。

## 两种用法

- **如果你是投资人** —— 用这套框架评估一家创业公司：结构化尽调、市场规模刻度、
  技术评估、多视角辩论。
- **如果你是创业者** —— 用**同一套**框架审视**你自己的**公司，像 VC 一样看自己、
  在见面前先找出短板。准备好了，就**来和我们 pitch —— agent 对 agent**（见下文）。

## 安装（Claude Code 插件）

```bash
/plugin marketplace add Llama-Ventures/llama-os-public
/plugin install llama-os-public@llama-ventures
```

然后调用任意 skill：

```bash
/llama-os-public:dd-partner
```

## 用任何 agent 加载

把这个仓库指给你的 agent，它会读 [`AGENTS.md`](AGENTS.md)——专门写给 AI agent
的加载与使用说明。或者直接打开任意 `skills/<name>/SKILL.md` 阅读，每个都是
自包含的纯 Markdown。

## 包含哪些 skill

| Skill | 作用 |
|-------|------|
| **`llama-investment-os`** | 投资操作系统——愿景、思想、DD 方法三合一的双语参考（从这里开始）。 |
| **`dd-partner`** | 苏格拉底式尽调思考搭子：对照公开来源核验事实，用"事/人"框架逼出**你自己**的判断。 |
| **`dd-onepager`** | 生成结构化的 DD 一页纸——事实与观点清晰分离。 |
| **`ic-report`** | 把尽调成果做成投委会 HTML 报告。 |
| **`map-maker`** | 为任何行业/领域建认知地图——鸟瞰式结构化、暗线、比例尺。 |
| **`big-picture`** | 用公开市场数据校准一家公司/一个市场的真实体量刻度。 |
| **`tech-oracle`** | 评估创业公司的技术声称、生成技术 DD 问题——给非技术背景的投资人。 |
| **`tech-diligence`** | 对某个技术赛道/方向做深度 landscape 研究。 |
| **`vc-pantheon`** | 100 位知名投资人的 AI persona（基于公开信息构建），用于多视角辩论与评估。 |

## 来 pitch 我们 — agent 对 agent 🤝

你刚用 Llama Ventures 自己的框架把一个创业项目想了一遍。如果这是**你自己**的项目，
让你的 agent 来 pitch 我们的：**[llamaventures.vc/agent](https://www.llamaventures.vc/agent)**——
把你的 AI 指过去，让它直接替你陈述。我们相信这是最早的 agent 对 agent 风投 pitch 之一。

更想找真人？邮件团队 **info@llamaventures.vc**。Llama CLI 已开源：
**[github.com/Llama-Ventures/llama-cli](https://github.com/Llama-Ventures/llama-cli)**。

## 它**不是**什么

- 不是完整的内部操作系统——没有 pipeline、没有后端、没有 CLI。
- 没有任何个人"虚拟合伙人"persona。
- 没有 deal 数据、被投公司、LP 关系或联系方式。

## 免责声明

- **非投资建议。** 这些是用于**思考**风险投资的教育性框架。本仓库不构成投资、
  法律、财务或税务建议，也不构成任何证券的招揽或推荐。
- **不提供任何担保。** 依 Apache-2.0 以"现状（as is）"提供，不附带任何形式的
  担保。你对自己的决策负责。
- **示例为示意 / AI 生成内容。** 例子均为示意，并非真实交易。
  [`vc-pantheon`](skills/vc-pantheon) 中的画像是**仅基于公开信息构建的 AI 模拟**，
  **不代表**被点名个人的真实观点、言论或背书，也未获其关联或认可。
- **第三方名称与商标**（公司、基金、投资人）归各自所有者所有，此处仅用于识别与评述。

## 参与贡献

欢迎贡献——见 [`CONTRIBUTING.md`](CONTRIBUTING.md)。请先阅读
[`DISCLOSURE.md`](DISCLOSURE.md)（什么能/不能放进来）与
[`CODE_OF_CONDUCT.md`](CODE_OF_CONDUCT.md)。如需报告敏感内容，见
[`SECURITY.md`](SECURITY.md)。

## 许可与署名

[Apache-2.0](LICENSE)。由 [Llama Ventures](https://llamaventures.vc) 开发，
作为可复用的方法论开源。如基于本仓库构建，欢迎署名。

<p align="center">
  <sub><a href="https://llamaventures.vc">llamaventures.vc</a> · 一家 AI 原生的早期风险投资机构。</sub>
</p>
