#import "../nelson_help.typ": *

= wilkinson <elementary_functions:6_matrix_generation.wilkinson>

Wilkinson's eigenvalue test matrix

== Syntax

- #raw("W = wilkinson(n)");
- #raw("W = wilkinson(n, classname)");

== Input argument

/ n: scalar integer value: order.
/ classname: row character vector or scalar string: class name desired ('double' by default).

== Output argument

/ W: Wilkinson's eigenvalue test matrix.

== Description

#strong[W \= wilkinson(n)]; returns the wilkinson Matrix of order#strong[n];.


== Bibliography

https:\/\/en.wikipedia.org\/wiki\/Wilkinson\_matrix

== Example

``````matlab
W = wilkinson(4)
``````


== See also

#nlink(<constructors_functions:diag>)[diag];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
