#import "nelson_help.typ": *

= spdiags <sparse:spdiags>

Extract or create sparse matrix diagonals.

== Syntax

- #raw("B = spdiags(A)");
- #raw("[B, d] = spdiags(A)");
- #raw("S = spdiags(B, d, A)");
- #raw("S = spdiags(B, d, m, n)");

== Input argument

/ A: a sparse or full matrix.
/ B: a full matrix whose columns contain diagonal values.
/ d: diagonal offsets.
/ m, n: output sparse matrix dimensions.

== Output argument

/ B: dense matrix containing extracted diagonals.
/ d: diagonal offsets.
/ S: a sparse matrix.

== Description

#strong[spdiags]; extracts stored diagonals from a matrix, replaces selected diagonals, or builds a sparse matrix from diagonal columns.


== Example

``````matlab
A = sparse([1 0 2; 0 3 0; 4 0 5]);
[B, d] = spdiags(A)
R = spdiags([10; 20; 30], 0, A)
S = spdiags(B, d, 3, 3)
``````


== See also

#nlink(<constructors_functions:diag>)[diag];, #nlink(<sparse:sparse>)[sparse];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
