#import "nelson_help.typ": *

= union <data_analysis:union>

Set union of two arrays.

== Syntax

- #raw("C = union(A, B)");
- #raw("[C, ia, ib] = union(A, B)");

== Input argument

/ A, B: Input arrays.

== Output argument

/ C: Sorted values that are in #strong[A]; or #strong[B];.
/ ia, ib: Index vectors into #strong[A]; and #strong[B];.

== Description

#strong[union(A, B)]; returns the sorted set of values that occur in either input array.


== Example

``````matlab
A = [5 7 1];
B = [3 1 1];
C = union(A, B)
``````


== See also

#nlink(<data_analysis:intersect>)[intersect];, #nlink(<data_analysis:setdiff>)[setdiff];, #nlink(<data_analysis:setxor>)[setxor];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
