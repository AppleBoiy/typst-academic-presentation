#import "@preview/touying:0.5.5": *
#import "@preview/clean-math-presentation:0.1.1": *
#import "../lib/lib.typ": *

#show: clean-math-presentation-theme.with(
  config-info(
    title: [Minimal Clean Presentation: \ Less is More],
    short-title: [Minimal],
    authors: ((name: "Design Team", affiliation-id: 1),),
    author: "Design Team",
    affiliations: ((id: 1, name: "UX Research Lab"),),
    date: datetime.today(),
  ),
  config-common(slide-level: 2),
  progress-bar: true,
)

#title-slide()

= Core Concept

#slide(title: "One Big Idea")[
  #slide-content[
    #align(center + horizon)[
      #text(size: 32pt, font: "New Computer Modern")[
        Knowledge Graphs + LLMs = \
        Automated Test Generation
      ]
    ]
  ]
]

#slide(title: "Three Key Points")[
  #slide-content[
    #v(2em)
    
    #text(size: 18pt)[
      *1.* Extract accident data from reports
    ]
    
    #v(2em)
    
    #text(size: 18pt)[
      *2.* Cluster scenarios using density-based methods
    ]
    
    #v(2em)
    
    #text(size: 18pt)[
      *3.* Generate test cases automatically
    ]
  ]
]

= Results

#slide(title: "The Numbers")[
  #slide-content[
    #v(1em)
    
    #grid(
      columns: 1,
      row-gutter: 2em,
      paper-metric(
        title: "Speed Improvement",
        value: "37×",
        subtext: "Faster than manual approach"
      ),
      paper-metric(
        title: "Edge Cases Found",
        value: "465",
        subtext: "Out of 500 test scenarios"
      ),
      paper-metric(
        title: "Coverage",
        value: "93%",
        subtext: "Test suite coverage"
      )
    )
  ]
]

#slide(title: "Simple Comparison")[
  #slide-content[
    #figure(
      caption: [Manual vs. Automated approach],
      academic-bar-chart(
        data: (
          ("Manual", 45),
          ("Automated", 465)
        ),
        max-value: 500,
        chart-height: 160pt,
        bar-width: 80pt
      )
    )
  ]
]

= Takeaway

#slide(title: "Key Insight")[
  #slide-content[
    #v(3em)
    
    #paper-insight[
      By leveraging semantic relationships in accident data, we enable systematic exploration of edge cases that would be impossible to discover manually.
    ]
    
    #v(3em)
    
    #align(center)[
      #text(size: 14pt, style: "italic")[
        This is a 10× improvement in safety validation coverage.
      ]
    ]
  ]
]

#slide(title: "Thank You")[
  #slide-content[
    #align(center + horizon)[
      #text(size: 28pt, font: "New Computer Modern")[
        Questions?
      ]
      
      #v(2em)
      
      #text(size: 12pt)[
        Contact: research\@example.com
      ]
    ]
  ]
]
