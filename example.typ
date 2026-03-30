#import "@preview/touying:0.5.5": *
#import "@preview/clean-math-presentation:0.1.1": *

// Import all template library components
#import "lib/lib.typ": *

#show: clean-math-presentation-theme.with(
  config-info(
    title: [Complete Component Showcase: \ Typst Presentation Template],
    short-title: [Component Showcase],
    authors: (
      (name: "Template Author", affiliation-id: 1),
    ),
    author: "Template Author",
    affiliations: (
      (id: 1, name: "Typst Community"),
    ),
    date: datetime.today(),
  ),
  config-common(
    slide-level: 2,
  ),
  progress-bar: true,
)

#title-slide(
  logo1: image("images/logo_placeholder.svg", height: 4.5em),
)

// ============================================================================
// SECTION 1: LAYOUT COMPONENTS
// ============================================================================

= Layout Components

#slide(title: "Two-Column Layout (50/50)")[
  #two-columns(
    [
      *Left Column:*
      - Default 50% width
      - Equal spacing
      - Flexible content
    ],
    [
      *Right Column:*
      - Automatic sizing
      - Balanced layout
      - Professional look
    ]
  )
]

#slide(title: "Two-Column Layout (Custom Ratio)")[
  #two-columns(
    ratio: 40%,
    [
      *Narrow Column (40%):*
      
      Less space for labels or icons.
    ],
    [
      *Wide Column (60%):*
      
      More space for detailed content, explanations, or data visualization.
    ]
  )
]

#slide(title: "Three-Column Layout")[
  #three-columns(
    [
      *Column 1:*
      - Item A
      - Item B
    ],
    [
      *Column 2:*
      - Item C
      - Item D
    ],
    [
      *Column 3:*
      - Item E
      - Item F
    ]
  )
]

#slide(title: "Captioned Image")[
  #paper-figure(
    image("images/graph_placeholder.svg", width: 80%, fit: "contain"),
    caption: [System performance over time showing exponential growth]
  )
]

#slide(title: "Image Grid (2x2)")[
  #slide-content[
    #grid(
      columns: 2,
      gutter: 0.8em,
      row-gutter: 0.5em,
      paper-figure(image("images/photo_placeholder.svg", fit: "contain"), caption: [Scenario A], max-height: 50%),
      paper-figure(image("images/diagram_placeholder.svg", fit: "contain"), caption: [Architecture], max-height: 50%),
      paper-figure(image("images/square_placeholder.svg", fit: "contain"), caption: [Data Grid], max-height: 50%),
      paper-figure(image("images/logo_placeholder.svg", fit: "contain"), caption: [System Logo], max-height: 50%),
    )
  ]
]

#slide(title: "Image Grid (3 columns)")[
  #grid(
    columns: 3,
    gutter: 1em,
    paper-figure(image("images/icon_placeholder.svg", fit: "contain"), caption: [Icon 1]),
    paper-figure(image("images/icon_placeholder.svg", fit: "contain"), caption: [Icon 2]),
    paper-figure(image("images/icon_placeholder.svg", fit: "contain"), caption: [Icon 3]),
  )
]

#slide(title: "Wide Image")[
  #paper-figure(
    image("images/wide_placeholder.svg", width: 100%, fit: "contain"),
    caption: [Project timeline showing four major development phases]
  )
]

#slide(title: "Mixed Content with Image")[
  #slide-content[
    #slide-split(
      [
        The Knowledge Graph architecture enables efficient traversal of accident scenarios, allowing the system to identify patterns that would be difficult to detect using traditional rule-based approaches.
        
        Key benefits:
        - Semantic relationships
        - Scalable querying
        - Pattern discovery
      ],
      [
        #paper-figure(
          image("images/diagram_placeholder.svg", width: 100%, fit: "contain"),
          caption: [System architecture diagram]
        )
      ]
    )
  ]
]

// ============================================================================
// SECTION 2: CALLOUT & ALERT BOXES
// ============================================================================

= Callout & Alert Boxes

#slide(title: "Highlight Box")[
  #highlight-box(color: yellow)[
    This is a highlighted section with yellow background.
  ]
  
  #v(1em)
  
  #highlight-box(color: blue)[
    You can use different colors for emphasis.
  ]
]

#slide(title: "Callout Box - Info Type")[
  #callout(type: "info", title: "Key Insight: Knowledge Graph Density")[
    By mapping accident reports to a Knowledge Graph, we bypass the rigid logical rules of traditional ADS testing, allowing the LLM to discover organic, multi-variable edge cases.
  ]
  
  #v(1em)
  
  #callout(type: "info")[
    The modular architecture allows for easy customization and extension of components.
  ]
]

