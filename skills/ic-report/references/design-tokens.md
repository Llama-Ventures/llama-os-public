# IC Report — Design Tokens

完整的 CSS 变量、字体、组件规范。生成 HTML 时直接引用。

## 色板

```css
:root {
  /* 底色 */
  --bg: #faf9f7;          /* 页面背景，米白 */
  --white: #ffffff;        /* 卡片背景 */
  --warm: #f5f3f0;         /* 本质框/引用背景，暖灰 */

  /* 边框 */
  --border: #e5e1db;       /* 主边框 */
  --border-l: #ece9e3;     /* 轻边框（表格行） */

  /* 文字 */
  --text: #1a1a1a;         /* 标题 */
  --body: #3d3d3d;         /* 正文 */
  --sec: #6b6560;          /* 次要文字 */
  --mute: #9b9590;         /* 辅助/标签 */

  /* 强调 */
  --accent: #c05d3a;       /* 主强调色，暖橙。用于本质框、标签、编号 */

  /* 信号灯 */
  --green: #3a7d44;        /* 绿灯 */
  --green-bg: #eef6ef;     /* 绿灯背景 */
  --yellow: #b8860b;       /* 黄灯 */
  --yellow-bg: #fdf6e3;    /* 黄灯背景 */
  --red: #b33a3a;          /* 红灯 */
  --red-bg: #fdf0f0;       /* 红灯背景 */
}
```

## 字体

```css
/* 标题：衬线体 */
font-family: 'Noto Serif SC', serif;

/* 正文：无衬线 */
font-family: 'Noto Sans SC', -apple-system, sans-serif;

/* Google Fonts 引入 */
@import url('https://fonts.googleapis.com/css2?family=Noto+Serif+SC:wght@300;400;500;600;700&family=Noto+Sans+SC:wght@300;400;500;600&display=swap');
```

## 字号层级

| 元素 | 字体 | 大小 | 重量 | 行高 |
|------|------|------|------|------|
| 封面标题 | Serif | 48px | 700 | 1.2 |
| 大标题 h2 | Serif | 26px | 600 | 1.5 |
| 小标题 h3 | Serif | 18px | 500 | 1.4 |
| 问题编号 | Serif | 56px | 700 | 1 |
| 正文 | Sans | 15px | 400 | 2.0 |
| 本质框 | Serif | 16px | 500 | 2.0 |
| 列表 | Sans | 14px | 400 | 1.9 |
| 卡片正文 | Sans | 13-14px | 400 | 1.7 |
| 标签 | Sans | 10-11px | 500-600 | 1 |
| 图片说明 | Sans | 11px | 400 | 1.4 |

## 核心组件

### 本质框（大号）
```css
.essence-lg {
  background: var(--warm);
  border-left: 4px solid var(--accent);
  padding: 1.5rem 2rem;
  margin: 2rem 0;
  border-radius: 0 8px 8px 0;
}
.essence-lg .essence-label {
  font-size: 11px;
  font-weight: 600;
  letter-spacing: 0.25em;
  color: var(--accent);
  margin-bottom: 0.75rem;
}
.essence-lg p {
  font-family: 'Noto Serif SC', serif;
  font-size: 16px;
  font-weight: 500;
  color: var(--text);
  line-height: 2;
  margin: 0;
}
```

### 问题卡片（qa-slide）
```css
.qa-slide {
  padding: 4rem 0;
  border-top: 1px solid var(--border);
}
.qa-header {
  display: flex;
  align-items: flex-start;
  gap: 1.25rem;
  margin-bottom: 1.5rem;
}
.qa-num {
  font-family: 'Noto Serif SC', serif;
  font-size: 56px;
  font-weight: 700;
  line-height: 1;
  color: var(--border);       /* 默认浅色 */
  min-width: 60px;
}
.qa-num.accent { color: rgba(192,93,58,0.2); }  /* 看事：橙色系 */
.qa-num.green { color: rgba(58,125,68,0.2); }   /* 看人：绿色系 */
.qa-title {
  font-family: 'Noto Serif SC', serif;
  font-size: 22px;
  font-weight: 600;
  margin-top: 0.75rem;
}
.qa-subtitle {
  font-size: 13px;
  color: var(--sec);
  margin-top: 0.25rem;
}
```

### 卡片
```css
.card {
  background: var(--white);
  border: 1px solid var(--border);
  border-radius: 6px;
  padding: 1.5rem 1.75rem;
  margin: 1rem 0;
}
.card-t {
  font-size: 14px;
  font-weight: 600;
  margin-bottom: 0.75rem;
}
```

### 竞品卡片
```css
/* 用 border-top 区分颜色 */
.card { border-top: 3px solid #颜色; }

/* 推荐配色 */
直接竞品:   #e74c3c (红)
新锐挑战者: #e67e22 (橙)
大厂入场:   #3498db (蓝)
先驱/衰退:  #9b59b6 (紫)
替代方案:   #1abc9c (青)
标杆对标:   #f39c12 (金)
```

### 双栏 / 三栏
```css
.two { display: grid; grid-template-columns: 1fr 1fr; gap: 1rem; }
.tri { display: grid; grid-template-columns: 1fr 1fr 1fr; gap: 1rem; }
/* 移动端自动变单栏 */
@media (max-width: 600px) { .two, .tri { grid-template-columns: 1fr; } }
```

### 图片
```css
.img-full {
  width: 100%;
  border-radius: 8px;
  border: 1px solid var(--border);
  margin: 1.5rem 0;
  box-shadow: 0 2px 8px rgba(0,0,0,0.06);
}
.img-half {
  width: 100%;
  border-radius: 6px;
  border: 1px solid var(--border);
  box-shadow: 0 1px 4px rgba(0,0,0,0.04);
}
.img-cap {
  font-size: 11px;
  color: var(--mute);
  text-align: center;
  margin-top: 0.5rem;
}
```

### 标签
```css
.tag { display: inline-block; font-size: 10px; font-weight: 500; padding: 2px 8px; border-radius: 3px; }
.tag-ok   { background: var(--green-bg); color: var(--green); }   /* ✅ 已验证 */
.tag-warn { background: var(--yellow-bg); color: var(--yellow); } /* ⚠️ 待验证 */
.tag-gap  { background: var(--red-bg); color: var(--red); }       /* 🔲 信息缺口 */
```

### 时间线
```css
.tl { position: relative; padding-left: 1.5rem; }
.tl::before { content:''; position: absolute; left: 0; top: 4px; bottom: 4px; width: 1.5px; background: var(--border); }
.tl-i { position: relative; padding-bottom: 0.75rem; }
.tl-i::before { content:''; position: absolute; left: -1.55rem; top: 7px; width: 7px; height: 7px; border-radius: 50%; background: var(--border); }
.tl-i.now::before { background: var(--accent); box-shadow: 0 0 0 4px rgba(192,93,58,0.12); }
.tl-i.next::before { background: var(--yellow); }
```

### 信号灯
```css
.dot { display: inline-block; width: 10px; height: 10px; border-radius: 50%; margin-right: 6px; vertical-align: middle; }
.dot-g { background: var(--green); }
.dot-y { background: var(--yellow); }
.dot-r { background: var(--red); }
```

## 页面宽度

```css
.page { max-width: 760px; margin: 0 auto; padding: 0 2rem; }
```

760px 是刻意选择：够宽放双栏，不会太宽导致阅读疲劳，打印时也合适。
