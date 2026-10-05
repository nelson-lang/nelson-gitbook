#import "../nelson_help.typ": *

= shiftdim <elementary_functions:7_indexing_dimensions.shiftdim>

Shift array dimensions

== Syntax

- #raw("B = shiftdim(A, n)");
- #raw("B = shiftdim(A)");
- #raw("[B, m] = shiftdim(A)");

== Input argument

/ A: Input array: vector, matrix or multidimensional array.
/ n: Number of positions: integer value.

== Output argument

/ B: vector, matrix, or multidimensional array.
/ m: Number of dimensions removed: non-negative integer.

== Description

#strong[shiftdim(A, n)]; reorganizes the dimensions of an array A by n positions.

 Specifically, when n is a positive integer, it shifts the dimensions to the left, and when n is a negative integer, it shifts the dimensions to the right.


== Example

``````matlab
A = rand(2, 3, 4);
size(A)
% Shift the dimensions of array A by 2 positions to the left
B = shiftdim(A, 2)
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.permute>)[permute];, #nlink(<elementary_functions:1_array_creation_shape.reshape>)[reshape];, #nlink(<elementary_functions:2_elementary_math.round>)[squeeze];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.3.0], [initial version],
)

// Author: Allan CORNET
