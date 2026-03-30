#import "@preview/touying:0.5.5": *
#import "@preview/clean-math-presentation:0.1.1": *
#import "../lib/lib.typ": *

#show: clean-math-presentation-theme.with(
  config-info(
    title: [Project Progress Report: \ Q1 2026 Update],
    short-title: [Q1 Progress],
    authors: ((name: "Project Manager", affiliation-id: 1),),
    author: "Project Manager",
    affiliations: ((id: 1, name: "Development Team"),),
    date: datetime.today(),
  ),
  config-common(slide-level: 2),
  progress-bar: true,
)

#title-slide()

= Executive Summary

#slide(title: "Project Status Overview")[
  #slide-content[
    #grid(
      columns: (1fr, 1fr, 1fr),
      gutter: 16pt,
      paper-metric(
        title: "Overall Progress",
        value: "68%",
        subtext: "On track for Q2 delivery"
      ),
      paper-metric(
        title: "Team Size",
        value: "12",
        subtext: "Engineers + researchers"
      ),
      paper-metric(
        title: "Budget Used",
        value: "45%",
        subtext: "Under budget"
      )
    )
    
    #v(2em)
    
    #paper-insight[
      Project is ahead of schedule with all major milestones completed on time.
    ]
  ]
]

= Phase Progress

#slide(title: "Development Phases")[
  #slide-content[
    #paper-progress(percentage: 100, label: "Phase 1: Requirements & Design")
    #v(0.8em)
    #paper-progress(percentage: 100, label: "Phase 2: Data Collection & Processing")
    #v(0.8em)
    #paper-progress(percentage: 85, label: "Phase 3: Algorithm Implementation")
    #v(0.8em)
    #paper-progress(percentage: 60, label: "Phase 4: Testing & Validation")
    #v(0.8em)
    #paper-progress(percentage: 20, label: "Phase 5: Documentation & Deployment")
  ]
]

= Milestones

#slide(title: "Key Achievements")[
  #slide-content[
    #timeline-item(
      "Jan 2026",
      "Project Kickoff",
      "Requirements gathering and team formation completed"
    )
    
    #timeline-item(
      "Feb 2026",
      "Data Pipeline Ready",
      "Knowledge Graph populated with 50K accident records"
    )
    
    #timeline-item(
      "Mar 2026",
      "Algorithm Implementation",
      "DBSCAN clustering and LLM integration functional"
    )
  ]
]

= Deliverables

#slide(title: "Completed Deliverables")[
  #slide-content[
    #paper-table(
      columns: (2fr, 1fr, auto),
      headers: ("Deliverable", "Due Date", "Status"),
      
      [System Architecture Document], [Jan 15], align(center)[#paper-badge("Done", type: "success")],
      [Data Pipeline Implementation], [Feb 28], align(center)[#paper-badge("Done", type: "success")],
      [Clustering Algorithm], [Mar 15], align(center)[#paper-badge("Done", type: "success")],
      [Test Suite (Unit Tests)], [Mar 30], align(center)[#paper-badge("In Progress", type: "warning")],
      [Integration Tests], [Apr 15], align(center)[#paper-badge("Pending", type: "neutral")]
    )
  ]
]

= Risks

#slide(title: "Risk Assessment")[
  #slide-content[
    #paper-pros-cons(
      [
        *Strengths:*
        - Strong team expertise
        - Clear requirements
        - Proven technology stack
        - Good stakeholder engagement
      ],
      [
        *Risks:*
        - LLM API rate limits
        - Data quality issues
        - Integration complexity
        - Timeline pressure for Q2
      ]
    )
  ]
]

= Next Steps

#slide(title: "Q2 Roadmap")[
  #slide-content[
    + Complete unit and integration testing
    + Performance optimization and tuning
    + User acceptance testing with stakeholders
    + Documentation and deployment preparation
    + Production rollout planning
    
    #v(2em)
    
    #paper-insight[
      Focus for Q2: Quality assurance and production readiness.
    ]
  ]
]
