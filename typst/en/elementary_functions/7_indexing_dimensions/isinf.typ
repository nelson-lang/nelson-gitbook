#import "../nelson_help.typ": *

= isinf <elementary_functions:7_indexing_dimensions.isinf>

Check for Infinity entries.

== Syntax

- #raw("tf = isinf(M)");

== Input argument

/ M: a variable

== Output argument

/ tf: logical: result of 'isinf'.

== Description

#strong[isinf]; returns a logical array which is true where elements of M are Infinity values.


== Example

``````matlab
isnan(pi)
isinf(Inf)
isinf(-Inf)
isinf(int32(3))
X = sparse([1 2 NaN 3 0 Inf 0 4]);
R = isinf(X)
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.isnan>)[isnan];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
