= Topology as a Dietary choice

#v(8pt)

== What is Topology?

#v(4pt)

When talking about _topology_, people draw cups with handles turning donuts. When I think of _topology_, I see nutritious food. In mathematics, _topology_ is defined as a family of _subsets_ of some _space_. We call theses _subsets_ _open_. _Open_ sets are like meaty, skinless fruits.

#figure(
  image("chap10.png", width: 50%),
  caption: [Skinless fruits, are open set]
)<skinless>

For instance, in standard _topology_, the inside of a ball in 3-d is considered meaty. Contrast this with an empty _sphere_, a _curve_, or a point-these are skinny when embedded in 3-d-they have no nutritional value.

In one dimension (on a line), the inside of a _segment_ is meaty, but a _segment_ with endpoints is not _open_, because it has a rind (the endpoints).

These four conditions define a topology.

+ The intersection of any two open sets is again an open set. This is what I mean by skinlessness. If you included skins, the intersection could end up skiny.
+ A union of open sets is again open. It's even more juicy, and no skin can be produced by a union. There is subtlety there: You can take a union of an arbitrary number of open sets and it's still open. But you have to be carful wiith intersections--only finite intersections are allowed. That's because by intersecting an infinite number of open sets you could end up with something very skinny-like a single point.
+ The whole space $X$ is open. In a sense, it defines what it means to be juicy and it doesn't have a skin because it has no contact with outisde-it is its own Universe.
+ As usual, an empty set is an add item. Even though it's emppty, it's considered open. You may think of it as a union of zero open sets.

There are some extreme topologies, like the discrete topology in which all subsets are open (even individual points)a and a trivial (indiscrete) topology where only the whole space and the empty set are open. But most topologies are reasonable and adhere to our intuitions. So let's not worry about pathologies.

#pagebreak()

== Continuity

#v(4pt)

Consider a function from one topological space $X$ to another topological space $Y$. Intuitively, a function is continuous if it doesn't make sudden jumps. So naively you might think that a continuous function maps any open set to a point which, in most topologies, is not open.

#figure(
  image("chap11.png", width: 50%),
)

In fact any time a function stalls, or makes a turnaround (like the function $y= x^2$ at $x=0$) you get a skinny point in its image.

#figure(
  image("chap12.png", width: 50%),
)

The correct definition foes in the opposite direction: a function is continous if and only if the pre-image of every open set is open.
First of all, a function cannot stall or turn around in the $x$ direction, since that would mean mapping one point to many.
Secondly, if a function makes a jump at some point $x$, it's possible to surround $f(x)$ with a samll open set whose counter-image contains $x$ as its boundary.

#figure(
  image("chap10.png", width: 50%),
)

It's also possible to define a _continous function_ as a pair of _functions_. One _function_ $f$ is the usual mapping of _points_ from $X$ to $Y$. The other _function_ $g$ maps _open sets_ in $Y$ to _open sets_ in $X$. The pair $(f, g)$ defines a _continuous function_ if for all _points_ $x in X$ and _open sets_ $O$ in $Y$ we have the following equivalence:

$ f(x) in O <=> x in g(O) $

The left-hand side tells us that $x$ is the pre-image of $O$ under $f$. The right-hand side tells us that $g$ maps $O$ to thus _preimage_. This formula looks a bit like an _adjunction_ between $f$ and $g$. It's an example of a more general notion of _Chu constructions_.

Finally, the cups and donuts magic trick uses invertible continous functions called _homeomorphisms_ to deform shapes without tearing or gluing them.
