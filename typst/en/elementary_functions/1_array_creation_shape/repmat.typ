#import "../nelson_help.typ": *

= repmat <elementary_functions:1_array_creation_shape.repmat>

Replicate and tile an array.

== Syntax

- #raw("R = repmat(A, m)");
- #raw("R = repmat(A, m, n)");
- #raw("R = repmat(A, m, n, p …)");
- #raw("R = repmat(A, [m n])");
- #raw("R = repmat(A, [m n p …])");

== Input argument

/ A: an array.
/ m, n, p …: a value: integer

== Output argument

/ R: result array form by tiling.

== Description

#strong[repmat]; replicates and tiles an array.

 If any resulting dimension is zero, the output is empty. The other dimensions and the input class are preserved. For example, repmat(zeros(0, 3), 2, 4) has size \[0, 12\].


== Examples

``````matlab
repmat(1:5, 2)
``````

``````matlab
repmat(1:5, [2 3])
``````

``````matlab
repmat(1:5, [2 3 4])
``````


== See also

#nlink(<elementary_functions:1_array_creation_shape.reshape>)[reshape];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
