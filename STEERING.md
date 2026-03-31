# Typst Academic Presentation Template - Agent Steering Guide

## Overview

This steering file guides AI agents in helping users create professional academic presentations using the Typst Academic Presentation Template. This template provides 40+ LaTeX-inspired components for creating research papers, technical talks, and data-driven presentations.

## Critical Resources

### Primary Reference: map.json
**ALWAYS consult `map.json` when:**
- User asks about available components
- You're unsure which component to use
- You need parameter information
- You want to see usage examples
- You need to verify component names

**Location:** `docs/report/typst/template/map.json`

The map.json file contains:
- Complete list of all 40 components
- Component parameters and types
- Usage examples for each component
- File locations (which lib file contains what)
- 10 example presentations with descriptions

### Example Files
**Location:** `docs/report/typst/template/examples/`

10 complete example presentations demonstrating different use cases:
1. `01-research-paper.typ` - Academic research with theorems
2. `02-code-heavy.typ` - Technical implementation
3. `03-data-visualization.typ` - Metrics and charts
4. `04-theorem-proof.typ` - Mathematical content
5. `05-comparison-study.typ` - Comparative analysis
6. `06-algorithm-focus.typ` - Algorithm presentation
7. `07-progress-report.typ` - Project tracking
8. `08-image-gallery.typ` - Visual content
9. `09-minimal-clean.typ` - Simple focused slides
10. `10-comprehensive-demo.typ` - All components showcase

## Agent Workflow

### Step 1: Understand User Needs
Ask clarifying questions:
- What type of presentation? (research, technical, progress report, etc.)
- What content will be included? (code, math, data, images)
- Target audience? (academic, technical, executive)
- Approximate number of slides?

### Step 2: Choose Starting Point
Based on user needs, recommend an example file:
- **Research/Academic:** Start with `01-research-paper.typ`
- **Code/Implementation:** Start with `02-code-heavy.typ`
- **Data/Metrics:** Start with `03-data-visualization.typ`
- **Math/Theory:** Start with `04-theorem-proof.typ`
- **Comparison:** Start with `05-comparison-study.typ`
- **Algorithm:** Start with `06-algorithm-focus.typ`
- **Status Update:** Start with `07-progress-report.typ`
- **Visual/Design:** Start with `08-image-gallery.typ`
- **Simple/Quick:** Start with `09-minimal-clean.typ`

### Step 3: Reference map.json
**Before suggesting any component:**
1. Read `map.json` to verify component exists
2. Check correct parameter names
3. Copy exact usage example
4. Verify which lib file contains it

### Step 4: Build Presentation
Follow this structure:

```typst
#import "@preview/touying:0.5.5": *
#import "@preview/clean-math-presentation:0.1.1": *
#import "lib/lib.typ": *

#show: clean-math-presentation-theme.with(
  config-info(
    title: [Presentation Title],
    short-title: [Short],
    authors: ((name: "Author Name", affiliation-id: 1),),
    author: "Author Name",
    affiliations: ((id: 1, name: "Institution"),),
    date: datetime.today(),
  ),
  config-common(slide-level: 2),
  progress-bar: true,
)

#title-slide()

= Section Name

#slide(title: "Slide Title")[
  #slide-content[
    Content here
  ]
]
```

## Component Selection Guide

### For Layout
- **Two columns:** `#two-columns([Left], [Right])`
- **Three columns:** `#three-columns([A], [B], [C])`
- **Text + Image:** `#slide-split([Text], [Image])`
- **Prevent overflow:** Wrap in `#slide-content[...]`

### For Code
- **Code listing:** `#paper-code(caption: [Title])[```python\ncode\n```]`
- **Diff comparison:** `#unified-diff(file: "name", diff-block: ```diff\n...\n```)`
- **Side-by-side diff:** `#github-latex-diff(...)`
- **Terminal output:** `#terminal-output(title: "cmd")[```text\n...\n```]`

