= Presheaves and Topology.

#v(8pt)

In all branches of science we sooner or later encounter the global vs. local duality. Topology is no different.

In topology we have the global definition of continuity: counter-images of all open sets are open. But we perceive a discontinuity as a local jump. How are the two pictures related, and can we express this topologically, thhat is without talking about sizes and distances?

All we have at our disposal are open sets, so exactly what properties of open sets are te most relevant? They do form a (thin) category with inclusions as arrows, but so does any set of subsets. As it turns out open sets can be stiched togther to create coverings. Such coverings let us zoom in on finer and finer details, thus creating the bridge between the global and the local picture.

Open sets are plump-they can easily fill the bulk of space. They are also skinless, so they can't touch each other without some overlap. That makes them perfect for constructing covers.

An open cover of a set $u$ is a family of open sets ${u_i}$ such that $u$ is their union:

#figure(
  image("chap20.png", width: 50%),
  caption: [Skinless fruits, are open set]
)

$ u = union_{i in I} u_i $

Here $I$ is a set used for indexing the family.

If we have a continous function $f$ defined over $u$, thhen all its restrictions $F|{u_i}$ are also continous (this follows from the condition that an intersection of open sets is open). Thus going from global to local is easy.

The converse is more interesting. Suppose that we have a family of functions $f_i$, one per each open set $u_i$, and we want to reconstruct the global function $f$ defined over the set $u$ cover by $u_i$'s. This is only possible if the individual functions agree on overlaps.

Take two functions: $f_i$ defined over $u_i$, and $f_i$ defined over $u_j$. If the two sets overlap, each of the functions can be restricted to the overlap $u_i$


#v(4pt)


#pagebreak()

== Continuity

#v(4pt)


#figure(
  image("chap21.png", width: 50%),
)

#figure(
  image("chap22.png", width: 50%),
)