#slide(title: "Callout Box - Warning Type")[
  #callout(type: "warning", title: "DBSCAN Parameter Sensitivity")[
    The clustering output is highly sensitive to the `eps` parameter. If set above 0.5, distinct accident topologies (e.g., intersection crashes vs. highway merging) begin to merge into a single noise cluster.
  ]
  
  #v(1em)
  
  #callout(type: "warning")[
    Remember to backup your data before running this operation.
  ]
]

#slide(title: "Callout Box - Danger Type")[
  #callout(type: "danger", title: "Critical Note")[
    LLM hallucinations must be rigorously filtered before passing generated scenarios to the ADS simulation environment to prevent physics engine crashes.
  ]
  
  #v(1em)
  
  #callout(type: "danger")[
    This operation cannot be undone. Proceed with caution.
  ]
]

#slide(title: "Callout Box - Success Type")[
  #callout(type: "success", title: "Validation Complete")[
    All 1,000 test scenarios passed successfully with 95% accuracy and zero false positives.
  ]
  
  #v(1em)
  
  #callout(type: "success")[
    Data processing completed without errors.
  ]
]

#slide(title: "Side Note")[
  Main content goes here with important information.
  
  #v(1em)
  
  #side-note[
    This is a side note with additional context that's less critical but still useful.
  ]
]

// ============================================================================
// SECTION 3: LIST COMPONENTS
// ============================================================================

= List Components

#slide(title: "Custom List with Markers")[
  #custom-list(
    ("First item with arrow", "Second item", "Third item"),
    marker: "→"
  )
  
  #v(1em)
  
  #custom-list(
    ("Feature A", "Feature B", "Feature C"),
    marker: "▸"
  )
  
  #v(1em)
  
  #custom-list(
    ("Task 1", "Task 2", "Task 3"),
    marker: "✓"
  )
]

#slide(title: "Numbered Steps")[
  #steps(
    "Install the required dependencies",
    "Configure the environment variables",
    "Run the initialization script",
    "Verify the installation",
    "Start the application"
  )
]

// ============================================================================
// SECTION 4: COMPARISON COMPONENTS
// ============================================================================

= Comparison Components

#slide(title: "Paper Feature Comparison")[
  #paper-feature-comparison(
    "Accident Scenario Instantiation",
    [
      - Manual encoding of parameters.
      - Static JSON templates.
      - Highly deterministic but lacks edge-case variance.
    ],
    [
      - Automated generation via LLM.
      - Dynamic Knowledge Graph traversal.
      - Introduces organic variance based on real-world distributions.
    ]
  )
]

#slide(title: "Multiple Feature Comparisons")[
  #paper-feature-comparison(
    "Data Processing Pipeline",
    [
      - Sequential batch processing
      - Manual data validation
      - Limited scalability
    ],
    [
      - Parallel stream processing
      - Automated validation with ML
      - Horizontally scalable architecture
    ]
  )
  
  #v(1em)
  
  #paper-feature-comparison(
    "Testing Framework",
    [
      - Predefined test scenarios
      - Static parameter ranges
    ],
    [
      - Knowledge Graph-driven scenarios
      - Dynamic parameter exploration
    ]
  )
]

#slide(title: "Paper Pros and Cons")[
  #paper-pros-cons(
    [
      - Scales infinitely with available graph nodes.
      - High fidelity to real-world physics conditions.
      - Eliminates human bottleneck in test creation.
    ],
    [
      - Requires rigorous LLM output validation.
      - Hallucinated parameters can crash the ADS simulator.
      - Initial computational overhead for DB clustering.
    ]
  )
]

// ============================================================================
// SECTION 5: UTILITY COMPONENTS
// ============================================================================

= Utility Components

#slide(title: "Section Divider Example")[
  Content before divider
  
  #section-divider("New Section")
  
  Content after divider
]

#slide(title: "Footer Note Example")[
  Main slide content goes here with important information.
  
  #footer-note[
    Data source: Internal study, March 2026
  ]
]

// ============================================================================
// SECTION 6: CODE BLOCK COMPONENTS
// ============================================================================

= Code Block Components

