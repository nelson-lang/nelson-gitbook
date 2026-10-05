#import "../nelson_help.typ": *

= isrow <elementary_functions:7_indexing_dimensions.isrow>

Determine whether input is row vector.

== Syntax

- #raw("tf = isrow(V)");

== Input argument

/ V: a variable

== Output argument

/ tf: logical: result of 'isrow'.

== Description

#strong[isrow(V)]; returns logical#strong[true]; if size(V) returns \[1, n\] with a nonnegative integer value n, and logical#strong[false]; otherwise.


== Example

``````matlab
isrow([1:4])
isrow([1:4]')
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.iscolumn>)[iscolumn];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
