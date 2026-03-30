#import "@preview/touying:0.5.5": *
#import "@preview/clean-math-presentation:0.1.1": *
#import "../lib/lib.typ": *

#show: clean-math-presentation-theme.with(
  config-info(
    title: [Data Visualization: \ Performance Analysis],
    short-title: [Data Viz],
    authors: ((name: "Analytics Team", affiliation-id: 1),),
    author: "Analytics Team",
    affiliations: ((id: 1, name: "Data Science Lab"),),
    date: datetime.today(),
  ),
  config-common(slide-level: 2),
  progress-bar: true,
)

#title-slide()

= Metrics

#slide(title: "System Performance Overview")[
  #slide-content[
    #grid(
      columns: (1fr, 1fr, 1fr),
      gutter: 16pt,
      paper-metric(
        title: "Throughput",
        value: "1.2K/s",
        subtext: "Requests per second"
      ),
      paper-metric(
        title: "Latency",
        value: "45ms",
        subtext: "P95 response time"
      ),
      paper-metric(
        title: "Uptime",
        value: "99.9%",
        subtext: "Last 30 days"
      )
    )
    
    #v(2em)
    
    All metrics measured in production environment over the past month.
  ]
]

#slide(title: "Progress Tracking")[
  #slide-content[
    #paper-progress(percentage: 100, label: "Phase 1: Data Collection")
    #v(0.8em)
    #paper-progress(percentage: 85, label: "Phase 2: Model Training")
    #v(0.8em)
    #paper-progress(percentage: 60, label: "Phase 3: Validation")
    #v(0.8em)
    #paper-progress(percentage: 20, label: "Phase 4: Deployment")
  ]
]

= Charts

#slide(title: "Performance Comparison")[
  #slide-content[
    #figure(
      caption: [Processing time across different methods],
      academic-bar-chart(
        data: (
          ("Baseline", 450),
          ("Optimized", 180),
          ("Parallel", 65),
          ("GPU", 12)
        ),
        max-value: 500,
        chart-height: 150pt,
        bar-width: 50pt
      )
    )
  ]
]

#slide(title: "Detailed Metrics Table")[
  #slide-content[
    #figure(
      caption: [Comprehensive performance breakdown],
      paper-table(
        columns: (1.5fr, 1fr, 1fr, 1fr),
        headers: ("Method", "Time (ms)", "Memory (MB)", "Accuracy"),
        
        [Baseline], [450], [2048], [85%],
        [Optimized], [180], [1024], [87%],
        [Parallel], [65], [512], [89%],
        [GPU Accelerated], [12], [256], [91%]
      )
    )
  ]
]

= Images

#slide(title: "Visual Analysis")[
  #slide-content[
    #grid(
      columns: 2,
      gutter: 1em,
      row-gutter: 0.5em,
      paper-figure(
        image("../images/graph_placeholder.svg", fit: "contain"),
        caption: [Time series data],
        max-height: 30%
      ),
      paper-figure(
        image("../images/diagram_placeholder.svg", fit: "contain"),
        caption: [System topology],
        max-height: 30%
      )
    )
  ]
]
