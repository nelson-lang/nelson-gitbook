#import "../nelson_help.typ": *

= fliplr <elementary_functions:7_indexing_dimensions.fliplr>

Flip order of elements left to right

== Syntax

- #raw("B = fliplr(A)");

== Input argument

/ A: an array

== Output argument

/ B: flipped array.

== Description

#strong[fliplr]; return an new array of #strong[A]; flipped left to right.


== Example

``````matlab
x = eye(3, 2);
y = fliplr(x)
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.flipud>)[flipud];, #nlink(<elementary_functions:7_indexing_dimensions.flip>)[flip];, #nlink(<elementary_functions:7_indexing_dimensions.flipdim>)[flipdim];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
