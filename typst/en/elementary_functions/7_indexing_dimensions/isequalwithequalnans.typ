#import "../nelson_help.typ": *

= isequalwithequalnans <elementary_functions:7_indexing_dimensions.isequalwithequalnans>

Compare arrays while treating NaN values as equal.

== Syntax

- #raw("tf = isequalwithequalnans(A, B)");
- #raw("tf = isequalwithequalnans(A1, A2, ...)");

== Input argument

/ A: Input array.

== Output argument

/ tf: Logical scalar.

== Description

#strong[isequalwithequalnans]; is equivalent to #strong[isequaln];.


== Example

``````matlab
tf = isequalwithequalnans([NaN 1], [NaN 1])
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.isequaln>)[isequaln];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
