#import "../nelson_help.typ": *

= squeeze <elementary_functions:1_array_creation_shape.squeeze>

Remove dimensions of length 1.

== Syntax

- #raw("B = squeeze(A)");

== Input argument

/ A: input array: multidimensional array

== Output argument

/ B: output array.

== Description

#strong[B \= squeeze(A)]; returns an array with the same elements as the input array A, but with dimensions of length 1 removed.


== Example

``````matlab
 A = zeros(1, 1, 3);
A(:, :, 1:3) = [1 20 3];
R = squeeze(A)
``````


== See also

#nlink(<elementary_functions:1_array_creation_shape.reshape>)[reshape];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
