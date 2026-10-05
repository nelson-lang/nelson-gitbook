#import "../nelson_help.typ": *

= pascal <elementary_functions:6_matrix_generation.pascal>

Pascal's triangle

== Syntax

- #raw("P = pascal(N)");
- #raw("P = pascal(N, 1)");
- #raw("P = pascal(N, 2)");
- #raw("P = pascal(..., ClassName)");

== Input argument

/ N: size of the Pascal's triangle.
/ kind: (optional) orientation of the triangle: - 0 (default): upright, - 1: flipped horizontally, - 2: flipped vertically.
/ ClassName: (optional) data type of the resulting matrix (e.g., 'double', 'single').

== Output argument

/ R: resulting Pascal's triangle matrix.

== Description

#strong[pascal]; generates a Pascal's triangle matrix of size N x N.


== Example

``````matlab
pascal(3)
      pascal(4, 1)
      pascal(5, 2)
``````


== See also

#nlink(<elementary_functions:6_matrix_generation.gallery>)[gallery];, #nlink(<elementary_functions:6_matrix_generation.vander>)[vander];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [initial version],
)

// Author: Allan CORNET
