#import "@preview/cetz:0.3.1"

#let dft_ox = (
  name: "ox", 
  sym: "x", 
  anchor: "north-west"
)

#let dft_oy = (
  name: "oy", 
  sym: "y", 
  anchor: "south-east"
)

#let dft_style = cetz.draw.set-style(
  mark: (fill: black, scale: 2),
  stroke: (thickness: 0.4pt, cap: "round"),
  content: (padding: 1pt),
  circle: (radius: 0.06),
)

#let axis(
  name: str, 
  sym: str, 
  anchor: str,
) = (min: (), max: ()) => {
  cetz.draw.line(
    min, 
    max, 
    mark: (end: "stealth"), 
    name: name
  )
  cetz.draw.content(
    (), 
    text(size: 20pt)[$ #sym $], 
    anchor: anchor
  )
}

#let xy_axis = (ox, oy) => {
  axis(..dft_ox)(..ox) 
  axis(..dft_oy)(..oy)
}