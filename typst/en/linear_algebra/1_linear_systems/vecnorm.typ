#import "../nelson_help.typ": *

= vecnorm <linear_algebra:1_linear_systems.vecnorm>

Vector-wise norm.

== Syntax

- #raw("N = vecnorm(A)");
- #raw("N = vecnorm(A, p)");
- #raw("N = vecnorm(A, p, dim)");

== Input argument

/ A: vector, matrix or multidimensional array
/ p: Norm type: 2 (default), a positive scalar, or Inf.
/ dim: positive integer scalar

== Output argument

/ n: norm: scalar or vector

== Description

#strong[vecnorm]; computes the 2-norm or Euclidean norm of the input array#strong[A];

 If #strong[A]; is a vector,#strong[vecnorm]; returns the norm of the vector.

 If #strong[A]; is a matrix,#strong[vecnorm]; returns the norm of each column.

 For multidimensional arrays,#strong[vecnorm returns]; the norm along the first array dimension whose size does not equal 1.

 To compute the generalized vector p-norm, you can use the syntax#strong[N \= vecnorm(A, p)];.

 To operate along a specific dimension dim, the function can be called as#strong[N \= vecnorm(A, p, dim)];.

 In this case, the size of the specified dimension reduces to 1, while the sizes of all other dimensions remain unchanged.


== Example

``````matlab
A = [1, 2, 3; 4, 5, 6; 7, 8, 9];
n = vecnorm(A)
n = vecnorm(A, 2, 2)
n = vecnorm(A, 1)

``````


== See also

#nlink(<elementary_functions:2_elementary_math.norm>)[norm];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.3.0], [initial version],
)

// Author: Allan CORNET
