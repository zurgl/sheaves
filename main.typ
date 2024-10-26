= What is Topology?

When talking about topology, people draw cups with handles turning donuts. When I think of topology, I see nutritious food.

In mathematics, topology is defined as a family of subsets of some space. We call theses subsets _open_. Open sets are like meaty, skinless fruits.

#figure(
  image("assets/images/skinless.jpg", width: 50%),
  caption: [
    _Glaciers_ form an important part
    of the earth's climate system.
  ],
)

For instance, in standard topology, the inside of a ball in 3-d is considered meaty. Contrast this with an empty sphere, a curve, or a point-these are skinny when embedded in 3-d-they have no nutritional value.

In one dimension (on a line), the inside of a segment is meaty, but a segment with endpoints is not open, because it has a rind (the endpoints).

These four conditions define a topology.
+ The intersection of any two open sets is again an open set. This is what I mean by skinlessness. If you included skins, the intersection could end up skiny.
+ A union of open sets is again open. It's even more juicy, and no skin can be produced by a union. There is subtlety there: You can take a union of an arbitrary number of open sets and it's still open. But you have to be carful wiith intersections--only finite intersections are allowed. That's because by intersecting an infinite number of open sets you could end up with something very skinny-like a single point.
+ The whole space $X$ is open. In a sense, it defines what it means to be juicy and it doesn't have a skin because it has no contact with outisde-it is its own Universe.
+ As usual, an empty set is an add item. Even though it's emppty, it's considered open. You may think of it as a union of zero open sets.

There are some extreme topologies, like the discrete topology in which all subsets are open (even individual points)a and a trivial (indiscrete) topology where only the whole space and the empty set are open. But most topologies are reasonable and adhere to our intuitions. So let's not worry about pathologies.

