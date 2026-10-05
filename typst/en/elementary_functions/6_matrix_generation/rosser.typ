#import "../nelson_help.typ": *

= rosser <elementary_functions:6_matrix_generation.rosser>

Classic symmetric eigenvalue test problem.

== Syntax

- #raw("R = rosser()");
- #raw("R = rosser(classname)");

== Input argument

/ classname: row character vector or scalar string: class name desired ('double' by default).

== Output argument

/ R: Rosser Matrix.

== Description

#strong[R \= rosser()]; returns the Rosser Matrix.


== Bibliography

https:\/\/archive.org\/details\/jresv47n4p291

== Example

``````matlab
R = rosser()
``````


== See also

#nlink(<elementary_functions:6_matrix_generation.toeplitz>)[toeplitz];, #nlink(<linear_algebra:3_eigen_singular_values.eig>)[eig];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
