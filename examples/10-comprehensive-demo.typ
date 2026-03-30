#import "@preview/touying:0.5.5": *
#import "@preview/clean-math-presentation:0.1.1": *
#import "../lib/lib.typ": *

#show: clean-math-presentation-theme.with(
  config-info(
    title: [Comprehensive Demo: \ All Components Showcase],
    short-title: [Demo],
    authors: ((name: "Template Team", affiliation-id: 1),),
    author: "Template Team",
    affiliations: ((id: 1, name: "Typst Community"),),
    date: datetime.today(),
  ),
  config-common(slide-level: 2),
  progress-bar: true,
)

#title-slide(
  logo1: image("../images/logo_placeholder.svg", height: 4.5em),
)

= Components Overview

#slide(title: "What's Included")[
  #slide-content[
    #three-columns(
      [
        *Layout:*
        - two-columns
        - three-columns
        - slide-split
        - paper-figure
      ],
      [
        *Content:*
        - paper-code
        - paper-table
        - paper-algorithm
        - paper-insight
      ],
      [
        *Visual:*
        - paper-metric
        - paper-progress
        - paper-badge
        - academic-bar-chart
      ]
    )
  ]
]

= Code Examples

#slide(title: "Code Listing")[
  #slide-content[
    #paper-code(
      caption: [Python implementation example]
    )[
      ```python
      def process_data(input_file):
          """Process accident data from file."""
          with open(input_file, 'r') as f:
              data = json.load(f)
          
          # Extract features
          features = extract_features(data)
          
          # Cluster scenarios
          clusters = dbscan_cluster(features)
          
          return clusters
      ```
    ]
  ]
]

#slide(title: "Diff Comparison")[
  #slide-content[
    #unified-diff(
      file: "config.py",
      diff-block: ```diff
      @@ -1,3 +1,3 @@
       DEBUG = True
      -MAX_WORKERS = 4
      +MAX_WORKERS = 8
       TIMEOUT = 30
      ```
    )
  ]
]

= Math & Theory

#slide(title: "Theorem and Proof")[
  #slide-content[
    #paper-theorem(
      title: "Theorem",
      name: "Complexity Bound"
    )[
      The algorithm runs in $O(n log n)$ time for $n$ input elements.
    ]
    
    #v(0.8em)
    
    #paper-proof[
      The sorting phase takes $O(n log n)$ time. The subsequent linear scan takes $O(n)$ time. Therefore, total complexity is $O(n log n + n) = O(n log n)$.
    ]
  ]
]

#slide(title: "Algorithm Pseudocode")[
  #slide-content[
    #paper-algorithm(
      name: "Quick Sort",
      inputs: "Array $A$, indices $p$, $r$",
      outputs: "Sorted array $A$"
    )[
      + *if* $p < r$ *then*:
        + $q <- "partition"(A, p, r)$
        + $"QuickSort"(A, p, q-1)$
        + $"QuickSort"(A, q+1, r)$
      + *return* $A$
    ]
  ]
]

= Data Visualization

#slide(title: "Metrics Dashboard")[
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
  ]
]

#slide(title: "Progress Tracking")[
  #slide-content[
    #paper-progress(percentage: 100, label: "Phase 1: Complete")
    #v(0.8em)
    #paper-progress(percentage: 75, label: "Phase 2: In Progress")
    #v(0.8em)
    #paper-progress(percentage: 30, label: "Phase 3: Started")
    #v(0.8em)
    #paper-progress(percentage: 0, label: "Phase 4: Pending")
  ]
]

#slide(title: "Bar Chart")[
  #slide-content[
    #figure(
      caption: [Performance comparison across methods],
      academic-bar-chart(
        data: (
          ("Method A", 120),
          ("Method B", 280),
          ("Method C", 450)
        ),
        max-value: 500,
        chart-height: 140pt,
        bar-width: 50pt
      )
    )
  ]
]

= Tables & Comparisons

#slide(title: "Data Table")[
  #slide-content[
    #figure(
      caption: [Experimental results summary],
      paper-table(
        columns: (1.5fr, 1fr, 1fr, 1fr),
        headers: ("Method", "Time (ms)", "Memory (MB)", "Accuracy"),
        
        [Baseline], [450], [2048], [85%],
        [Optimized], [180], [1024], [89%],
        [Proposed], [65], [512], [93%]
      )
    )
  ]
]

#slide(title: "Feature Comparison")[
  #slide-content[
    #paper-feature-comparison(
      "Implementation Approach",
      [
        - Manual configuration
        - Static parameters
        - Limited flexibility
      ],
      [
        - Automated setup
        - Dynamic adaptation
        - Highly configurable
      ]
    )
  ]
]

#slide(title: "Pros and Cons")[
  #slide-content[
    #paper-pros-cons(
      [
        - Fast execution
        - Low resource usage
        - Easy to maintain
        - Well documented
      ],
      [
        - Requires training data
        - Initial setup overhead
        - Dependency on external APIs
      ]
    )
  ]
]

= Images

#slide(title: "Image Grid")[
  #slide-content[
    #grid(
      columns: 2,
      gutter: 0.8em,
      row-gutter: 0.5em,
      paper-figure(
        image("../images/graph_placeholder.svg", fit: "contain"),
        caption: [Performance graph],
        max-height: 30%
      ),
      paper-figure(
        image("../images/diagram_placeholder.svg", fit: "contain"),
        caption: [System diagram],
        max-height: 30%
      )
    )
  ]
]

= Insights

#slide(title: "Key Takeaway")[
  #slide-content[
    The proposed system demonstrates significant improvements across all metrics, with particular strength in edge-case discovery and processing speed.
    
    #v(2em)
    
    #paper-insight[
      By combining Knowledge Graphs with LLM capabilities, we achieve a 10× improvement in test coverage while reducing manual effort by 98%.
    ]
  ]
]

#slide(title: "Thank You")[
  #slide-content[
    #align(center + horizon)[
      #text(size: 32pt)[Questions?]
      
      #v(2em)
      
      All components are available in the template library.
    ]
  ]
]
