= Presheaves and Topology.

#v(8pt)

_Category theory_ lets us change the focus from individual objects to relationships between them. Since _topology_ is defined using _open sets_, we'd start by concentrating on relations between _sets_.

One such obvious relation is _inclusion_. It imposes a categorical structure on the subsets of a given set $X$. We draw _arrows_ between two sets whenever one is a _subset_ of the other. 

These arrows satisfy the axioms of a category: 
- There is an identity arrow for every object (every set is its own subset) 
- Arrows compose (inclusion is transitive). 

Not every pair of object is connected by an arrow some sets are disjoint, others overlap only partially. We may include the whole space as the _terminal object_ (with arrows coming from every subset) and the _empty set_ $0$ as the _initial object_ (with arrows going to every set). As categories go, this is a _thin category_, because there is at most one arrow between any two objects.

#figure(
  image("chap20.png", width: 50%),
)

Every topological space gives thus rise to a thin category that abstracts the structure of ots open sets. But the real reason for defining a topology is to be able to talk about continous functions. These are fnctions between topological spaces such that thhe inverse image of every open set if open. Here, again, category theory tells us not to think about the details of how these functions are defined, but rather what we can do with them. And not just one function at a time, but the whole bucn at once.

So let's talk about sets of functions. We have our topological sapce $X$, and to each open subset $u$ we will assign a set of continous function on it. These could be functions to real or complex numbers, or whatever-we don't care. All we care about is that they form a set.

Since open sets in $X$ form a (thin) category, we are talking about assigning to each object (open set) $u$ its own set (of continous functions) $P_u$. Notice however that these sets of functions are not independent of each other. If one open set is a subset of anothher, it inherits all the funcions defined over the larger set. These are the same functions, the inly difference being that their arguments are restricted to a smaller subset. For instance, given two sets $v \in u$ and a function $\f \u -> \R$, there us a function $$ such that $$ on $v.$

#figure(
  image("chap21.png", width: 50%),
)


Let's restate these statements in thhe categorical language. We already have a category $X$ of open sets with inclusion. The sets of functions on these open sets are objects in the category _Set_. We have defined a mapping $P$ between these two categories that assigns sets of functions to open sets.

Notice that we are dealing with two different categories whose objects are sets. One has inclusions as arrows, the other has functions as arrows. (To confuse matters even more, the objects in the second category represent sets of functions.)

To define a functor between categories, we also need a mapping of arrows to accompany the mapping of objects. An arrow $v -> u$ means that $v \in u$. Corresponding to it, we have a function $P_u -> P_v$ that assigns to each $f \in P_u$ its restriction $f_v in P_v$


#figure(
  image("chap22.png", width: 50%),
)

Together, these mappings define a functor P: X^{op} -> S. The _op_ notation means thhat the directions of arrows are reversed: the function is _contravariant_.

A functor must preserve the structure of a category, that is identity and composition. In our case this follows from the fact that an identity u \in u maps to a trivial do-nothing restriction, and thhat restriction compose: 


There is a special name for contravariant functors from any category C to _Set_. They are called _presheaves_, exactly because they were first introduced in the context of _topology_ as precursors of _sheaves_. Consequently, the simpler functor C -> _Set_ had to be confusingly called _co-presheaves_.

Presheaves on C form their own category, often denoted by C^{\^}, with natural transformations as arrows.
