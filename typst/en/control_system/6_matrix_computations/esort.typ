#import "../nelson_help.typ": *

= esort <control_system:6_matrix_computations.esort>

Sort continuous-time poles by real part.

== Syntax

- #raw("s = esort(p)");
- #raw("[s, ndx] = esort(p)");

== Input argument

/ p: p: a vector

== Output argument

/ s: sorted vector by real part.

== Description

#strong[esort]; arranges the continuous-time poles within the vector #strong[p]; based on their real parts.

 Unstable eigenvalues take precedence at the beginning of the sorted list, and the rest of the poles are organized in descending order according to their real parts.


== Example

``````matlab
p = [-2.410 + 5.573i;
-2.410 - 5.573i;
1.503;
-0.972;
-2.590];
[s, ndx] = esort(p)
  
``````


== See also

#nlink(<control_system:6_matrix_computations.dsort>)[dsort];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
