---
name: vc-pantheon
description: 全球Top100风险投资人投资逻辑库。用于项目交叉判断（"如果是Peter Thiel/沈南鹏/Bill Gurley会怎么看这个deal？"）和虚拟投资人辩论。当用户想要多视角评估项目、模拟不同投资人观点、进行虚拟IC辩论、或了解特定投资人的投资逻辑时触发。
author: Llama Ventures
version: 1.0
created: 2026-04-09
status: active
tier: core
category: person-external
---
# VC Pantheon — 全球顶级投资人投资逻辑库

> **⚠️ AI 模拟声明**：本库中所有投资人视角均为 AI 基于公开信息模拟，非真人意见。仅用于思维训练和多角度分析。

## 用途

1. **交叉判断**：评估一个项目时，快速调用多位投资人的视角，形成多维度观点碰撞
2. **虚拟辩论**：模拟不同投资人就同一项目展开 Bull vs Bear 辩论
3. **认知训练**：理解不同投资风格的底层逻辑，提升自身判断力
4. **对标参照**：了解不同基金的差异化定位

## 调用方式

### 单人视角
```
"如果是 Peter Thiel，他会怎么看这个项目？"
"用 Bill Gurley 的框架分析一下这个 marketplace"
"沈南鹏会投这个吗？"
```

### 多人交叉
```
"让 Marc Andreessen 和 Peter Thiel 辩论一下这个 AI infra 项目"
"用5个不同投资人的视角评估这个 deal"
"找3个最可能投这个项目的投资人，和3个最不可能投的"
```

### 风格匹配
```
"这个项目最适合哪类投资人？"
"帮我找到投资逻辑上最互补的 co-investor"
```

## 投资人分类

### 按风格
| 标签 | 描述 | 代表人物 |
|------|------|---------|
| `contrarian` | 逆向投资，押注非共识 | Peter Thiel, Vinod Khosla |
| `platform` | 平台思维，网络效应 | Bill Gurley, Reid Hoffman |
| `technical` | 技术深度驱动 | John Doerr, Nat Friedman |
| `operator` | 创始人/运营者背景 | Marc Andreessen, Ben Horowitz |
| `pattern` | 模式识别，数据驱动 | Michael Moritz, Roelof Botha |
| `ecosystem` | 生态系统构建 | Masayoshi Son, 沈南鹏 |
| `thesis` | 强主题驱动 | Chris Dixon, Fred Wilson |
| `founder-first` | 人优先于事 | Ron Conway, Alfred Lin |

### 按地域
- **硅谷核心** — Sequoia, a16z, Benchmark, Kleiner Perkins, Founders Fund, etc.
- **纽约** — USV, Thrive Capital, Tiger Global
- **中国/华人** — 沈南鹏, 张一鸣(投资视角), 李开复, 徐小平, 张颖
- **欧洲** — Index Ventures, Atomico, Balderton
- **全球化** — DST Global, SoftBank Vision Fund

### 按阶段偏好
- **Pre-seed / Seed** — Paul Graham, Ron Conway, Elad Gil
- **Series A** — Alfred Lin, Sarah Guo, Kirsten Green
- **Growth** — Lee Fixel, Yuri Milner, Mary Meeker

## 投资人档案格式

每位投资人的档案包含以下结构化信息：

```
# [投资人姓名]

## 基本信息
- 当前职位 / 基金
- 职业背景（创业/运营/金融/技术）
- 代表性投资（命中 + 失误）

## 核心投资逻辑
- 投资哲学（用TA自己的话）
- 决策框架
- 选人标准
- 选事标准

## 风格标签
- 阶段偏好 / 行业偏好 / 地域偏好
- 风格标签（contrarian / platform / technical / etc.）

## 标志性问题
- TA 见创始人时常问的问题

## 经典语录
- 体现投资逻辑的代表性发言

## 模拟指南
- 模拟此投资人视角时的语气、关注点、决策倾向
- TA 会特别关注项目的哪些方面
- TA 的已知偏好和盲点
```

## 辩论模式

当启动虚拟辩论时：

1. **选定参与者**（2-5位投资人）
2. **加载各自档案**
3. **每位投资人按自己的框架独立评估**
4. **组织交叉质疑**（每人挑战其他人的论点）
5. **生成综合观点图谱**（共识区域 + 分歧区域 + 各自盲点）

输出格式：
```
## 辩论：[项目名]

### 参与者
- [投资人A]：[一句话立场]
- [投资人B]：[一句话立场]

### 核心分歧
1. [分歧点] — A认为... / B认为...

### 共识
1. [共识点]

### 综合判断矩阵
| 维度 | 投资人A | 投资人B | 投资人C |
|------|--------|--------|--------|
| 投/不投 | | | |
| 核心理由 | | | |
| 最大担忧 | | | |
| 关键假设 | | | |
```

## 投资人完整列表

详见 `INDEX.md`

---

<sub>Part of Llama OS — Public Skills. Originally developed at Llama Ventures; released as a reusable methodology. Profiles are AI simulations built from public information.</sub>
