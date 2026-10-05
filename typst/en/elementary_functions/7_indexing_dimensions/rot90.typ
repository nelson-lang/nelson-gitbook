#import "../nelson_help.typ": *

= rot90 <elementary_functions:7_indexing_dimensions.rot90>

Rotate array 90 degrees.

== Syntax

- #raw("B = rot90(A)");
- #raw("B = rot90(A, k)");

== Input argument

/ A: an array: numeric, logical, character, string, cell, structure, or sparse.
/ k: an integer scalar value: Rotation constant.

== Output argument

/ B: rotated array.

== Description

#strong[B \= rot90(A, k)]; rotates array #strong[A]; counter clockwise by #strong[k \* 90]; degrees, where #strong[k]; is an integer scalar value. Negative values rotate clockwise.

 The result preserves the input class and sparse storage when applicable.

 Consider#strong[flip]; function to flip arrays in any dimension.


== Example

``````matlab
x = eye(3, 2);
y = rot90(x, 0)
y = rot90(x, 1)
y = rot90(x, 2)
y = rot90(x, 3)
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.flipud>)[flipud];, #nlink(<elementary_functions:7_indexing_dimensions.fliplr>)[fliplr];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
