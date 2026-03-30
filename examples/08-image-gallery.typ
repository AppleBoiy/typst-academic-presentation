#import "@preview/touying:0.5.5": *
#import "@preview/clean-math-presentation:0.1.1": *
#import "../lib/lib.typ": *

#show: clean-math-presentation-theme.with(
  config-info(
    title: [Image Gallery: \ Visual Documentation],
    short-title: [Gallery],
    authors: ((name: "Documentation Team", affiliation-id: 1),),
    author: "Documentation Team",
    affiliations: ((id: 1, name: "Visual Design Lab"),),
    date: datetime.today(),
  ),
  config-common(slide-level: 2),
  progress-bar: true,
)

#title-slide()

= Single Images

#slide(title: "Large Centered Image")[
  #slide-content[
    #paper-figure(
      image("../images/graph_placeholder.svg", width: 90%, fit: "contain"),
      caption: [System performance metrics over time showing exponential growth pattern]
    )
  ]
]

#slide(title: "Wide Timeline")[
  #slide-content[
    #paper-figure(
      image("../images/wide_placeholder.svg", width: 100%, fit: "contain"),
      caption: [Project development timeline with four major phases]
    )
  ]
]

= Grid Layouts

#slide(title: "2x2 Image Grid")[
  #slide-content[
    #grid(
      columns: 2,
      gutter: 0.8em,
      row-gutter: 0.5em,
      paper-figure(
        image("../images/photo_placeholder.svg", fit: "contain"),
        caption: [Field study A],
        max-height: 30%
      ),
      paper-figure(
        image("../images/diagram_placeholder.svg", fit: "contain"),
        caption: [System architecture],
        max-height: 30%
      ),
      paper-figure(
        image("../images/square_placeholder.svg", fit: "contain"),
        caption: [Data matrix],
        max-height: 30%
      ),
      paper-figure(
        image("../images/logo_placeholder.svg", fit: "contain"),
        caption: [Brand identity],
        max-height: 30%
      )
    )
  ]
]

#slide(title: "3-Column Icon Grid")[
  #slide-content[
    #grid(
      columns: 3,
      gutter: 1.5em,
      paper-figure(
        image("../images/icon_placeholder.svg", fit: "contain"),
        caption: [Module A]
      ),
      paper-figure(
        image("../images/icon_placeholder.svg", fit: "contain"),
        caption: [Module B]
      ),
      paper-figure(
        image("../images/icon_placeholder.svg", fit: "contain"),
        caption: [Module C]
      )
    )
  ]
]

= Mixed Layouts

#slide(title: "Text with Image")[
  #slide-content[
    #slide-split(
      [
        *System Architecture Overview*
        
        The proposed architecture consists of three main components:
        
        + Knowledge Graph database
        + LLM processing engine
        + Scenario generation pipeline
        
        Each component is designed for scalability and fault tolerance.
      ],
      [
        #paper-figure(
          image("../images/diagram_placeholder.svg", fit: "contain"),
          caption: [Component diagram]
        )
      ]
    )
  ]
]

#slide(title: "Image with Metrics")[
  #slide-content[
    #paper-figure(
      image("../images/graph_placeholder.svg", width: 80%, fit: "contain"),
      caption: [Performance trend analysis]
    )
    
    #v(1em)
    
    #grid(
      columns: 3,
      gutter: 12pt,
      paper-metric(title: "Peak", value: "1.2K", subtext: "Max throughput"),
      paper-metric(title: "Average", value: "850", subtext: "Mean value"),
      paper-metric(title: "Min", value: "120", subtext: "Baseline")
    )
  ]
]

= Comparison

#slide(title: "Before and After")[
  #slide-content[
    #grid(
      columns: 2,
      gutter: 1.5em,
      [
        #paper-figure(
          image("../images/square_placeholder.svg", fit: "contain"),
          caption: [Before optimization]
        )
        
        *Issues:*
        - High latency
        - Resource intensive
        - Limited scalability
      ],
      [
        #paper-figure(
          image("../images/diagram_placeholder.svg", fit: "contain"),
          caption: [After optimization]
        )
        
        *Improvements:*
        - 10× faster
        - Efficient resource use
        - Horizontally scalable
      ]
    )
  ]
]
