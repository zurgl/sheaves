#import "@preview/cetz:0.3.1"

#import "../utils.typ": xy_axis, dft_style

#set page(width: auto, height: auto, margin: .5cm)

#show math.equation: block.with(fill: white, inset: 1pt)

#let ox = (
  min: (-0.3, 0), 
  max: (2.3, 0),
)

#let oy = (
  min: (0, -0.4), 
  max: (0, 2.7),
)

#let lim = (
  a: (0.9, 0),
  b: (1.7, 0),
  fa: (0, 1.1),
  fb: (0, 2.2),
)

#let fa = (
  left: (lim.a.first(), 0.6),
  right: (lim.a.first(), 1.7),
)

#cetz.canvas(length: 3cm, {
  import cetz.draw: *

  dft_style

  xy_axis(ox, oy)

  // Courbes
  arc-through((-0.4,-0.25), (0, -0.06), fa.left)
  arc-through(fa.right, (lim.b.first(), lim.fb.last()), (rel: (0.1, 0.15)))

  // Dashed lines
  set-style(stroke: (thickness: 1pt, dash: "dashed"))
  line(lim.a, (lim.a.first(), fa.right.last()))
  line(lim.b, (lim.b.first(), lim.fb.last()))
  line(lim.fa, (lim.b.first(), lim.fa.last()), (rel: (0.1, 0)))
  line(lim.fb, (lim.b.first(), lim.fb.last()))

  // Opens
  set-style(stroke: (thickness: 6pt, paint: gray, dash: none))
  line(lim.a, lim.b)
  line(lim.fa, lim.fb)

  // Limits
  set-style(stroke: (thickness: 1.5pt, paint: black), fill: white)
  circle(lim.a, fill: black)
  circle(lim.b)
  circle(lim.fa)
  circle(lim.fb)
  circle(fa.left)
  circle(fa.right, fill: black)
})