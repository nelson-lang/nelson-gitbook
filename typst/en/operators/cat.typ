#import "nelson_help.typ": *

= cat <operators:cat>

Concatenate arrays.

== Syntax

- #raw("R = cat(dim, A, B)");
- #raw("R = cat(dim, A1, A2, ..., An)");

== Input argument

/ dim: Dimension to operate along: positive integer scalar.
/ A: a variable: first input.
/ B: a variable: second input.
/ A1, A2, ..., An: List of inputs to concatenate

== Output argument

/ R: concatenated array

== Description

#strong[R \= cat(dim, M1, M2, ... , MN)]; returns the concatenation of M1, M2, ... , MN along the dimension#strong[dim];.


== Example

``````matlab
A = eye(2, 2);
B = ones(2, 2);
C = cat(2, A, B)
``````


== See also

#nlink(<operators:vertcat>)[vertcat];, #nlink(<operators:horzcat>)[horzcat];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