### For Math/Theory
- **Theorem:** `#paper-theorem(title: "Theorem 1", name: "Name")[Content]`
- **Proof:** `#paper-proof[Proof steps with automatic Q.E.D.]`
- **Algorithm (≤ 10 steps):** `#paper-algorithm(name: "Name", inputs: [...], outputs: [...], steps: ([Step 1], [Step 2]))`
- **Algorithm (11–20 steps):** same as above with 11–20 items in `steps:` — auto 2-column, 0.88 em font
- **Algorithm (> 20 steps):** same as above with > 20 items in `steps:` — auto 3-column, 0.80 em font
- **Algorithm legacy (no auto-column):** trailing `[body]` still works; add `count: N` to trigger multi-column
- **Definition:** `#definition(title: "Name")[Definition]`

### For Data/Metrics
- **Metric card:** `#paper-metric(title: "Title", value: "123", subtext: "Context")`
- **Progress bar:** `#paper-progress(percentage: 75, label: "Label")`
- **Bar chart:** `#academic-bar-chart(data: (("A", 10), ("B", 20)), max-value: 30, chart-height: 120pt, bar-width: 40pt)`
- **Table:** `#paper-table(columns: (1fr, 1fr), headers: ("A", "B"), [1], [2], [3], [4])`

### For Comparisons
- **Feature comparison:** `#paper-feature-comparison("Feature", [Old], [New])`
- **Pros/Cons:** `#paper-pros-cons([Pros], [Cons])`

### For Images
- **With caption:** `#paper-figure(image("path.svg", fit: "contain"), caption: [Text])`
- **In grid (prevent overflow):** Add `max-height: 30%` parameter
- **Always use:** `fit: "contain"` for proper scaling

### For Emphasis
- **Key insight:** `#paper-insight[Important takeaway]`
- **Callout:** `#callout(type: "info", title: "Note")[Content]`
- **Status badge:** `#paper-badge("Status", type: "success")`

## Critical Rules

### 1. Always Wrap Content
```typst
#slide(title: "Title")[
  #slide-content[
    // All content here
  ]
]
```

### 2. Image Sizing
- For grids: Use `max-height: 30%` or `max-height: 25%`
- Always use: `fit: "contain"`
- Wrap in `paper-figure` for captions

### 3. Code Blocks
- Use triple backticks with language: ` ```python\ncode\n``` `
- Pass as raw blocks to components
- Keep code concise (8-10 lines max per slide)

### 4. Math
- Inline: `$x + y$`
- Display: `$ x + y $` (with spaces)
- In theorems: Content is auto-italicized

### 5. Compilation
- From template root: `typst compile presentation.typ`
- From examples folder: `typst compile --root .. example.typ`

## Common Patterns

### Pattern 1: Text + Image Side-by-Side
```typst
#slide(title: "Architecture")[
  #slide-content[
    #slide-split(
      [
        Text description here.
        
        Key points:
        - Point 1
        - Point 2
      ],
      [
        #paper-figure(
          image("images/diagram.svg", fit: "contain"),
          caption: [System diagram]
        )
      ]
    )
  ]
]
```

### Pattern 2: Metrics Dashboard
```typst
#slide(title: "Performance")[
  #slide-content[
    #grid(
      columns: (1fr, 1fr, 1fr),
      gutter: 16pt,
      paper-metric(title: "Speed", value: "1.2s", subtext: "Improved"),
      paper-metric(title: "Accuracy", value: "95%", subtext: "Target met"),
      paper-metric(title: "Coverage", value: "93%", subtext: "Test suite")
    )
  ]
]
```

### Pattern 3: Algorithm with Explanation

Short algorithm (≤ 10 steps) — single column:
```typst
#slide(title: "Method")[
  #slide-content[
    #paper-algorithm(
      name: "Process Data",
      inputs: [Dataset $D$],
      outputs: [Results $R$],
      steps: (
        [Load data from $D$],
        [Apply transformation],
        [*for each* item *do*:
          + Process item],
        [*return* $R$],
      )
    )

    #v(1em)

    #paper-insight[
      This approach reduces complexity from $O(n^2)$ to $O(n log n)$.
    ]
  ]
]
```

Long algorithm (> 10 steps) — auto multi-column:
```typst
#slide(title: "Full Pipeline")[
  #slide-content[
    #paper-algorithm(
      name: "Extended Pipeline",
      inputs: [Input $X$],
      outputs: [Output $Y$],
      steps: (
        [Stage 1 — Preprocessing],
        [Stage 2 — Feature extraction],
        // ... 15 total steps → auto 2-column, 0.88 em font
      )
    )
  ]
]
```

