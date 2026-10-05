#import "nelson_help.typ": *

= setxor <data_analysis:setxor>

Set exclusive OR of two arrays.

== Syntax

- #raw("C = setxor(A, B)");
- #raw("[C, ia, ib] = setxor(A, B)");

== Input argument

/ A, B: Input arrays.

== Output argument

/ C: Sorted values that are in only one of the input arrays.
/ ia, ib: Index vectors into #strong[A]; and #strong[B];.

== Description

#strong[setxor(A, B)]; returns values that occur in #strong[A]; or #strong[B];, but not both.


== Example

``````matlab
A = [5 7 1];
B = [3 1 1];
C = setxor(A, B)
``````


== See also

#nlink(<data_analysis:union>)[union];, #nlink(<data_analysis:intersect>)[intersect];, #nlink(<data_analysis:setdiff>)[setdiff];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
