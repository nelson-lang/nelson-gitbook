#import "../nelson_help.typ": *

= topkrows <elementary_functions:7_indexing_dimensions.topkrows>

Top k sorted rows of a matrix.

== Syntax

- #raw("B = topkrows(A, k)");
- #raw("B = topkrows(A, k, col)");
- #raw("B = topkrows(A, k, col, direction)");
- #raw("[B, I] = topkrows(...)");

== Input argument

/ A: a matrix.
/ k: the number of rows to return.
/ col: the columns used for sorting (default all).
/ direction: #strong['descend']; (default) or #strong['ascend'];.

== Output argument

/ B: the first #strong[k]; rows of the sorted matrix.
/ I: the indices such that #strong[B \= A(I, :)];.

== Description

#strong[B \= topkrows(A, k)]; returns the first #strong[k]; rows of #strong[A]; sorted in descending order.


== Example

``````matlab
[B, I] = topkrows([3 1; 1 2; 2 9], 2)
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.sortrows>)[sortrows];, #nlink(<elementary_functions:7_indexing_dimensions.issortedrows>)[issortedrows];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