#slide(title: "Paper Code Listing")[
  #paper-code(
    caption: [Extracting baseline environmental conditions from the Knowledge Graph]
  )[
    ```python
    def fetch_accident_context(kg_client, node_id):
        # Match the specific accident node and retrieve properties
        query = f"MATCH (n:Accident {{id: '{node_id}'}}) RETURN n.weather, n.speed"
        result = kg_client.execute(query)
        
        if not result:
            raise ValueError("Accident node not found in graph.")
        
        return parse_conditions(result)
    ```
  ]
]

#figure(
  caption: [Console output during the Knowledge Graph extraction and clustering phase.],
  terminal-output(
    title: "python run_pipeline.py --mode=kg_extract",
  )[
    ```text
    [INFO] Connecting to local Knowledge Graph... OK.
    [INFO] Extracting node subset (Accident Type: Intersection).
    [INFO] Retrieved 4,052 nodes in 1.42s.
    [INFO] Initializing DBSCAN (eps=0.3, min_samples=5)...
    [SUCCESS] Found 14 distinct hazard clusters.
    [WARN] 120 noise points dropped from generation pool.
    [INFO] Exporting cluster centroids to LLM prompt queue...
    ```
  ]
) <terminal-logs>

#slide(title: "GitHub LaTeX Diff - Side by Side")[
  #github-latex-diff(
    old-file: "scenario_builder.py (Baseline)",
    new-file: "scenario_builder.py (KG Enhanced)",
    old-code: [
      ```python
      def create_test_case(speed, weather):
          # Static edge case generation
          return {
              "ego_speed": speed,
              "conditions": weather,
              "hazards": []
          }
      ```
    ],
    new-code: [
      ```python
      def create_test_case(kg_node_id):
          # Fetch accident context from KG
          context = kg.query_node(kg_node_id)
          return {
              "ego_speed": context.get("speed"),
              "conditions": context.get("weather"),
              "hazards": context.get("entities")
          }
      ```
    ]
  )
]

#slide(title: "Unified Diff Viewer")[
  #figure(
    caption: [Updating the extraction module to leverage LLM parsing for accident reports],
    unified-diff(
      file: "extract_features.py",
      diff-block: ```diff
      @@ -15,7 +15,7 @@
       def parse_report(text):
      -    # Legacy regex extraction
      -    speed = re.findall(r'speed:\s*(\d+)', text)
      -    weather = re.findall(r'weather:\s*(\w+)', text)
      -    return {"speed": speed, "weather": weather}
      +    # Proposed LLM extraction pipeline
      +    prompt = "Extract speed and weather conditions as JSON."
      +    response = llm_client.generate(prompt, context=text)
      +    return json.loads(response.payload)
      ```
    )
  )
]

#slide(title: "Unified Diff - Simple Example")[
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

#slide(title: "Code with Line Numbers")[
  #code-with-lines(
    "def factorial(n):
    if n <= 1:
        return 1
    return n * factorial(n - 1)

result = factorial(5)
print(result)",
    start: 1
  )
]

#slide(title: "Inline Code")[
  Use #inline-code("import numpy as np") to import NumPy.
  
  #v(1em)
  
  The function #inline-code("process_data()") handles all transformations.
  
  #v(1em)
  
  Set the variable #inline-code("DEBUG = True") for verbose output.
]

// ============================================================================
// SECTION 7: THEOREM BOX COMPONENTS
// ============================================================================

= Theorem Box Components

#slide(title: "Paper Theorem")[
  #slide-content[
    #paper-theorem(
      title: "Theorem 1",
      name: "KG Traversal Bound"
    )[
      Given a Knowledge Graph with $V$ accident nodes and $E$ edges, the time complexity to extract a complete scenario subgraph using the proposed LLM prompt heuristic is bounded by $O(V log V + E)$.
    ]
  ]
]

#slide(title: "Paper Proof")[
  #slide-content[
    #paper-theorem(
      title: "Theorem 1",
      name: "Time Complexity"
    )[
      The algorithm runs in $O(V log V + E)$ time for a graph with $V$ vertices and $E$ edges.
    ]
    
    #v(0.8em)
    
    #paper-proof[
      Let the graph be denoted as $G = (V, E)$. The initial LLM parsing acts as a filter over the node properties, which takes $O(V)$ operations. Subsequently, applying DBSCAN to cluster the filtered nodes based on feature density requires computing the neighborhoods. Using a spatial index (e.g., an R-tree or KD-tree), this takes $O(V log V)$. Finally, edge traversal to reconstruct the physical topology requires at most $O(E)$ operations.
    ]
  ]
]

