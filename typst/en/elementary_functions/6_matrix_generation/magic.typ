#import "../nelson_help.typ": *

= magic <elementary_functions:6_matrix_generation.magic>

Magic square

== Syntax

- #raw("M = magic(N)");

== Input argument

/ N: Matrix order, specified as a scalar integer.

== Output argument

/ M: result of magic function.

== Description

#strong[M \= magic(N)]; computes an square matrix constructed as an arrangement of the 1:n^2 such that the row sums, column sums, and diagonal sums are all equal to the same value.


== Example

``````matlab
M = magic(3)
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
