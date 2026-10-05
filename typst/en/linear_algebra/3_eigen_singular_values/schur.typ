#import "../nelson_help.typ": *

= schur <linear_algebra:3_eigen_singular_values.schur>

Schur decomposition.

== Syntax

- #raw("T = schur(M)");
- #raw("T = schur(M, 'real')");
- #raw("T = schur(M, 'complex')");
- #raw("[U, T] = schur(M)");
- #raw("[U, T] = schur(M, 'complex')");
- #raw("[U, T] = schur(M, 'real')");

== Input argument

/ M: a numeric value: scalar or square matrix (double or single)

== Output argument

/ U: unitary matrix
/ T: upper triangular matrix

== Description

#strong[schur(M)]; computes the schur decomposition.

 With the flag 'complex', the complex schur form is upper triangular with the eigenvalues of M on the diagonal.

 If A is real, the real schur form is returned.

 With the flag 'real', the real schur form has the real eigenvalues on the diagonal and the complex eigenvalues in 2-by-2 blocks on the diagonal.


== Example

``````matlab
X = [1 2; 3 4];
[U, T] = schur(X)
[U, T] = schur(X * i, 'complex')
[U, T] = schur(X * i, 'real')
``````


== See also

#nlink(<linear_algebra:3_eigen_singular_values.eig>)[eig];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