#slide(title: "Paper Algorithm")[
  #slide-content[
    #paper-algorithm(
      name: "Density-Based Scenario Extraction",
      inputs: "Knowledge Graph $G$, radius $epsilon$",
      outputs: "Set of scenario clusters $C$"
    )[
      + Retrieve all nodes $n in G$ matching target ontology.
      + Compute feature embeddings for $n$ using LLM spatial representation.
      + Initialize spatial index (R-tree) for rapid distance querying.
      + *for each* unvisited node $x$ *do*:
      + *if* density $gt.eq$ `min_samples` *then* form cluster.
      + *return* $C$.
    ]
  ]
]


#slide(title: "Paper Insight Box")[
  #slide-content[
    The proposed architecture combines Knowledge Graph traversal with LLM-driven parameter generation to produce realistic accident scenarios at scale.
    
    #v(1em)
    
    #paper-insight[
      Traditional rule-based systems generate only 45 edge cases per 500 scenarios, while the KG+LLM approach discovers 465 viable topologies—a 10× improvement in coverage.
    ]
    
    #v(1em)
    
    This dramatic increase in edge-case discovery enables continuous integration testing of autonomous driving systems with minimal human intervention.
  ]
]

#slide(title: "Definition")[
  #definition(title: "Knowledge Graph")[
    A knowledge graph $G = (V, E)$ is a directed labeled graph where:
    - $V$ is a set of entities (nodes)
    - $E subset.eq V times R times V$ is a set of relationships (edges)
    - $R$ is a set of relation types
  ]
]

#slide(title: "Example")[
  #example(title: "Matrix Multiplication")[
    Consider two matrices:
    $ A = mat(1, 2; 3, 4), quad B = mat(5, 6; 7, 8) $
    
    Their product is:
    $ A B = mat(19, 22; 43, 50) $
  ]
]

#slide(title: "Lemma")[
  #lemma(title: "Transitivity")[
    If $a < b$ and $b < c$, then $a < c$ for all real numbers $a, b, c$.
  ]
]

#slide(title: "Corollary")[
  #theorem(title: "Main Result")[
    Every connected graph with $n$ vertices has at least $n-1$ edges.
  ]
  
  #corollary[
    A tree with $n$ vertices has exactly $n-1$ edges.
  ]
]

#slide(title: "Remark")[
  #remark[
    The algorithm's time complexity is $O(n log n)$, which is optimal for comparison-based sorting.
  ]
]

#slide(title: "Note")[
  #note[
    All experiments were conducted on a machine with 16GB RAM and an Intel i7 processor.
  ]
]

#slide(title: "Important")[
  #important[
    Data must be preprocessed before training. Missing values will cause the algorithm to fail.
  ]
]

#slide(title: "Assumption")[
  #assumption[
    We assume that the input data follows a normal distribution with mean $mu$ and variance $sigma^2$.
  ]
]

#slide(title: "Quote Block")[
  #quote-block(
    [The best way to predict the future is to invent it.],
    author: "Alan Kay"
  )
  
  #v(1em)
  
  #quote-block[
    Simplicity is the ultimate sophistication.
  ]
]

// ============================================================================
// SECTION 8: CHART & METRIC COMPONENTS
// ============================================================================

= Chart & Metric Components

#slide(title: "Academic Bar Chart")[
  #figure(
    caption: [Edge Case Discovery Rate (Out of 500 Test Scenarios)],
    academic-bar-chart(
      data: (
        ("Random", 45),
        ("Search", 120),
        ("Rule-Based", 210),
        ("Proposed\n(KG+LLM)", 465)
      ),
      max-value: 500,
      chart-height: 140pt,
      bar-width: 45pt
    )
  )
]

#slide(title: "Academic Bar Chart - Simple")[
  #figure(
    caption: [Quarterly performance metrics],
    academic-bar-chart(
      data: (
        ("Q1", 45),
        ("Q2", 67),
        ("Q3", 89),
        ("Q4", 78)
      ),
      max-value: 100,
      chart-height: 120pt,
      bar-width: 40pt
    )
  )
]

#slide(title: "Paper Metric Cards")[
  
  #grid(
    columns: (1fr, 1fr, 1fr),
    gutter: 16pt,
    paper-metric(
      title: "Scenario Gen. Time",
      value: "1.2s",
      subtext: "Down from 45.0s baseline"
    ),
    paper-metric(
      title: "Edge Case Discovery",
      value: "+340%",
      subtext: "Novel topologies identified"
    ),
    paper-metric(
      title: "DBSCAN Noise Ratio",
      value: "4.2%",
      subtext: "Using optimized eps=0.3"
    )
  )
  #v(1em)
  
]


