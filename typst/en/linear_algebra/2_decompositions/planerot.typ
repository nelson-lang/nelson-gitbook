#import "../nelson_help.typ": *

= planerot <linear_algebra:2_decompositions.planerot>

Givens plane rotation.

== Syntax

- #raw("[G, Y] = planerot(X)");

== Input argument

/ X: two-element column vector.

== Output argument

/ G: 2 by 2 orthogonal matrix.
/ Y: Y \= G \* X with Y(2) \= 0.

== Description

#strong[\[G, Y\] \= planerot(X)]; computes the Givens rotation matrix for the two-element column vector#strong[X];.


== Example

``````matlab
X = [4; 5];
[G, X] = planerot(X)

``````


== See also

#nlink(<elementary_functions:2_elementary_math.norm>)[norm];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
