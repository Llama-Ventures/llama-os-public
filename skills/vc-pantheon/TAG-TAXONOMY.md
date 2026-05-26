# VC Pantheon — 标签分类体系 (Tag Taxonomy)

> 每位投资人档案必须包含以下结构化标签，用于推荐引擎匹配和辩论选人。

## 一、阶段偏好 (Stage Preference)

每个阶段打 0-5 分（0=从不，5=最擅长/最活跃）

```yaml
stage:
  pre_seed: 0-5      # 概念/团队阶段，< $2M
  seed: 0-5           # 有产品雏形，$2M-$5M
  series_a: 0-5       # PMF 验证，$5M-$20M
  series_b: 0-5       # 规模化，$20M-$60M
  growth: 0-5         # $60M+
  public_crossover: 0-5  # Pre-IPO / 上市后
```

## 二、行业/赛道专精 (Sector Expertise)

每个赛道打 0-5 分（0=从不碰，5=该领域全球最佳之一）

```yaml
sector:
  # AI 相关
  ai_infrastructure: 0-5       # 基础模型、训练框架、推理优化
  ai_application_b2b: 0-5      # AI 企业应用（垂直 SaaS、workflow）
  ai_application_consumer: 0-5 # AI 消费应用（创作、社交、娱乐）
  ai_agent: 0-5                # AI Agent、自动化
  robotics: 0-5                # 机器人、具身智能
  
  # 软件
  enterprise_saas: 0-5         # 企业 SaaS（横向）
  vertical_saas: 0-5           # 垂直行业 SaaS
  developer_tools: 0-5         # 开发者工具、DevOps、开源
  cybersecurity: 0-5           # 网络安全
  data_infrastructure: 0-5     # 数据基础设施、数据库
  cloud_infrastructure: 0-5    # 云基础设施
  
  # 消费
  consumer_social: 0-5         # 社交网络、社区
  consumer_marketplace: 0-5    # 双边市场、平台
  consumer_brand: 0-5          # DTC 品牌、消费品
  creator_economy: 0-5         # 创作者经济
  gaming: 0-5                  # 游戏、互动娱乐
  edtech: 0-5                  # 教育科技
  media_content: 0-5           # 媒体、内容
  
  # 金融
  fintech: 0-5                 # 金融科技
  crypto_web3: 0-5             # 加密货币、Web3、DeFi
  insurtech: 0-5               # 保险科技
  
  # 前沿/硬科技
  deep_tech: 0-5               # 前沿技术（量子、新材料等）
  biotech_health: 0-5          # 生物技术、数字健康
  climate_energy: 0-5          # 气候科技、能源
  space_aerospace: 0-5         # 航天、航空
  defense_govtech: 0-5         # 国防、政府科技
  
  # 行业应用
  legal_tech: 0-5              # 法律科技
  construction_proptech: 0-5   # 建筑、房地产科技
  logistics_supply_chain: 0-5  # 物流、供应链
  food_agriculture: 0-5        # 食品、农业科技
  manufacturing: 0-5           # 制造业
```

## 三、投资风格标签 (Investment Style Tags)

从以下标签中选择 3-5 个最准确的：

```yaml
style_primary:    # 选 1 个最核心的
  - contrarian           # 逆向投资，押注非共识
  - thesis_driven        # 强主题驱动，先有论文后找项目
  - pattern_matching     # 模式识别，基于历史 pattern
  - data_driven          # 数据驱动决策
  - founder_first        # 人大于事，创始人质量决定一切
  - operator_lens        # 用运营者视角评估
  - platform_thinking    # 平台/网络效应思维
  - technical_depth      # 技术深度评估能力

style_secondary:  # 选 2-4 个补充标签
  - monopoly_seeker      # 追求垄断结构
  - blitzscaling         # 闪电扩张策略
  - capital_efficient    # 资本效率至上
  - community_builder    # 社区/生态构建
  - cross_border         # 跨境投资（中美/全球）
  - deep_research        # 深度研究型
  - speed_decisive       # 极快决策
  - patient_capital      # 长期耐心资本
  - hands_on             # 深度投后参与
  - media_influence      # 通过媒体/内容建立影响力
  - ecosystem_play       # 生态系统投资
  - moonshot             # 登月级别的大胆押注
```

## 四、创始人偏好 (Founder Preference)

```yaml
founder_preference:
  # 背景偏好（选所有适用的，标注权重 1-3）
  technical_phd: 1-3          # 技术博士背景
  serial_entrepreneur: 1-3    # 连续创业者
  big_tech_alumni: 1-3        # 大厂出身（FAANG/BAT）
  domain_expert: 1-3          # 行业领域专家
  first_time_founder: 1-3     # 首次创业者（有些投资人偏好）
  immigrant_outsider: 1-3     # 移民/非典型背景
  young_ambitious: 1-3        # 年轻但野心极大
  
  # 性格偏好
  visionary: 1-3              # 愿景型
  execution_machine: 1-3      # 执行力型
  missionary: 1-3             # 使命驱动
  mercenary: 1-3              # 商业嗅觉驱动
  wartime_ceo: 1-3            # 逆境中的战时CEO
  builder_hacker: 1-3         # 动手型/黑客精神
  
  # 地域偏好
  silicon_valley: 1-3
  china_chinese: 1-3          # 中国/华人创始人
  global_diverse: 1-3         # 全球多元背景
  europe: 1-3
```

## 五、决策维度权重 (Decision Dimension Weights)

对应 Llama 的"看人看事"框架，标注每位投资人在以下维度上的权重（总和=100）：

```yaml
decision_weights:
  # 看人维度（合计约 50）
  founder_vision: 0-20        # 创始人愿景和认知深度
  founder_execution: 0-20     # 执行力和运营能力
  founder_character: 0-15     # 人格特质、韧性
  team_quality: 0-15          # 团队搭建能力
  
  # 看事维度（合计约 50）
  market_size: 0-20           # 市场规模
  competitive_moat: 0-20      # 竞争壁垒/护城河
  timing: 0-15                # 时机判断
  business_model: 0-15        # 商业模式和单位经济
  technology: 0-15            # 技术深度和壁垒
```

## 六、用途标签 (Use Tags)

用于标记一个投资人画像适合在哪些评估场景中调用：

```yaml
use_tags:
  use_for_bull_case: true/false     # 适合做看多论证
  use_for_bear_case: true/false     # 适合做看空/挑战
  use_for_technical_dd: true/false  # 适合技术尽调视角
  use_for_market_sizing: true/false # 适合市场规模判断
  use_for_founder_eval: true/false  # 适合创始人评估
  use_for_gtm_strategy: true/false  # 适合 GTM 策略评估
```