#slide(title: "Paper Progress Bars")[
  #slide-content[
    The pipeline systematically traverses the raw accident reports, transforming unstructured narrative text into queryable graph nodes.
    
    #v(0.8em)
    
    #paper-progress(percentage: 100, label: "Phase 1: Entity Recognition (Completed)")
    
    #v(0.8em)
    
    #paper-progress(percentage: 82, label: "Phase 2: LLM Relationship Mapping (In Progress)")
    
    #v(0.8em)
    
    #paper-progress(percentage: 15, label: "Phase 3: ADS Scenario Generation")
    
    #v(0.8em)
    
    As shown above, the semantic mapping phase is currently processing the remaining edge-case nodes.
  ]
]

#slide(title: "Professional Academic Table")[
  #figure(
    caption: [Performance comparison of different methods],
    paper-table(
      columns: (1fr, 1fr, 1fr, 1fr),
      headers: ("Method", "Accuracy", "Speed", "Memory"),
      
      // Row 1
      [Baseline], [85%], [10s], [2GB],
      
      // Row 2
      [Optimized], [87%], [5s], [1GB],
      
      // Row 3
      [Our Method], [95%], [0.5s], [200MB],
    )
  )
]

#slide(title: "Complex Academic Table")[
  #figure(
    caption: [Comparison of clustering algorithms for ADS accident scenario extraction],
    paper-table(
      columns: (1.2fr, 1fr, 1.3fr, 1.5fr),
      headers: ("Algorithm", "Density-Based", "Requires Prior 'k'", "Outlier Handling"),
      
      // Row 1
      [*DBSCAN*], [Yes], [No (Uses `eps`, `min_samples`)], [Native noise detection (`-1` labels)],
      
      // Row 2
      [*K-Means*], [No (Distance-based)], [Yes], [Highly sensitive to outliers],
      
      // Row 3
      [*Hierarchical*], [No], [No], [Requires manual dendrogram cut],
    )
  )
]

#slide(title: "Key-Value List")[
  #key-value-list(
    ("Project Name", "Accident Knowledge Graph"),
    ("Version", "1.0.0"),
    ("Status", "Production"),
    ("Last Updated", "March 2026"),
    ("Contributors", "5 developers"),
    ("License", "MIT"),
  )
]

#slide(title: "Paper Badge (Inline Status)")[
  #slide-content[
    Each generated scenario is passed through the physics simulator to ensure logical consistency before being added to the final test suite.
    
    #v(0.8em)
    
    The baseline extraction script completed with a status of #paper-badge("Passed", type: "success"), while the LLM validation node returned a #paper-badge("Warning", type: "warning") due to physically impossible vehicle speeds.
    
    #v(0.8em)
    
    Other status indicators: #paper-badge("Pending", type: "neutral") #paper-badge("Failed", type: "error") #paper-badge("Active", type: "success")
  ]
]

#slide(title: "Paper Badge in Table")[
  #slide-content[
    #figure(
      caption: [Automated scenario validation results],
      paper-table(
        columns: (1fr, auto, auto),
        headers: ("Test Scenario ID", "Execution Time", "Validation Status"),
        
        [Scenario_KG_001_Rain], [1.42s], align(center)[#paper-badge("Valid", type: "success")],
        [Scenario_KG_002_Snow], [1.85s], align(center)[#paper-badge("Valid", type: "success")],
        [Scenario_KG_003_Fog],  [--],    align(center)[#paper-badge("Physics Error", type: "error")]
      )
    )
  ]
]

#slide(title: "Timeline Item")[
  #slide-content[
    #timeline-item(
      "2026-01",
      "Project Kickoff",
      "Initial planning and requirements gathering phase"
    )
    
    #timeline-item(
      "2026-02",
      "Development Phase",
      "Implementation of core features and components"
    )
    
    #timeline-item(
      "2026-03",
      "Testing & Release",
      "Quality assurance and production deployment"
    )
  ]
]

#slide(title: "Comparison Table")[
  #comparison-table((
    ("Manual Processing", "Automated Pipeline"),
    ("Hours per case", "Minutes per case"),
    ("Error-prone", "Consistent results"),
    ("Limited scale", "Highly scalable"),
    ("High cost", "Low cost"),
  ))
]

// ============================================================================
// SECTION 9: COMBINED EXAMPLES
// ============================================================================

= Combined Examples

