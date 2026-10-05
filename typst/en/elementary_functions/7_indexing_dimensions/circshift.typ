#import "../nelson_help.typ": *

= circshift <elementary_functions:7_indexing_dimensions.circshift>

Circular shift

== Syntax

- #raw("R = circshift(M, N)");
- #raw("R = circshift(M, N, DIM)");

== Input argument

/ M: a variable
/ N: shift
/ DIM: dimension to operate

== Output argument

/ R: result of 'circshift'.

== Description

#strong[circshift]; computes circular shift.


== Example

``````matlab
x = [10, 20, 30; 40, 50, 60; 70, 80, 90];
circshift (x, 1
circshift (x, -2))
``````


== See also

#nlink(<elementary_functions:1_array_creation_shape.repmat>)[repmat];, #nlink(<elementary_functions:1_array_creation_shape.reshape>)[reshape];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
