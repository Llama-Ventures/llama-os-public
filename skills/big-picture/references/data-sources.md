# Big Picture — 数据来源指南

## 一级来源（公开市场，高可靠）

| 来源 | 用途 | 怎么查 |
|------|------|--------|
| [companiesmarketcap.com](https://companiesmarketcap.com/) | 上市公司市值排名、行业分类、历史趋势 | 按行业/国家/指标筛选，支持自定义列表 |
| Yahoo Finance | 个股市值、收入、财报摘要 | 搜公司 ticker，看 Summary / Financials |
| Google Finance | 快速查市值和股价 | `google finance [公司名]` |
| SEC EDGAR | 美股公司原始财报（10-K, 10-Q） | 搜公司名查 filings |

## App / 消费者产品数据

| 来源 | 用途 | 怎么查 |
|------|------|--------|
| [appark.ai](https://appark.ai/en) | App 下载量、排名、收入估算、品类对比 | 按品类/国家筛选，看头部 app 的规模和增长 |
| Sensor Tower | App 下载量、收入、用户留存 | 行业标准，部分数据免费 |
| data.ai (原 App Annie) | 全球 app 市场数据、品类排名 | 覆盖广，免费版可看 top charts |

涉及 consumer app / 移动端 startup 时，app 维度的数据跟市值一样重要——下载量、DAU、收入排名直接反映用户规模和变现能力。

## 二级来源（行业数据，需交叉验证）

| 来源 | 用途 | 注意 |
|------|------|------|
| Statista | 行业规模、用户数、市场预测 | 免费版有限，数据标注年份 |
| Grand View Research / Mordor Intelligence | 市场规模报告 | 免费摘要够用，注意方法论差异 |
| 美国 BLS (Bureau of Labor Statistics) | 就业人数、薪资、职业增长 | 美国官方数据，可靠但滞后 |
| World Bank Open Data | 全球宏观经济指标 | 国家/地区对比 |
| OECD Data | 发达国家经济数据 | 国际比较 |

## 三级来源（融资 / VC 数据，有选择偏差）

| 来源 | 用途 | 注意 |
|------|------|------|
| Crunchbase | 融资轮次、金额、投资人 | 早期公司覆盖好，但有报告延迟 |
| PitchBook | 更全的 VC/PE 数据 | 需要付费 |
| CB Insights | 独角兽列表、行业地图 | 免费版有限但 State of XX 报告有用 |
| 新闻 (TechCrunch, The Information) | 最新融资、并购 | 实时性好，但可能有 spin |

## 使用原则

1. **优先公开市场数据** — 市值是最诚实的数字，市场每天在给它定价
2. **行业报告交叉验证** — 不同报告对同一个市场的估算可能差 2-3x，取量级而非精确值
3. **融资数据看趋势** — 单笔融资不说明问题，但整个赛道的融资趋势说明资金在往哪流
4. **永远标注时间** — 市值是 snapshot，昨天的 $100B 今天可能是 $80B
5. **量级 > 精确** — $50B 和 $55B 的区别不重要，$50B 和 $500B 的区别才重要
