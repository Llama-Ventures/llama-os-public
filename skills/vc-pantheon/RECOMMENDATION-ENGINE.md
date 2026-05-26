# VC Pantheon — 推荐引擎 (Recommendation Engine)

> 当一个项目需要评估时，自动推荐最合适的投资人视角组合。

## 一、推荐流程

```
项目输入 → 特征提取 → 多维匹配 → 组合优化 → 输出推荐名单
```

### Step 1: 项目特征提取

从项目信息中提取以下结构化特征：

```yaml
project_profile:
  name: ""
  stage: pre_seed | seed | series_a | series_b | growth
  amount_seeking: "$XM"
  
  sector_primary: ""          # 主赛道（对应 TAG-TAXONOMY 的 sector 列表）
  sector_secondary: []        # 次要赛道
  
  founder_profile:
    background: technical_phd | serial_entrepreneur | big_tech | domain_expert | first_time
    geography: silicon_valley | china | nyc | europe | other
    style: visionary | execution | missionary | builder
  
  key_questions:              # 这个项目最需要回答的问题
    - "技术壁垒是否真实？"     # → 匹配 technical_depth 型投资人
    - "市场规模够不够大？"     # → 匹配 market_size 权重高的投资人
    - "这是平台还是工具？"     # → 匹配 platform_thinking 型投资人
    - "创始人够不够强？"       # → 匹配 founder_first 型投资人
    - "竞争格局如何？"         # → 匹配 data_driven / operator_lens 型投资人
```

### Step 2: 多维匹配评分

对每位投资人计算匹配分（0-100）：

```
match_score = 
  stage_fit × 0.20          # 阶段匹配（TAG stage 分数）
  + sector_fit × 0.25       # 行业匹配（TAG sector 分数）
  + style_relevance × 0.20  # 风格适配（项目需要的视角 vs 投资人风格）
  + founder_fit × 0.15      # 创始人类型匹配
  + diversity_bonus × 0.20  # 多样性加分（与已选投资人的差异化）
```

### Step 3: 组合优化

推荐不是选分数最高的 N 个人——而是选**最有信息量的组合**：

**多样性原则**：
- 至少 1 位看多倾向 + 1 位看空倾向
- 至少 1 位技术视角 + 1 位商业/市场视角
- 避免同一基金的多位投资人（视角重叠）
- 如果项目涉及中国/华人创始人，至少 1 位中国 VC 视角

**冲突最大化**：优先选择在关键问题上可能产生分歧的组合，而非共识组合。

## 二、推荐档位

### 🎯 快速评估（1-3 人）
**用途**：初步判断，快速过滤
**选人逻辑**：
- 1 人：选 match_score 最高的
- 2 人：1 Bull + 1 Bear
- 3 人：1 行业专家 + 1 看多 + 1 看空

**输出格式**：
```
## 快速评估：[项目名]
- [投资人A]（行业专家）：[2-3 句判断]
- [投资人B]（Bull）：[2-3 句判断]  
- [投资人C]（Bear）：[2-3 句判断]
→ 综合：继续看 / 放弃 / 需要更多信息
```

### 🔍 标准评估（5 人）
**用途**：正式 deal 评估，准备 IC 讨论
**选人逻辑**：
- 1 行业最相关专家（sector match 最高）
- 1 创始人评估专家（founder_first 风格）
- 1 商业模式/市场专家（market_size + business_model 权重高）
- 1 技术深度评估（technical_depth 风格）
- 1 Contrarian/Devil's Advocate（看空倾向或逆向思维）

**输出格式**：完整 5 人独立评估 + 交叉矩阵 + 核心分歧 + 共识区域

### 🏛️ 全面评估 / IC 模拟（10 人）
**用途**：重大投资决策、模拟 IC 会议
**选人逻辑**：
- 标准 5 人 +
- 1 Growth/后期投资人视角（"这公司能上市吗？"）
- 1 跨境/全球视角
- 1 与用户投资哲学最对标的投资人
- 1 与用户投资哲学最冲突的投资人
- 1 Wildcard（意想不到的视角，如消费投资人看 B2B 项目）

**输出格式**：完整 IC 模拟，含提问、质疑、投票、综合判断

## 三、推荐输出模板

```markdown
## 📋 投资人推荐：[项目名]

### 项目特征
| 维度 | 值 |
|------|---|
| 阶段 | [stage] |
| 赛道 | [sector] |
| 创始人类型 | [type] |
| 核心待答问题 | [questions] |

### 推荐名单

#### 🎯 核心推荐（必看）
| # | 投资人 | 匹配分 | 推荐理由 | 预期视角 |
|---|--------|-------|---------|---------|
| 1 | [name] | [score] | [why] | [expected perspective] |
| 2 | [name] | [score] | [why] | [expected perspective] |
| 3 | [name] | [score] | [why] | [expected perspective] |

#### 🔍 扩展推荐（深入评估时加入）
| # | 投资人 | 匹配分 | 推荐理由 | 预期视角 |
|---|--------|-------|---------|---------|
| 4 | [name] | [score] | [why] | [expected perspective] |
| 5 | [name] | [score] | [why] | [expected perspective] |

#### 💡 Wildcard（提供意外视角）
| # | 投资人 | 推荐理由 |
|---|--------|---------|
| W | [name] | [why this unexpected perspective is valuable] |

### 预期分歧热点
1. [Issue 1]：[Investor A] vs [Investor B]
2. [Issue 2]：[Investor C] vs [Investor D]

### 与用户视角的对比
- 用户可能与 [Investor X] 最共鸣，因为 [reason]
- 用户应特别注意 [Investor Y] 的挑战，因为 [reason]
```

## 四、特殊场景推荐

### 场景 A：中国/华人创始人 AI 项目
**必选**：沈南鹏 + 李开复 + 1 位硅谷 AI 投资人
**推荐**：陆奇（技术视角）、张磊（长期价值）、Sarah Guo（AI-native）

### 场景 B：Developer Tools / Infrastructure
**必选**：Martin Casado + Peter Fenton + Byron Deeter
**推荐**：Nat Friedman（builder 视角）、Mike Volpi（enterprise infra）

### 场景 C：Consumer AI Application
**必选**：Andrew Chen + Chris Dixon + Kirsten Green
**推荐**：Li Jin（creator economy）、Josh Kushner（消费+健康）

### 场景 D：Deep Tech / Frontier
**必选**：Vinod Khosla + Brian Singerman + Steve Jurvetson
**推荐**：Peter Thiel（垄断视角）、Vijay Pande（bio+AI）

### 场景 E：Marketplace / Platform
**必选**：Bill Gurley + Jeff Jordan + Andrew Chen
**推荐**：Danny Rimer（全球市场）、Fred Wilson（网络效应）

### 场景 F：Enterprise SaaS / Workflow
**必选**：Byron Deeter + David Sacks + Mamoon Hamid
**推荐**：Keith Rabois（运营指标）、Hemant Taneja（responsible innovation）

## 五、Anti-Patterns（避免的推荐错误）

1. **不要只选同意的人** — 如果推荐的 5 个人都会说"投"，这个推荐没有价值
2. **不要忽略阶段错配** — Growth 投资人评估 Pre-seed 项目的框架不适用
3. **不要让中国 VC 评估纯美国市场** — 除非有跨境视角（如 Hans Tung）
4. **不要让纯消费投资人评估深度技术** — 除非是 Wildcard 位
5. **不要重复同一基金** — 同一基金的投资人思维框架高度相似
