#import "../nelson_help.typ": *

= gram <control_system:6_matrix_computations.gram>

Controllability and observability Gramians.

== Syntax

- #raw("wc = gram(sys, 'o')");
- #raw("wc = gram(sys, 'c')");

== Input argument

/ sys: state-space model.

== Output argument

/ wc: observability or controllability Gramian.

== Example

``````matlab
sys = ss([-.1 -1;1 0], [1;0], [0 1], 0);
wc = gram(sys, 'c')
wc = gram(sys, 'o')

``````


== See also

#nlink(<control_system:6_matrix_computations.lyap>)[lyap];, #nlink(<control_system:6_matrix_computations.dlyap>)[dlyap];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
