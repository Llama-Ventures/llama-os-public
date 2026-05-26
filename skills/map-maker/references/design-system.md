# Hockney × Ukiyo-e Design System Reference

## Visual Language

The fusion combines:
- **Hockney**: Bold flat colors, swimming pool blues, California light, graphic simplicity
- **Ukiyo-e (浮世绘)**: Woodblock print outlines, yokogumo cloud bands, layered depth, decorative patterns

## Color Assignments by Theme

| Panel Theme | Background Gradient | Accent Colors |
|---|---|---|
| Night/Origin | #1a1040 → #2d3a8c → #0984e3 | cream, gold |
| Ocean/Journey | #0984e3 → #74b9ff | white, coral |
| Fire/Conflict | #d63031 → #e17055 | gold, cream |
| Growth/Nature | #00b894 → #00cec9 | cream, gold |
| Gold/Prosperity | #fdcb6e → #f9ca24 | vermillion, dark |
| Dusk/Transition | #fd79a8 → #e17055 | cream, teal |
| Cream/Reflection | #ffeaa7 → #fdf6e3 | dark, vermillion |

## SVG Illustration Vocabulary

Common reusable SVG elements across panels:

### Yokogumo Clouds (横雲)
```xml
<g opacity="0.2">
  <rect x="0" y="50" width="300" height="6" rx="3" fill="#fff"/>
  <rect x="350" y="45" width="200" height="5" rx="2.5" fill="#fff"/>
  <rect x="600" y="55" width="250" height="4" rx="2" fill="#fff"/>
</g>
```

### Wave Foam (波の華)
```xml
<g fill="#dfe6e9" stroke="#1a1040" stroke-width="1.5">
  <path d="M470,170 Q465,155 455,148 Q448,144 452,152 Q458,162 465,168"/>
</g>
```

### Moon/Circle Motif
```xml
<radialGradient id="moon-glow" cx="50%" cy="50%" r="50%">
  <stop offset="0%" stop-color="#ffeaa7" stop-opacity="0.9"/>
  <stop offset="100%" stop-color="#1a1040" stop-opacity="0"/>
</radialGradient>
<circle cx="500" cy="200" r="150" fill="url(#moon-glow)"/>
<circle cx="500" cy="200" r="120" class="ukiyo-outline" stroke-width="2"/>
```

### Mountain Silhouette
```xml
<path d="M0,400 Q150,250 300,350 Q450,200 600,300 Q750,180 900,280 L1000,400 L1000,600 L0,600Z" 
      fill="#2d3436" opacity="0.3"/>
```

### Architecture (Torii/Gate/Building)
```xml
<g stroke="#1a1040" stroke-width="2.5" fill="var(--vermillion)">
  <rect x="380" y="300" width="240" height="180" rx="4"/>
  <path d="M370,300 L500,220 L630,300" fill="var(--gold)"/>
</g>
```

## Text Label Positioning

Labels are absolutely positioned divs over SVG backgrounds:

```css
/* Position labels using percentage-based positioning */
.label {
  position: absolute;
  /* Use top/left percentages for responsive placement */
}

/* Label size hierarchy */
.label-title  { font-size: 30px; }  /* Panel title */
.label-major  { font-size: 22px; }  /* Section headers */
.label-body   { font-size: 18px; }  /* Body text */
.label-detail { font-size: 16px; }  /* Fine details */
.label-en     { font-size: 14px; }  /* English annotations */
```

## Vertical (Mobile) Theme Classes

```css
.theme-dark       { background: #1a1040; }
.theme-vermillion { background: linear-gradient(170deg, #2d0a0a 0%, #1a1040 100%); }
.theme-blue       { background: linear-gradient(170deg, #0a1a2d 0%, #1a1040 100%); }
.theme-green      { background: linear-gradient(170deg, #0a2d1a 0%, #1a1040 100%); }
.theme-orange     { background: linear-gradient(170deg, #2d1a0a 0%, #1a1040 100%); }
.theme-cream      { background: #fdf6e3; color: #1a1040; }
.theme-pink       { background: linear-gradient(170deg, #2d0a1a 0%, #1a1040 100%); }
.theme-teal       { background: linear-gradient(170deg, #0a2d2d 0%, #1a1040 100%); }
.theme-gold       { background: linear-gradient(170deg, #2d2a0a 0%, #1a1040 100%); }
```

## Music Emotional Mapping

Match music keys to narrative mood:

| Narrative Phase | Key | Frequencies (Hz) | Waveform | Tempo | Feel |
|---|---|---|---|---|---|
| Origin/Struggle | Am | 110, 131, 165, 220 | sine | 0.3 | Melancholic |
| Transition | C | 131, 165, 196, 262 | sine | 0.35 | Hopeful |
| Growth | D | 147, 185, 220, 294 | triangle | 0.45 | Rising |
| Intensity | E | 165, 196, 247, 330 | triangle | 0.5 | Driven |
| Climax | F# | 185, 220, 277, 370 | triangle | 0.55 | Soaring |
| Resolution | G | 196, 247, 294, 392 | sine | 0.4 | Peaceful triumph |
