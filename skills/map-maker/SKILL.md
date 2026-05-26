---
name: map-maker
description: >
  为任何行业/领域构建认知地图。核心是解决认知问题：建立鸟瞰能力、找到暗线、形成结构化的全局理解。
  Use this skill whenever the user wants to map out an industry, understand a domain's structure, build a landscape overview,
  or develop a bird's eye view of any topic. Triggers for: "做个地图", "行业地图", "帮我梳理", "全景图", "landscape",
  "map out", "鸟瞰", "梳理一下这个行业", "帮我理解这个领域", or any request to structure knowledge about a complex domain.
  The output is a structured cognitive map (mindmap), not visual art. Visual presentation is optional and only when explicitly requested.
author: Llama Ventures
version: 1.0
created: 2026-04-09
status: active
tier: core
category: workflow-research
---
# 行业认知地图生成

为任何行业、领域或话题构建认知地图。核心目的是解决认知问题——帮助用户从"看不清"到"看得透"。

## 方法论：六个核心原则

**1. 鸟瞰能力 (Bird's Eye View)**
不是站得更高，而是建立坐标系。两种认知方式：
- 时间轴式（弱）：以自我经验为中心，不可共享
- 空间坐标式（强）：建立公共参照系，任何人都能用

地图的目的是把"我的经验"变成"大家都能看懂的坐标"。

**2. 分类 / 分期 / 分级 (Classify / Periodize / Rank)**
研究任何东西就三个方法：
- **分类**：按一致原则分（不能混着来）
- **分期**：找到有意义的时间分界
- **分级**：什么重要什么次要，比例尺问题

**3. 暗线 (Undercurrents)**
每张地图需要一条隐藏的因果链——不是表面的时间线，而是底层的驱动力。
找法：反复追问"什么底层变化导致了表面变化"。

**4. 无漏穷举 with 比例尺 (Exhaustive but Scaled)**
树状目录是"几乎唯一正确的工作方式"。但要有比例尺——过度穷举失去轻重。

**5. 一以贯之的道 (The Unifying Way)**
不同领域在底层相通。好的地图揭示这些跨领域的结构性相似。

**6. 后感性 (Post-Sensibility)**
先用理性建框架，然后让直觉揭示框架之外的洞见。"尽快使用理性，走过高速公路后尽快到达无人区。"

## 工作流

### Step 1: 定义核心命题

问：这张地图探索的核心问题或张力是什么？
- 好的命题是一个有张力的问题，不是一个平铺直叙的描述
- 例："中餐如何从世界上最被看不起的菜系变成下一个寿司？"
- 例："电动车如何从环保小众变成主流交通工具？"

### Step 2: 找到暗线

找隐藏的因果链：A → B → C → D
- 例：人变了 → 需求变了 → 餐桌变了 → 认知变了
- 例：成本下降 → 体验改善 → 政策推动 → 主流采纳

暗线是地图的灵魂——没有暗线的地图只是目录。

### Step 3: 并行调研

派多个研究 agent 并行收集信息（WebSearch）。按分期拆分调研任务，同时覆盖：
- 每个时期的关键人物、事件、数据
- 跨时期的结构性变化
- 非显而易见的连接和洞见

### Step 4: 构建树状结构

用 分类/分期/分级 组织调研结果，输出为 HTML mindmap：

```
标题
└── 核心命题
    └── 暗线

第一幕：[时期名] [时间] [一句话]
├── 分支1：[分类]
│   ├── 关键事实 / 数据
│   ├── 高亮要点
│   └── 解读（sub text）
├── 分支2：[分类]
└── 洞察框（跨分支观察）

第二幕：...
番外篇：[跨时期主题]

结尾注释：暗线回顾 + 地图的局限性声明
```

每个"幕"对应一个时期（分期），每个"分支"对应一个类别（分类），要素的字号和位置体现重要性（分级）。

每一幕结尾要有一个 **洞察框**——跨分支的、非显而易见的观察，这是"后感性"的体现。

### Step 5: 输出

默认输出一个 `mindmap.html` 文件——结构化的认知地图，可以在浏览器中直接打开阅读。

样式简洁清晰：树状层级、颜色编码分支、高亮关键词、洞察框。不需要花哨的视觉效果。

## 可选扩展：视觉长卷

如果用户明确要求视觉化呈现（"做成长卷"、"做个可以分享的版本"、"部署"），则参考 `references/design-system.md` 进入视觉制作流程（Hockney × Ukiyo-e 风格、横版/竖版HTML、生成音乐、GitHub Pages 部署）。这不是默认流程。

## 示例

User: "帮我梳理一下AI芯片行业"

→ 核心命题："芯片战争的本质是什么——算力垄断、架构革命、还是生态控制？"
→ 暗线：算力需求爆发 → 通用架构见顶 → 专用芯片崛起 → 地缘博弈介入 → 生态锁定
→ 并行调研（GPU时代/专用芯片/地缘/未来架构）
→ 输出 mindmap.html：4幕 + 番外篇，每幕有洞察框

<sub>Part of Llama OS — Public Skills. Originally developed at Llama Ventures; released as a reusable methodology. Examples are illustrative.</sub>
