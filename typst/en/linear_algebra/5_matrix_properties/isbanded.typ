#import "../nelson_help.typ": *

= isbanded <linear_algebra:5_matrix_properties.isbanded>

Determine if matrix is within specific bandwidth.

== Syntax

- #raw("tf = isbanded(A, lower, upper)");

== Input argument

/ A: Input matrix
/ lower, upper: lower bandwidth: lower, and upper bandwidth: upper, of matrix A.

== Output argument

/ tf: logical

== Description

#strong[tf \= isbanded(A, lower, upper)]; returns#strong[true]; if matrix #strong[A]; is within the specified lower bandwidth,#strong[lower];, and upper bandwidth, #strong[upper];.


== Example

``````matlab
M = [1 0 0 0 0; 2 1 0 0 0; 3 2 1 0 0]
TF = isbanded(M, 2, 0)
TF = isbanded(M, 2, 1)

``````


== See also

#nlink(<linear_algebra:5_matrix_properties.bandwidth>)[bandwidth];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
