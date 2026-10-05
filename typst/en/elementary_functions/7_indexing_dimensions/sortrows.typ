#import "../nelson_help.typ": *

= sortrows <elementary_functions:7_indexing_dimensions.sortrows>

Sort rows of an array.

== Syntax

- #raw("B = sortrows(A)");
- #raw("B = sortrows(A, col)");
- #raw("[B, index] = sortrows(...)");

== Input argument

/ A: array whose rows are sorted.
/ col: column index or vector of column indices. A negative index requests descending order for that key.

== Output argument

/ B: array with rows sorted according to the selected keys.
/ index: row indices such that B \= A(index,:).

== Description

Rows with equal selected keys retain their original order, including descending cell-string keys.

 sortrows sorts rows of an array using one or more columns as keys.

 Negative column indices request descending order for the corresponding key.


== Used function(s)

sort

== Example

Sort rows by the first column ascending and the second column descending.

``````matlab
A = [2 3; 1 4; 2 1];
[B, index] = sortrows(A, [1 -2])
``````


== See also

#nlink(<data_analysis:sort>)[sort];, #nlink(<data_analysis:issorted>)[issorted];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