### Pattern 4: Code with Results
```typst
#slide(title: "Implementation")[
  #slide-content[
    #paper-code(caption: [Main function])[
      ```python
      def process(data):
          result = transform(data)
          return result
      ```
    ]
    
    #v(1em)
    
    #paper-table(
      columns: (1fr, 1fr),
      headers: ("Input", "Output"),
      [100 items], [0.5s],
      [1000 items], [1.2s]
    )
  ]
]
```

### Pattern 5: Image Grid
```typst
#slide(title: "Results")[
  #slide-content[
    #grid(
      columns: 2,
      gutter: 0.8em,
      row-gutter: 0.5em,
      paper-figure(
        image("images/a.svg", fit: "contain"),
        caption: [Result A],
        max-height: 30%
      ),
      paper-figure(
        image("images/b.svg", fit: "contain"),
        caption: [Result B],
        max-height: 30%
      )
    )
  ]
]
```

## Troubleshooting

### Content Overflows Slide
**Solution:** Wrap in `#slide-content[...]` and reduce content or font sizes

### Images Too Large in Grid
**Solution:** Add `max-height: 30%` to `paper-figure`

### Code Block Not Rendering
**Solution:** Ensure triple backticks with language: ` ```python\n...\n``` `

### Component Not Found
**Solution:** Check `map.json` for correct name and verify import: `#import "lib/lib.typ": *`

### Compilation Error from Examples
**Solution:** Use `typst compile --root .. example.typ` from examples folder

### Math Symbols `$...$` Not Rendering in `inputs` / `outputs`
**Cause:** Strings `"..."` are plain text — `$G$` stays literal. Content blocks parse math.
**Solution:** Use `[...]` instead of `"..."`:
```typst
// Wrong — math not parsed
inputs: "Knowledge Graph $G$, radius $epsilon$"

// Correct — math rendered
inputs: [Knowledge Graph $G$, radius $epsilon$]
```

### Algorithm Shows Raw Source Code Instead of Rendering
**Cause:** This was a bug in `theorem-boxes.typ` where the block body used markup mode `[...]` instead of code mode `{...}`, causing function calls like `text(...)`, `v()`, `if` to render as literal text.
**Status:** Fixed. If you see this symptom, verify you are using the latest `theorem-boxes.typ`.

## Best Practices

1. **One idea per slide** - Keep slides focused
2. **Use slide-content** - Prevents overflow
3. **Consistent sizing** - Use same max-height for grid images
4. **Meaningful captions** - Always caption figures and tables
5. **Key takeaways** - Use `paper-insight` for important points
6. **Visual hierarchy** - Use sections (=) to organize
7. **Test compilation** - Compile frequently to catch errors early
8. **Reference examples** - Copy patterns from example files
9. **Check map.json** - Verify component usage before suggesting
10. **Keep it simple** - Academic style is minimal and clean

## Agent Checklist

Before providing code to user:
- [ ] Consulted map.json for component details
- [ ] Verified all component names are correct
- [ ] Included proper imports at top
- [ ] Wrapped content in slide-content
- [ ] Used correct parameter names
- [ ] Added fit: "contain" to images
- [ ] Included max-height for grid images
- [ ] Used proper code block syntax
- [ ] Used `steps: (...)` array (not trailing `[body]`) for all `paper-algorithm` calls
- [ ] Used `[...]` content blocks (not `"..."` strings) for `inputs`/`outputs` when math is present
- [ ] Tested example compiles (mentally verify syntax)
- [ ] Provided clear explanation of what each part does

## Quick Reference

**Import:** `#import "lib/lib.typ": *`
**Slide:** `#slide(title: "...")[#slide-content[...]]`
**Section:** `= Section Name`
**Image:** `#paper-figure(image("path", fit: "contain"), caption: [...])`
**Code:** `#paper-code(caption: [...])[```lang\n...\n```]`
**Math:** `#paper-theorem(title: "...", name: "...")[...]`
**Data:** `#paper-metric(title: "...", value: "...", subtext: "...")`
**Insight:** `#paper-insight[...]`

## Remember

**ALWAYS READ map.json FIRST** when unsure about:
- Component names
- Parameters
- Usage examples
- Which lib file contains what

This ensures accurate, working code for users.
