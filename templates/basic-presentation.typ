#import "@preview/touying:0.5.5": *
#import "@preview/clean-math-presentation:0.1.1": *

// Import template components
#import "../lib/components.typ": *
#import "../lib/code-blocks.typ": *
#import "../lib/theorem-boxes.typ": *
#import "../lib/charts.typ": *

// Configure presentation theme
#show: clean-math-presentation-theme.with(
  config-info(
    title: [Your Presentation Title],
    short-title: [Short Title],
    authors: (
      (name: "Your Name", affiliation-id: 1),
    ),
    author: "Your Name",
    affiliations: (
      (id: 1, name: "Your Institution"),
    ),
    date: datetime.today(),
  ),
  config-common(
    slide-level: 2,
  ),
  progress-bar: true,
)

// Title slide
#title-slide(
  logo1: image("../images/logo_placeholder.svg", height: 4.5em),
)

// ============================================================================
// INTRODUCTION
// ============================================================================

= Introduction

#slide(title: "Overview")[
  *Research Question:*
  
  [Replace with your research question]
  
  #v(1em)
  
  *Key Contributions:*
  - Contribution 1
  - Contribution 2
  - Contribution 3
]

#slide(title: "Motivation")[
  [Replace with your motivation content]
  
  #v(1em)
  
  #callout(title: "Key Insight")[
    [Replace with key insight]
  ]
]

// ============================================================================
// METHODOLOGY
// ============================================================================

= Methodology

#slide(title: "Approach")[
  #two-columns(
    [
      *Left Column:*
      - Point 1
      - Point 2
      - Point 3
    ],
    [
      *Right Column:*
      - Point A
      - Point B
      - Point C
    ]
  )
]

#slide(title: "System Architecture")[
  #captioned-image(
    "../images/logo_placeholder.svg",
    "System architecture diagram",
    width: 70%
  )
]

#slide(title: "Algorithm")[
  #code-listing(
    ```python
    def process_data(input):
        # Your algorithm here
        result = transform(input)
        return result
    ```,
    caption: "Main processing algorithm"
  )
]

// ============================================================================
// RESULTS
// ============================================================================

= Results

#slide(title: "Key Metrics")[
  #metrics-dashboard(
    metric-card("95%", "Accuracy", color: green),
    metric-card("0.8s", "Latency", color: blue),
    metric-card("1000+", "Samples", color: purple),
  )
]

#slide(title: "Performance Comparison")[
  #figure(
    caption: [Performance comparison],
    paper-table(
      columns: (1fr, 1fr, 1fr),
      headers: ("Method", "Accuracy", "Speed"),
      
      [Baseline], [85%], [Slow],
      [Ours], [95%], [Fast],
    )
  )
]

// ============================================================================
// CONCLUSION
// ============================================================================

= Conclusion

#slide(title: "Summary")[
  *Key Findings:*
  + Finding 1
  + Finding 2
  + Finding 3
  
  #v(1em)
  
  *Future Work:*
  - Direction 1
  - Direction 2
]

#slide(title: "Thank You")[
  #align(center + horizon)[
    #text(size: 24pt, weight: "bold")[Thank You!]
    
    #v(2em)
    
    *Questions?*
    
    #v(1em)
    
    your.email\@institution.edu
  ]
]

// ============================================================================
// APPENDIX
// ============================================================================

#show: appendix

= Appendix

#slide(title: "References")[
  + Reference 1
  + Reference 2
  + Reference 3
]

#slide(title: "Additional Information")[
  [Replace with additional content]
]
