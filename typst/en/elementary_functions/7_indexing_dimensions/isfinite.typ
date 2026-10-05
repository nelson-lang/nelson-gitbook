#import "../nelson_help.typ": *

= isfinite <elementary_functions:7_indexing_dimensions.isfinite>

Check for finite entries.

== Syntax

- #raw("tf = isfinite(M)");

== Input argument

/ M: a variable

== Output argument

/ tf: logical: result of 'isfinite'.

== Description

#strong[isfinite]; returns a logical array which is true where elements of M are finite values.


== Example

``````matlab
isfinite(pi)
isfinite(Inf)
isfinite(-Inf)
isfinite(int32(3))
X = sparse([1 2 NaN 3 0 Inf 0 4]);
R = isfinite(X)
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.isnan>)[isnan];, #nlink(<elementary_functions:7_indexing_dimensions.isinf>)[isinf];, #nlink(<elementary_functions:7_indexing_dimensions.allfinite>)[allfinite];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
