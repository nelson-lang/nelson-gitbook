#import "../nelson_help.typ": *

= svds <linear_algebra:3_eigen_singular_values.svds>

Selected singular values and singular vectors of a sparse matrix.

== Syntax

- #raw("s = svds(A)");
- #raw("s = svds(A, k)");
- #raw("s = svds(A, k, which)");
- #raw("[U, S, V] = svds(...)");

== Input argument

/ A: a sparse double, single, complex double, or complex single matrix.
/ k: a positive integer smaller than the smaller matrix dimension. Default is 6.
/ which: a string: 'largest' or 'lm' for largest singular values, 'smallest' or 'sm' for smallest singular values.

== Output argument

/ s: selected singular values returned as a dense column vector in decreasing order.
/ U: dense matrix whose columns are the selected left singular vectors.
/ S: dense diagonal matrix containing the selected singular values.
/ V: dense matrix whose columns are the selected right singular vectors.

== Description

#strong[svds]; computes selected singular values and, optionally, the corresponding singular vectors of a sparse floating-point matrix.

 For a matrix #strong[A];, the returned factors satisfy:

 #latex("A V = U S"); Tall matrices use the smaller normal problem when possible, and wide matrices use the corresponding transposed normal problem.

 When the optional ARPACK backend is not available, #strong[svds]; uses a dense fallback for small sparse matrices. Larger sparse matrices still require ARPACK to avoid excessive memory use.

 Sparse single and sparse single-complex inputs are accepted. The selected singular-value problem is computed through the double-precision sparse backend, and dense outputs are converted back to single or single-complex when applicable.


== Examples

``````matlab
A = sparse([1 0 0; 0 2 0; 3 0 0; 0 4 0; 0 0 5]);
s = svds(A, 2)
[U, S, V] = svds(A, 2, 'smallest')

``````

``````matlab
A = sparse([1 + 1i 0 0; 0 2i 0; 3 0 0; 0 4 0; 0 0 5i]);
s = svds(A, 2)

``````

``````matlab
A = sparse(single([1 + 1i 0 0; 0 2i 0; 3 0 0; 0 4 0; 0 0 5i]));
s = svds(A, 2)

``````


== See also

#nlink(<linear_algebra:3_eigen_singular_values.svd>)[svd];, #nlink(<linear_algebra:3_eigen_singular_values.eigs>)[eigs];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [dense fallback added for small sparse matrices when ARPACK is unavailable.],
  [2.0.0], [sparse single and sparse single-complex inputs supported through the sparse double-precision backend.],
)

// Author: Allan CORNET
