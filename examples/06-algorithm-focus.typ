#import "@preview/touying:0.5.5": *
#import "@preview/clean-math-presentation:0.1.1": *
#import "../lib/lib.typ": *

#show: clean-math-presentation-theme.with(
  config-info(
    title: [Algorithm-Focused Presentation: \ DBSCAN Implementation],
    short-title: [DBSCAN],
    authors: ((name: "Algorithm Team", affiliation-id: 1),),
    author: "Algorithm Team",
    affiliations: ((id: 1, name: "ML Research Group"),),
    date: datetime.today(),
  ),
  config-common(slide-level: 2),
  progress-bar: true,
)

#title-slide()

= Algorithm Design

#slide(title: "Main Algorithm")[
  #slide-content[
    #paper-algorithm(
      name: "Density-Based Scenario Extraction",
      inputs: "Knowledge Graph $G$, radius $epsilon$, min_samples",
      outputs: "Set of scenario clusters $C$"
    )[
      + Retrieve all nodes $n in G$ matching target ontology
      + Compute feature embeddings for each $n$ using LLM
      + Initialize spatial index (R-tree) for rapid querying
      + Initialize cluster set $C <- emptyset$
      + *for each* unvisited node $x in G$ *do*:
        + Find neighbors $N_epsilon (x)$ within radius $epsilon$
        + *if* $|N_epsilon (x)| gt.eq$ `min_samples` *then*:
          + Create new cluster $c$ and add to $C$
          + Expand cluster from $x$
      + *return* $C$
    ]
  ]
]

#slide(title: "Cluster Expansion Subroutine")[
  #slide-content[
    #paper-algorithm(
      name: "Expand Cluster",
      inputs: "Node $x$, cluster $c$, neighbors $N$",
      outputs: "Expanded cluster $c$"
    )[
      + Add $x$ to cluster $c$
      + Mark $x$ as visited
      + *for each* neighbor $y in N$ *do*:
        + *if* $y$ not visited *then*:
          + Mark $y$ as visited
          + Find neighbors $N_epsilon (y)$
          + *if* $|N_epsilon (y)| gt.eq$ `min_samples` *then*:
            + $N <- N union N_epsilon (y)$
        + *if* $y$ not in any cluster *then*:
          + Add $y$ to cluster $c$
      + *return* $c$
    ]
  ]
]

= Implementation Details

#slide(title: "Spatial Index Structure")[
  #slide-content[
    #slide-split(
      [
        *R-tree Properties:*
        
        - Balanced tree structure
        - Logarithmic query time
        - Efficient range searches
        - Dynamic insertions
        
        #v(1em)
        
        Critical for $O(V log V)$ complexity in neighborhood queries.
      ],
      [
        #paper-figure(
          image("../images/diagram_placeholder.svg", fit: "contain"),
          caption: [R-tree structure visualization]
        )
      ]
    )
  ]
]

#slide(title: "Parameter Selection")[
  #slide-content[
    #paper-table(
      columns: (1fr, 1fr, 1.5fr),
      headers: ("Parameter", "Value", "Justification"),
      
      [$epsilon$], [0.3], [Empirically optimal for accident data],
      [`min_samples`], [5], [Balances noise vs. cluster size],
      [Distance metric], [Euclidean], [Standard for embedding space]
    )
  ]
]

= Results

#slide(title: "Clustering Performance")[
  #slide-content[
    #grid(
      columns: (1fr, 1fr, 1fr),
      gutter: 16pt,
      paper-metric(
        title: "Clusters Found",
        value: "14",
        subtext: "Distinct hazard types"
      ),
      paper-metric(
        title: "Noise Points",
        value: "4.2%",
        subtext: "120 of 4,052 nodes"
      ),
      paper-metric(
        title: "Execution Time",
        value: "1.42s",
        subtext: "For 4K nodes"
      )
    )
  ]
]
