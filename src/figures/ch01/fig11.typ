#import "@preview/cetz:0.3.1"

#import "../utils.typ": dft_ox, dft_oy, axis, dft_style

#set page(width: auto, height: auto, margin: .5cm)

#show math.equation: block.with(fill: white, inset: 1pt)

#let ox = (
  min: (-0.6, 0), 
  max: (4.2, 0),
)

#let oy = (
  min: (0, -0.2), 
  max: (0, 1.8),
)

#let cst = (
  o: (0.0, 1.2),
  x: (4.0, 1.2),
)

#let lim = (
  left: (1.2, 0),
  right: (3.2, 0),
)

#cetz.canvas(length: 3cm, {
  import cetz.draw: *

  dft_style

  axis(..ox, ..dft_ox)
  axis(..oy, ..dft_oy)

  // Courbe
  line(cst.o, cst.x, stroke: 2pt + black, name:"courbe")

  // Dashed lines
  set-style(stroke: (thickness: 1pt, dash: "dashed"))
  line(lim.left, ((), "|-", "courbe.end"))
  line(lim.right, ((), "|-", "courbe.end"))

  // Open
  set-style(stroke: (thickness: 6pt, paint: gray, dash: none))
  line(lim.left, lim.right)

  // Limits
  set-style(stroke: (thickness: 1.5pt, paint: black), fill: white)
  circle(lim.left)
  circle(lim.right)
  circle("courbe.start", fill: black)
  // Equation
  content((rel: ox.min), text(size: 20pt)[$ f(x) = c $])
})