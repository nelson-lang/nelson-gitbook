#import "nelson_help.typ": *

= cross <special_functions:cross>

Cross product.

== Syntax

- #raw("R = cross(A, B)");
- #raw("R = cross(A, B, dim)");

== Input argument

/ A, B: numeric arrays.
/ dim: positive integer scalar: Dimension to operate along.

== Output argument

/ R: Vector cross Product.

== Description

#strong[R \= cross(A, B)]; returns the cross product of #strong[A]; and#strong[B];.


== Bibliography

https:\/\/en.wikipedia.org\/wiki\/Cross\_product

== Example

``````matlab
A = [1 2 3;4 5 6;7 8 9];
B = [9 8 7;6 5 4;3 2 1];
R = cross(A, B)
R = cross(A, B, 2)
``````


== See also

#nlink(<special_functions:dot>)[dot];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
