#import "../nelson_help.typ": *

= condest <linear_algebra:5_matrix_properties.condest>

1-norm condition number estimate.

== Syntax

- #raw("c = condest(A)");
- #raw("c = condest(A, t)");
- #raw("[c, v] = condest(A)");

== Input argument

/ A: a square numeric matrix.
/ t: positive integer number of test vectors. Default is min(size(A, 1), 2).

== Output argument

/ c: lower-bound estimate of the 1-norm condition number.
/ v: approximate null vector associated with the estimate.

== Description

#strong[condest]; estimates #strong[norm(A, 1) \* norm(inv(A), 1)]; without explicitly forming #strong[inv(A)];.

 The implementation uses repeated solves with #strong[A]; and #strong[A'];, which is suitable for sparse matrices.

 Sparse double, sparse single, sparse double complex, and sparse single complex matrices are supported. Stored zero entries in sparse input do not contribute to the structural singularity check.


== Example

``````matlab
A = sparse([4 1 0; 2 3 1; 0 1 2]);
[c, v] = condest(A)

``````


== See also

#nlink(<linear_algebra:5_matrix_properties.cond>)[cond];, #nlink(<linear_algebra:5_matrix_properties.rcond>)[rcond];, #nlink(<elementary_functions:2_elementary_math.normest>)[normest];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
  [2.0.0], [sparse single and sparse single complex behavior documented.],
)

// Author: Allan CORNET
