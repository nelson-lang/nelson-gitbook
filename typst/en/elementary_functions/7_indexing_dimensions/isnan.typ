#import "../nelson_help.typ": *

= isnan <elementary_functions:7_indexing_dimensions.isnan>

Check for Not a Number entries.

== Syntax

- #raw("tf = isnan(M)");

== Input argument

/ M: a variable

== Output argument

/ tf: logical: result of 'isnan'.

== Description

#strong[isnan]; returns a logical array which is true where elements of M are "Not a Number" values.


== Example

``````matlab
isnan(pi)
isnan(NaN)
isnan(int32(3))
X = sparse([1 2 NaN 3 0 NaN 0 4]);
R = isnan(X)
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.isinf>)[isinf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
