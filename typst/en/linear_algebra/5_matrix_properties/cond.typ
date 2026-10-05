#import "../nelson_help.typ": *

= cond <linear_algebra:5_matrix_properties.cond>

Condition number for inversion.

== Syntax

- #raw("c = rcond(A, p)");

== Input argument

/ A: a numeric value: square or rectangular (double or single)
/ p: norm type: Inf, 'fro', 1, 2 (default)

== Output argument

/ c: a numeric value: a scalar.

== Description

#strong[c \= cond(A)]; returns the 2-norm condition number for inversion.

 #strong[c \= cond(A, p)]; returns the p-norm condition number, where p can be 1, 2, Inf, or 'fro'.


== Example

``````matlab
X = rand(10, 10);
r = cond(X)
``````


== See also

#nlink(<linear_algebra:5_matrix_properties.rcond>)[rcond];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