#slide(title: "Mixed Layout Example")[
  #slide-content[
    #two-columns(
      ratio: 40%,
      [
        #paper-metric(
          title: "Success Rate",
          value: "95%",
          subtext: "Production deployment"
        )
        
        #v(1em)
        
        #paper-badge("Production", type: "success")
      ],
      [
        #callout(title: "Key Achievement")[
          Achieved 10× performance improvement through optimization.
        ]
        
        #v(0.5em)
        
        #paper-progress(percentage: 85, label: "Completion")
      ]
    )
  ]
]

#slide(title: "Code with Metrics")[
  #paper-code(
    caption: [Query optimization with caching]
  )[
    ```python
    def optimize_query(query):
        # Apply caching
        if query in cache:
            return cache[query]
        result = execute(query)
        cache[query] = result
        return result
    ```
  ]
  
  #v(1em)
  
  #grid(
    columns: (1fr, 1fr),
    gutter: 16pt,
    paper-metric(
      title: "Speedup",
      value: "10×",
      subtext: "Compared to baseline"
    ),
    paper-metric(
      title: "Cache Hit Rate",
      value: "90%",
      subtext: "Average across queries"
    )
  )
]

#slide(title: "Theorem with Example")[
  #theorem(title: "Complexity Bound")[
    The algorithm runs in $O(n log n)$ time.
  ]
  
  #v(1em)
  
  #example[
    For $n = 1000$ elements:
    - Expected operations: $approx 10,000$
    - Actual measured: $9,876$
  ]
]

#slide(title: "Comparison with Visualization")[
  #two-columns(
    [
      #comparison-table((
        ("Old", "New"),
        ("Slow", "Fast"),
        ("Complex", "Simple"),
      ))
    ],
    [
      #academic-bar-chart(
        data: (("Before", 30), ("After", 95)),
        max-value: 100,
        chart-height: 100pt,
        bar-width: 35pt
      )
    ]
  )
]

// ============================================================================
// CONCLUSION
// ============================================================================

= Conclusion

#slide(title: "Component Summary")[
  #slide-content[
    *All Components Demonstrated:*
    
    #v(0.3em)
    
    #three-columns(
      [
        *Layouts:*
        - two-columns
        - three-columns
        - captioned-image
        - image-grid
      ],
      [
        *Boxes:*
        - highlight-box
        - callout (4 types)
        - side-note
      ],
      [
        *Lists:*
        - custom-list
        - steps
        - paper-feature-comparison
        - paper-pros-cons
      ]
    )
  ]
]

#slide(title: "Component Summary (cont.)")[
  #slide-content[
    #three-columns(
      [
        *Code:*
        - paper-code
        - code-dark
        - code-light
        - terminal
        - github-latex-diff
        - unified-diff
        - code-with-lines
        - inline-code
      ],
      [
        *Theorems:*
        - theorem
        - proof
        - definition
        - example
        - lemma
        - corollary
        - remark
        - note
        - important
        - assumption
        - quote-block
      ],
      [
        *Charts:*
        - academic-bar-chart
        - paper-metric
        - progress-bar
        - paper-table
        - key-value-list
        - status-badge
        - timeline-item
        - comparison-table
      ]
    )
  ]
]

#slide(title: "Total Components")[
  #align(center + horizon)[
    #text(size: 48pt, weight: "bold", fill: blue)[
      50+
    ]
    
    #v(1em)
    
    #text(size: 24pt)[
      Reusable Components
    ]
    
    #v(2em)
    
    #text(size: 16pt, fill: gray)[
      All showcased in this presentation
    ]
  ]
]

#slide(title: "Thank You!")[
  #align(center + horizon)[
    #text(size: 32pt, weight: "bold")[
      Thank You!
    ]
    
    #v(2em)
    
    #callout(type: "success")[
      All components are ready to use in your presentations
    ]
    
    #v(2em)
    
    #text(size: 14pt)[
      Documentation: README.md, USAGE.md, COMPONENTS.md
    ]
  ]
]

// ============================================================================
// APPENDIX
// ============================================================================

#show: appendix

= Appendix

#slide(title: "Additional Resources")[
  #key-value-list(
    ("Template Repository", "github.com/your-repo"),
    ("Documentation", "See USAGE.md"),
    ("Component Reference", "See COMPONENTS.md"),
    ("Quick Reference", "See QUICK_REFERENCE.md"),
    ("License", "MIT License"),
  )
]

#slide(title: "Utility Components")[
  #section-divider("Section Divider")
  
  Content with footer note below.
  
  #footer-note[
    This is a footer note at the bottom of the slide
  ]
]
