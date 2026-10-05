#import "../nelson_help.typ": *

= iscolumn <elementary_functions:7_indexing_dimensions.iscolumn>

Determine whether input is column vector.

== Syntax

- #raw("tf = iscolumn(V)");

== Input argument

/ V: a variable

== Output argument

/ tf: logical: result of 'iscolumn'.

== Description

#strong[iscolumn(V)]; returns logical#strong[true]; if size(V) returns \[n, 1\] with a nonnegative integer value n, and logical#strong[false]; otherwise.


== Example

``````matlab
iscolumn([1:4])
iscolumn([1:4]')
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.isrow>)[isrow];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
