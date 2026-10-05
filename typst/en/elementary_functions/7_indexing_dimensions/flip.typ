#import "../nelson_help.typ": *

= flip <elementary_functions:7_indexing_dimensions.flip>

Flip order of elements

== Syntax

- #raw("B = flip(A, dim)");

== Input argument

/ A: an array
/ dim: an positive integer value

== Output argument

/ B: flipped array.

== Description

#strong[flip]; return an new array of #strong[A]; flipped about the dimension #strong[dim];.


== Example

``````matlab
x = eye(3, 2);
y = flip(x, 1)
y = flip(x, 2)
y = flip(x, 3)
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.flipud>)[flipud];, #nlink(<elementary_functions:7_indexing_dimensions.fliplr>)[fliplr];, #nlink(<elementary_functions:7_indexing_dimensions.flipdim>)[flipdim];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
