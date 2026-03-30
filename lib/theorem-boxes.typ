// LaTeX-style theorem boxes for academic presentations

// Academic algorithm box with Computer Modern font
#let paper-algorithm(title: "Algorithm", name: none, inputs: none, outputs: none, body) = {
  block(
    width: 100%,
    stroke: (top: 1.2pt + black, bottom: 1.2pt + black),
    inset: (y: 8pt),
    {
      // Header
      text(font: "New Computer Modern", weight: "bold")[#title]
      if name != none [
        #text(font: "New Computer Modern", style: "italic")[ (#name)]
      ]
      v(4pt)
      line(length: 100%, stroke: 0.5pt + black)
      v(4pt)
      
      // I/O Definitions
      if inputs != none [
        text(font: "New Computer Modern")[*Require:* #inputs]
        linebreak()
      ]
      if outputs != none [
        text(font: "New Computer Modern")[*Ensure:* #outputs]
        linebreak()
      ]
      if inputs != none or outputs != none [
        v(4pt)
      ]
      
      // Algorithm Body (Numbered steps)
      set enum(numbering: "1.", indent: 1em)
      text(font: "New Computer Modern", size: 0.95em)[#body]
    }
  )
}

// Academic theorem box with Computer Modern font
#let paper-theorem(title: "Theorem", name: none, body) = {
  block(
    width: 100%,
    fill: luma(250), // Classic LaTeX theorem background
    stroke: 0.8pt + black, // Sharp academic boundary
    radius: 0pt,
    inset: 10pt, // Reduced from 12pt
    {
      // Formal Title (e.g., THEOREM 1 (Time Complexity))
      text(font: "New Computer Modern", weight: "bold")[#upper(title)]
      if name != none [
        #text(font: "New Computer Modern", style: "italic")[ (#name)]
      ]
      [.]
      v(4pt)
      
      // Theorems are traditionally italicized in LaTeX
      text(font: "New Computer Modern", style: "italic", size: 0.95em)[#body]
    }
  )
}

// Academic proof box with Computer Modern font
#let paper-proof(body, title: "Proof") = {
  block(
    width: 100%,
    stroke: (left: 1.2pt + black), // Strong left rule to visually group the proof
    inset: (left: 10pt, top: 4pt, bottom: 4pt), // Reduced left padding
    {
      // Standard italicized proof heading
      text(font: "New Computer Modern", style: "italic", weight: "bold")[#title.] 
      [ ]
      
      // The body of the proof
      text(font: "New Computer Modern", size: 0.95em)[#body]
      
      // Automatically pushes the Q.E.D. symbol to the far right of the last line
      h(1fr)
      sym.square.filled
    }
  )
}


#let definition(title: none, body) = {
  block(
    fill: white,
    inset: 10pt,
    radius: 0pt,
    stroke: 1pt + black,
  )[
    #text(weight: "bold")[Definition#if title != none [ (#title)].]
    #body
  ]
}

#let example(title: none, body) = {
  block(
    fill: rgb("#f8f8f8"),
    inset: 10pt,
    radius: 0pt,
    stroke: 0.5pt + black,
  )[
    #text(weight: "bold")[Example#if title != none [ (#title)].]
    #body
  ]
}

#let lemma(title: none, body) = {
  block(
    fill: white,
    inset: 10pt,
    radius: 0pt,
    stroke: 1pt + gray,
  )[
    #text(weight: "bold")[Lemma#if title != none [ (#title)].]
    #body
  ]
}

#let corollary(body) = {
  block(
    fill: rgb("#fafafa"),
    inset: 10pt,
    radius: 0pt,
    stroke: 0.5pt + gray,
  )[
    #text(weight: "bold")[Corollary.]
    #body
  ]
}

#let remark(body) = {
  block(
    fill: rgb("#f8f8f8"),
    inset: 10pt,
    radius: 0pt,
    stroke: 0.5pt + black,
  )[
    #text(weight: "bold")[Remark.]
    #body
  ]
}

#let note(body) = {
  block(
    fill: white,
    inset: 10pt,
    radius: 0pt,
    stroke: 1pt + black,
  )[
    #text(weight: "bold")[Note.]
    #body
  ]
}

#let important(body) = {
  block(
    fill: white,
    inset: 10pt,
    radius: 0pt,
    stroke: 2pt + black,
  )[
    #text(weight: "bold")[Important.]
    #body
  ]
}

#let assumption(body) = {
  block(
    fill: rgb("#fafafa"),
    inset: 10pt,
    radius: 0pt,
    stroke: 0.5pt + gray,
  )[
    #text(weight: "bold")[Assumption.]
    #body
  ]
}

#let quote-block(body, author: none) = {
  block(
    fill: white,
    inset: 10pt,
    radius: 0pt,
    stroke: (left: 3pt + gray),
  )[
    #text(style: "italic")[#body]
    #if author != none [
      #v(0.5em)
      #align(right)[— #author]
    ]
  ]
}
