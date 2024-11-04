#import "@preview/cetz:0.3.1"

#import "../utils.typ": dft_ox, dft_oy, axis, dft_style

#set page(width: auto, height: auto, margin: .5cm)

#show math.equation: block.with(fill: white, inset: 1pt)

#let (b, e, z) = (
  (0.2, 3.5),
  (3.6, 2.5),
  (1.9, -1.3), 
)

#let ox = (
  min: (-0.3, 0), 
  max: (4.4, 0),
)

#let oy = (
  min: (0, -0.5), 
  max: (0, 3.8),
)

#let cst = (
  o: (0.0, 1.6),
  x: (4.1, 1.6),
)

#let fmin = (
  x: (2.10, 0.81),
  y: (0, 0.81)
)

#cetz.canvas(length: 3cm, {
  import cetz.draw: *

  dft_style

  axis(..ox, ..dft_ox)
  axis(..oy, ..dft_oy)

  // Courbe
  intersections(
    "in", 
    hide(line(cst.o, cst.x)), 
    bezier(b, e, z, stroke: 2pt + black)
  )

  // Dashed lines
  set-style(stroke: (thickness: 1pt, dash: "dashed"))
  line(cst.o, "in.1")
  line(fmin.y, fmin.x)
  line("in.0", ((), "|-", "ox.end"), name: "p0")
  line("in.1", ((), "|-", "ox.end"), name: "p1")

  // Opens
  set-style(stroke: (thickness: 6pt, paint: gray, dash: none))
  line("p0.end", "p1.end")
  line(cst.o, fmin.y)

  // Limits
  set-style(stroke: (thickness: 1.5pt, paint: black), fill: white)
  circle(fmin.y, fill: black)
  circle(cst.o)
  circle("in.0")
  circle("in.1")
  circle("p0.end")
  circle("p1.end")
})