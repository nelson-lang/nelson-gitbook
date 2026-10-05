#import "../nelson_help.typ": *

= normest <elementary_functions:2_elementary_math.normest>

2-norm estimate

== Syntax

- #raw("nrm = normest(A)");
- #raw("[nrm, count] = normest(A)");
- #raw("nrm = normest(A, tolerance)");
- #raw("[nrm, count] = normest(A, tolerance)");

== Input argument

/ A: Input matrix
/ tolerance: relative error tolerance, specified as a non-negative finite scalar.

== Output argument

/ nrm: Matrix norm: scalar.
/ count: Number of power iterations: scalar.

== Description

#strong[nrm \= normest(A)]; returns an estimate of the 2-norm of the matrix#strong[A];.

 Sparse double, sparse single, sparse double complex, and sparse single complex matrices are supported. Empty tolerance uses the initial column-sum estimate, and non-empty tolerance controls the power iteration stopping criterion.


== Example

``````matlab
M = [    0    2.4495         0         0         0         0         0
    2.4495         0    3.1623         0         0         0         0
         0    3.1623         0    3.4641         0         0         0
         0         0    3.4641         0    3.4641         0         0
         0         0         0    3.4641         0    3.1623         0
         0         0         0         0    3.1623         0    2.4495
         0         0         0         0         0    2.4495         0];
[nrm, count] = normest(M)
norm(M)


``````


== See also

#nlink(<elementary_functions:2_elementary_math.norm>)[norm];, #nlink(<linear_algebra:3_eigen_singular_values.svd>)[svd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [sparse single and sparse single complex inputs supported, including stored zero sparse values; tolerance validation tightened.],
)

// Author: Allan CORNET
