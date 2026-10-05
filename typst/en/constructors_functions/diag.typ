#import "nelson_help.typ": *

= diag <constructors_functions:diag>

Get diagonal elements of matrix or create diagonal matrix.

== Syntax

- #raw("D = diag(V)");
- #raw("X = diag(A)");
- #raw("D = diag(V, k)");
- #raw("X = diag(A, k)");

== Input argument

/ V: Diagonal elements
/ A: Input matrix

== Output argument

/ D: vector
/ X: matrix

== Description

#strong[diag]; returns diagonal elements of matrix or create diagonal matrix.


== Example

``````matlab
diag(eye(3))
diag(diag(eye(3)))
``````


== See also

#nlink(<constructors_functions:ones>)[ones];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
