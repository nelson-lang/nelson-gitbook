#import "nelson_help.typ": *

= intersect <data_analysis:intersect>

Set intersection of two arrays.

== Syntax

- #raw("C = intersect(A, B)");
- #raw("[C, ia, ib] = intersect(A, B)");

== Input argument

/ A, B: Input arrays.

== Output argument

/ C: Sorted values common to #strong[A]; and #strong[B];.
/ ia, ib: Index vectors into #strong[A]; and #strong[B];.

== Description

#strong[intersect(A, B)]; returns the sorted values that occur in both input arrays.


== Example

``````matlab
A = [5 7 1];
B = [3 1 1];
C = intersect(A, B)
``````


== See also

#nlink(<data_analysis:union>)[union];, #nlink(<data_analysis:setdiff>)[setdiff];, #nlink(<data_analysis:setxor>)[setxor];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
