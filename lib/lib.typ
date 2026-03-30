// Main library entrypoint
// Import this file to get all components at once

// Re-export all components
#import "components.typ": *
#import "code-blocks.typ": *
#import "theorem-boxes.typ": *
#import "charts.typ": *

// Global slide configuration to prevent overflow
// Apply this at the document level to ensure compact, non-overflowing slides
#let configure-slides(body) = {
  // Set compact spacing globally
  set par(leading: 0.55em, spacing: 0.55em)
  set block(spacing: 0.6em)
  
  // Set reasonable text sizes
  set text(size: 10pt)
  
  // Reduce list spacing
  set list(spacing: 0.5em, indent: 0.8em)
  set enum(spacing: 0.5em, indent: 0.8em)
  
  body
}
