#import "../nelson_help.typ": *

= issortedrows <elementary_functions:7_indexing_dimensions.issortedrows>

Determine whether matrix rows are sorted.

== Syntax

- #raw("tf = issortedrows(A)");
- #raw("tf = issortedrows(A, col)");
- #raw("tf = issortedrows(A, ..., direction)");

== Input argument

/ A: a matrix.
/ col: the columns used for the comparison.
/ direction: #strong['ascend']; (default) or #strong['descend'];.

== Output argument

/ tf: a logical: #strong[true]; when the rows of #strong[A]; are sorted.

== Description

#strong[tf \= issortedrows(A)]; returns #strong[true]; when the rows of #strong[A]; are sorted in ascending order.

 Pass #strong[col]; and #strong[direction]; to match the sorting used by #strong[sortrows];.


== Example

``````matlab
issortedrows([1 2; 3 4])
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.sortrows>)[sortrows];, #nlink(<elementary_functions:7_indexing_dimensions.topkrows>)[topkrows];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
