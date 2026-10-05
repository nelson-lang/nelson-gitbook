#import "../nelson_help.typ": *

= rcond <linear_algebra:5_matrix_properties.rcond>

Inverse condition number.

== Syntax

- #raw("res = rcond(x)");

== Input argument

/ x: a numeric value: scalar or square matrix (double or single)

== Output argument

/ res: a numeric value: a scalar.

== Description

#strong[rcond(x)]; computes the reciprocal of the condition of x in the 1-norm.


== Example

``````matlab
X = rand(10, 10);
r = rcond(X);
``````


== See also

#nlink(<linear_algebra:1_linear_systems.inv>)[inv];, #nlink(<linear_algebra:5_matrix_properties.cond>)[cond];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
