#import "../nelson_help.typ": *

= norm <elementary_functions:2_elementary_math.norm>

Matrix and vector norms

== Syntax

- #raw("R = norm(V)");
- #raw("R = norm(V, p)");
- #raw("R = norm(V, 'fro')");
- #raw("R = norm(M)");
- #raw("R = norm(M, 1)");
- #raw("R = norm(M, 2)");
- #raw("R = norm(M, Inf)");
- #raw("R = norm(M, 'fro')");

== Input argument

/ M: a 2D matrix single or double
/ V: a vector single or double
/ p: a scalar (p-norm)

== Output argument

/ R: result of norm: scalar.

== Description

#strong[norm]; computes the norm of a vector or a matrix.

 Frobenius norm of M is equal to #strong[sqrt (sum (diag (M' \* M)))]; .


== Examples

``````matlab
M = [1 2; 3 4];
norm(M)
norm(M, 1)
norm(M, 2)
norm(M, Inf)
norm(M, 'fro')
V = [1 2 3 4];
norm(V)
norm(V, 1)
norm(V, 2)
norm(V, Inf)
norm(V, 'fro')
``````

``````matlab
x = ones(3000, 3000);
tic();R = norm(x);toc
``````


== See also

#nlink(<linear_algebra:3_eigen_singular_values.svd>)[svd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
