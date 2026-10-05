#import "../nelson_help.typ": *

= flipdim <elementary_functions:7_indexing_dimensions.flipdim>

Flip array along specified dimension

== Syntax

- #raw("B = flipdim(A, dim)");

== Input argument

/ A: an array
/ dim: an positive integer value

== Output argument

/ B: flipped array.

== Description

#strong[flipdim]; return an new array of #strong[A]; flipped about the dimension #strong[dim];.

 #strong[flipdim]; is similar to #strong[flip]; and available for compatibility with old existing scripts.


== Example

``````matlab
x = eye(3, 2);
y = flipdim(x, 1)
y = flipdim(x, 2)
y = flipdim(x, 3)
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.flip>)[flip];, #nlink(<elementary_functions:7_indexing_dimensions.flipud>)[flipud];, #nlink(<elementary_functions:7_indexing_dimensions.fliplr>)[fliplr];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
