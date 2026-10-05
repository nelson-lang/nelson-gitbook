#import "../nelson_help.typ": *

= flipud <elementary_functions:7_indexing_dimensions.flipud>

Flip order of elements up to dow

== Syntax

- #raw("B = flipud(A)");

== Input argument

/ A: an array

== Output argument

/ B: flipped array.

== Description

#strong[fliplr]; return an new array of #strong[A]; flipped up to down.


== Example

``````matlab
x = eye(3, 2);
y = flipud(x)
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.fliplr>)[fliplr];, #nlink(<elementary_functions:7_indexing_dimensions.flip>)[flip];, #nlink(<elementary_functions:7_indexing_dimensions.flipdim>)[flipdim];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
