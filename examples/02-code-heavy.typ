#import "@preview/touying:0.5.5": *
#import "@preview/clean-math-presentation:0.1.1": *
#import "../lib/lib.typ": *

#show: clean-math-presentation-theme.with(
  config-info(
    title: [Code-Heavy Presentation: \ System Implementation],
    short-title: [Implementation],
    authors: ((name: "Dev Team", affiliation-id: 1),),
    author: "Dev Team",
    affiliations: ((id: 1, name: "Engineering Department"),),
    date: datetime.today(),
  ),
  config-common(slide-level: 2),
  progress-bar: true,
)

#title-slide()

= Implementation

#slide(title: "Knowledge Graph Query")[
  #slide-content[
    #paper-code(
      caption: [Extracting baseline environmental conditions from the Knowledge Graph]
    )[
      ```python
      def fetch_accident_context(kg_client, node_id):
          # Match the specific accident node
          query = f"MATCH (n:Accident {{id: '{node_id}'}}) " \
                  f"RETURN n.weather, n.speed"
          result = kg_client.execute(query)
          
          if not result:
              raise ValueError("Accident node not found.")
          
          return parse_conditions(result)
      ```
    ]
  ]
]

#slide(title: "Side-by-Side Diff")[
  #slide-content[
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
]

#slide(title: "Unified Diff")[
  #slide-content[
    #figure(
      caption: [Updating the extraction module],
      unified-diff(
        file: "extract_features.py",
        diff-block: ```diff
        @@ -15,7 +15,7 @@
         def parse_report(text):
        -    # Legacy regex extraction
        -    speed = re.findall(r'speed:\s*(\d+)', text)
        -    return {"speed": speed}
        +    # LLM extraction pipeline
        +    prompt = "Extract speed as JSON."
        +    response = llm_client.generate(prompt, context=text)
        +    return json.loads(response.payload)
        ```
      )
    )
  ]
]

#slide(title: "Terminal Output")[
  #slide-content[
    #figure(
      caption: [Console output during extraction phase],
      terminal-output(
        title: "python run_pipeline.py --mode=kg_extract",
      )[
        ```text
        [INFO] Connecting to Knowledge Graph... OK.
        [INFO] Extracting node subset (Type: Intersection).
        [INFO] Retrieved 4,052 nodes in 1.42s.
        [INFO] Initializing DBSCAN (eps=0.3, min_samples=5)...
        [SUCCESS] Found 14 distinct hazard clusters.
        [WARN] 120 noise points dropped.
        ```
      ]
    )
  ]
]

= Testing

#slide(title: "Validation Status")[
  #slide-content[
    #paper-table(
      columns: (1fr, auto, auto),
      headers: ("Test Scenario ID", "Time", "Status"),
      
      [Scenario_KG_001], [1.42s], align(center)[#paper-badge("Valid", type: "success")],
      [Scenario_KG_002], [1.85s], align(center)[#paper-badge("Valid", type: "success")],
      [Scenario_KG_003], [--], align(center)[#paper-badge("Error", type: "error")]
    )
  ]
]
