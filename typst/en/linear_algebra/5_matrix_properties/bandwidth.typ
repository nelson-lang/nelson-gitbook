#import "../nelson_help.typ": *

= bandwidth <linear_algebra:5_matrix_properties.bandwidth>

Lower and upper matrix bandwidth.

== Syntax

- #raw("[lower, upper] = bandwidth(A)");
- #raw("R = bandwidth(A, type)");

== Input argument

/ A: Input matrix
/ type: 'upper' or 'lower'

== Output argument

/ lower, upper: lower bandwidth: lower, and upper bandwidth: upper of matrix A.
/ R: lower or upper bandwidth.

== Description

#strong[\[lower, upper\] \= bandwidth(A)]; returns #strong[lower]; and#strong[upper]; bandwidths of matrix #strong[A];.


== Example

``````matlab
M = [10 -20 40; -50 20 0; 10 0 30]
[lower, upper] = bandwidth(M)

``````


== See also

#nlink(<linear_algebra:5_matrix_properties.isbanded>)[isbanded];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
