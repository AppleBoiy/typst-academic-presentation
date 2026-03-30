#import "@preview/touying:0.5.5": *
#import "@preview/clean-math-presentation:0.1.1": *
#import "../lib/lib.typ": *

#show: clean-math-presentation-theme.with(
  config-info(
    title: [Mathematical Presentation: \ Complexity Analysis],
    short-title: [Complexity],
    authors: ((name: "Theory Group", affiliation-id: 1),),
    author: "Theory Group",
    affiliations: ((id: 1, name: "Computer Science Department"),),
    date: datetime.today(),
  ),
  config-common(slide-level: 2),
  progress-bar: true,
)

#title-slide()

= Theoretical Foundation

#slide(title: "Main Theorem")[
  #slide-content[
    #paper-theorem(
      title: "Theorem 1",
      name: "KG Traversal Complexity"
    )[
      Given a Knowledge Graph $G = (V, E)$ with $V$ nodes and $E$ edges, the time complexity to extract a complete scenario subgraph using density-based clustering is bounded by $O(V log V + E)$.
    ]
  ]
]

#slide(title: "Proof")[
  #slide-content[
    #paper-proof[
      Let $G = (V, E)$ be the Knowledge Graph. The algorithm proceeds in three phases:
      
      *Phase 1:* LLM parsing filters node properties in $O(V)$ time.
      
      *Phase 2:* DBSCAN clustering with spatial indexing (R-tree) requires $O(V log V)$ for neighborhood queries.
      
      *Phase 3:* Edge traversal for topology reconstruction takes $O(E)$ time.
      
      Therefore, total complexity is $O(V) + O(V log V) + O(E) = O(V log V + E)$.
    ]
  ]
]

#slide(title: "Corollary")[
  #slide-content[
    #paper-theorem(
      title: "Corollary 1.1",
      name: "Sparse Graph Optimization"
    )[
      For sparse graphs where $E = O(V)$, the algorithm runs in $O(V log V)$ time.
    ]
    
    #v(1em)
    
    #paper-proof[
      Substituting $E = O(V)$ into the main theorem yields $O(V log V + V) = O(V log V)$.
    ]
  ]
]

= Definitions

#slide(title: "Key Definitions")[
  #slide-content[
    #definition(title: "Knowledge Graph")[
      A knowledge graph $G = (V, E)$ is a directed labeled graph where:
      - $V$ is a set of entities (nodes)
      - $E subset.eq V times R times V$ is a set of relationships (edges)
      - $R$ is a set of relation types
    ]
    
    #v(1em)
    
    #definition(title: "Density-Based Cluster")[
      A cluster $C subset.eq V$ is density-based if for all $p in C$, there exist at least `min_samples` points within radius $epsilon$.
    ]
  ]
]

= Examples

#slide(title: "Concrete Example")[
  #slide-content[
    #example(title: "Small Graph Analysis")[
      Consider a graph with $V = 1000$ nodes and $E = 5000$ edges.
      
      Expected operations:
      - Filtering: $1000$ operations
      - Clustering: $approx 10,000$ operations
      - Traversal: $5000$ operations
      
      Total: $approx 16,000$ operations
    ]
  ]
]
