#import "@preview/touying:0.5.5": *
#import "@preview/clean-math-presentation:0.1.1": *
#import "../lib/lib.typ": *

#show: clean-math-presentation-theme.with(
  config-info(
    title: [Comparison Study: \ Baseline vs. Proposed],
    short-title: [Comparison],
    authors: ((name: "Evaluation Team", affiliation-id: 1),),
    author: "Evaluation Team",
    affiliations: ((id: 1, name: "Research Institute"),),
    date: datetime.today(),
  ),
  config-common(slide-level: 2),
  progress-bar: true,
)

#title-slide()

= Feature Comparison

#slide(title: "Scenario Generation Approach")[
  #slide-content[
    #paper-feature-comparison(
      "Accident Scenario Instantiation",
      [
        - Manual encoding of parameters
        - Static JSON templates
        - Highly deterministic
        - Limited edge-case variance
      ],
      [
        - Automated generation via LLM
        - Dynamic Knowledge Graph traversal
        - Organic variance from real-world data
        - Scalable to thousands of scenarios
      ]
    )
  ]
]

#slide(title: "Data Processing Pipeline")[
  #slide-content[
    #paper-feature-comparison(
      "Data Processing Architecture",
      [
        - Sequential batch processing
        - Manual data validation
        - Limited scalability
        - High latency (45s per scenario)
      ],
      [
        - Parallel stream processing
        - Automated validation with ML
        - Horizontally scalable
        - Low latency (1.2s per scenario)
      ]
    )
  ]
]

= Pros and Cons

#slide(title: "Trade-off Analysis")[
  #slide-content[
    #paper-pros-cons(
      [
        - Scales infinitely with available graph nodes
        - High fidelity to real-world conditions
        - Eliminates human bottleneck
        - 10× improvement in edge-case discovery
      ],
      [
        - Requires rigorous LLM output validation
        - Hallucinated parameters can crash simulator
        - Initial computational overhead for clustering
        - Dependency on quality of source data
      ]
    )
  ]
]

= Quantitative Results

#slide(title: "Performance Metrics")[
  #slide-content[
    #figure(
      caption: [Comparison of key performance indicators],
      paper-table(
        columns: (1.5fr, 1fr, 1fr),
        headers: ("Metric", "Baseline", "Proposed"),
        
        [Scenarios/hour], [80], [3,000],
        [Edge cases found], [45], [465],
        [Manual effort (hrs)], [120], [2],
        [Coverage (%)], [45], [93]
      )
    )
  ]
]

#slide(title: "Visual Comparison")[
  #slide-content[
    #figure(
      caption: [Edge case discovery rate],
      academic-bar-chart(
        data: (
          ("Baseline", 45),
          ("Proposed", 465)
        ),
        max-value: 500,
        chart-height: 150pt,
        bar-width: 60pt
      )
    )
  ]
]
