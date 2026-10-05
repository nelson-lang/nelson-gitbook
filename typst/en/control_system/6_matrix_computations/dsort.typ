#import "../nelson_help.typ": *

= dsort <control_system:6_matrix_computations.dsort>

Sort discrete-time poles by magnitude.

== Syntax

- #raw("s = dsort(p)");
- #raw("[s, ndx] = dsort(p)");

== Input argument

/ p: p: a vector

== Output argument

/ s: sorted vector by magnitude.

== Description

#strong[dsort]; arranges the discrete-time poles within the vector #strong[p]; in a descending order based on their magnitude, with unstable poles taking precedence at the beginning of the sorted list.


== Example

``````matlab
p = [-2.410 + 5.573i;
-2.410 - 5.573i;
1.503;
-0.972;
-2.590];
[s, ndx] = dsort(p)
  
``````


== See also

#nlink(<control_system:6_matrix_computations.esort>)[esort];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
