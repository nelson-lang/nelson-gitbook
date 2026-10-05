#import "nelson_help.typ": *

= setdiff <data_analysis:setdiff>

Set difference of two arrays.

== Syntax

- #raw("C = setdiff(A, B)");
- #raw("[C, ia] = setdiff(A, B)");

== Input argument

/ A, B: Input arrays.

== Output argument

/ C: Sorted values that are in #strong[A]; and not in #strong[B];.
/ ia: Index vector into #strong[A];.

== Description

#strong[setdiff(A, B)]; returns the sorted values that occur in #strong[A]; but not in #strong[B];.


== Example

``````matlab
A = [5 7 1];
B = [3 1 1];
C = setdiff(A, B)
``````


== See also

#nlink(<data_analysis:union>)[union];, #nlink(<data_analysis:intersect>)[intersect];, #nlink(<data_analysis:setxor>)[setxor];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
