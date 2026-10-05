#import "../nelson_help.typ": *

= allfinite <elementary_functions:7_indexing_dimensions.allfinite>

Check if all array elements are finite.

== Syntax

- #raw("tf = allfinite(M)");

== Input argument

/ M: a variable

== Output argument

/ tf: logical: result of 'allfinite'.

== Description

#strong[allfinite]; returns a logical scalar which is true where elements of M are all finite values.


== Example

``````matlab
X = sparse([1 2 NaN 3 0 Inf 0 4]);
R = allfinite(X)
R2 = isfinite(X)
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.isfinite>)[isfinite];, #nlink(<elementary_functions:7_indexing_dimensions.isnan>)[isnan];, #nlink(<operators:all>)[all];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.6.0], [initial version],
)

// Author: Allan CORNET
