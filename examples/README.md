# Typst Presentation Template - Examples

This folder contains 10 example presentations demonstrating various use cases and component combinations.

## Examples Overview

### 1. Research Paper (`01-research-paper.typ`)
**Focus:** Academic research presentation with theorems, algorithms, and results
- Paper theorem and proof boxes
- Algorithm pseudocode
- Performance metrics
- Bar charts
- Insight boxes

**Use case:** Conference presentations, thesis defense, research seminars

### 2. Code-Heavy (`02-code-heavy.typ`)
**Focus:** Technical implementation details with extensive code examples
- Code listings with captions
- Side-by-side diffs
- Unified diffs
- Terminal output
- Status badges in tables

**Use case:** Technical talks, code reviews, implementation walkthroughs

### 3. Data Visualization (`03-data-visualization.typ`)
**Focus:** Metrics, charts, and visual data presentation
- Metric cards
- Progress bars
- Bar charts
- Data tables
- Image grids

**Use case:** Data analysis presentations, performance reports, dashboards

### 4. Theorem & Proof (`04-theorem-proof.typ`)
**Focus:** Mathematical content with formal definitions
- Theorems with names
- Formal proofs with Q.E.D. symbols
- Definitions
- Corollaries
- Examples

**Use case:** Mathematics lectures, theoretical computer science, algorithm analysis

### 5. Comparison Study (`05-comparison-study.typ`)
**Focus:** Comparing approaches, methods, or systems
- Feature comparisons
- Pros and cons tables
- Quantitative comparisons
- Visual comparisons with charts

**Use case:** Evaluation studies, competitive analysis, method comparisons

### 6. Algorithm Focus (`06-algorithm-focus.typ`)
**Focus:** Detailed algorithm presentation with implementation
- Multiple algorithm boxes
- Subroutines
- Parameter tables
- Complexity analysis
- Implementation details

**Use case:** Algorithm courses, technical interviews, design discussions

### 7. Progress Report (`07-progress-report.typ`)
**Focus:** Project status and milestone tracking
- Progress bars for phases
- Timeline items
- Deliverable tables with status badges
- Risk assessment
- Metric cards

**Use case:** Project updates, sprint reviews, stakeholder meetings

### 8. Image Gallery (`08-image-gallery.typ`)
**Focus:** Visual content with various image layouts
- Single large images
- 2x2 grids
- 3-column layouts
- Text with images
- Before/after comparisons

**Use case:** Design presentations, visual documentation, portfolio showcases

### 9. Minimal Clean (`09-minimal-clean.typ`)
**Focus:** Simple, focused presentation with minimal content
- Large centered text
- Key points only
- Simple metrics
- Single chart
- Clean takeaway

**Use case:** Executive summaries, pitch decks, quick updates

### 10. Comprehensive Demo (`10-comprehensive-demo.typ`)
**Focus:** Showcase of all available components
- All component types
- Various layouts
- Complete feature demonstration

**Use case:** Template reference, learning the components, testing

## How to Use

1. **Copy an example** that matches your use case
2. **Modify the content** to fit your needs
3. **Compile** using: `typst compile example-name.typ`
4. **Mix and match** components from different examples

## Compilation

To compile any example:

```bash
cd examples
typst compile 01-research-paper.typ
```

Or compile all examples:

```bash
for file in *.typ; do typst compile "$file"; done
```

## Component Reference

All examples use components from `../lib/lib.typ`:

- **Layout:** `two-columns`, `three-columns`, `slide-split`, `slide-content`
- **Code:** `paper-code`, `github-latex-diff`, `unified-diff`, `terminal-output`
- **Math:** `paper-theorem`, `paper-proof`, `paper-algorithm`
- **Visual:** `paper-metric`, `paper-progress`, `paper-badge`, `academic-bar-chart`
- **Tables:** `paper-table`, `paper-feature-comparison`, `paper-pros-cons`
- **Images:** `paper-figure`
- **Other:** `paper-insight`, `timeline-item`

## Tips

- Use `slide-content` wrapper to prevent overflow
- Set `max-height` on images in grids (e.g., `max-height: 30%`)
- Keep slides focused - one main idea per slide
- Use `paper-insight` for key takeaways
- Combine `slide-split` with images for text+visual layouts

## Customization

Each example can be customized by:
- Changing colors in the theme
- Adjusting spacing and sizing
- Adding or removing components
- Modifying layouts

See the main `example.typ` for a complete component showcase.
