#import "../nelson_help.typ": *

= minres <linear_algebra:6_iterative_solvers.minres>

Minimum residual method for symmetric or Hermitian sparse systems.

== Syntax

- #raw("x = minres(A, b)");
- #raw("x = minres(A, b, tol, maxit)");
- #raw("x = minres(A, b, tol, maxit, M1, M2, x0)");
- #raw("[x, flag, relres, iter, resvec] = minres(...)");

== Input argument

/ A: a sparse real or complex floating-point square symmetric or Hermitian matrix.
/ b: a real or complex floating-point right-hand side vector compatible with A.
/ tol: a finite real scalar convergence tolerance. Default is 1e-6.
/ maxit: a non-negative integer maximum iteration count.
/ M1, M2: optional preconditioners: sparse or full square matrices, diagonal vectors, sparse triangular factors, or function handles returning vectors. They should preserve the symmetric or Hermitian effective problem.
/ x0: optional initial guess vector.

== Output argument

/ x: computed solution vector.
/ flag: 0 when convergence is reached, 1 when maxit is reached, 4 on numerical breakdown.
/ relres: relative residual norm.
/ iter: iteration count.
/ resvec: residual norm history.

== Description

#strong[minres]; solves #strong[A \* x \= b]; with a minimum residual Krylov method for sparse symmetric or Hermitian matrices.

 The method is useful for symmetric or Hermitian indefinite systems.

 The method supports sparse double, single, complex double, and complex single matrices.

 Preconditioners can be diagonal vectors, sparse triangular factors, sparse or dense square matrices, or function handles returning vectors. They should preserve the symmetric or Hermitian effective problem.

 If any compatible input, preconditioner, or initial guess is complex, the iteration is performed in the matching complex class.


== Examples

``````matlab
A = sparse([0 1; 1 0]);
b = [1; 2];
[x, flag, relres, iter] = minres(A, b, 1e-12, 20)

``````

Solve with a dense diagonal preconditioner.

``````matlab
A = sparse([4 -1 0; -1 4 -1; 0 -1 3]);
b = [15; 10; 10];
M = diag(diag(full(A)));
[x, flag] = minres(A, b, 1e-12, 20, M)
``````

Solve with split matrix preconditioners.

``````matlab
A = sparse([4 -1 0; -1 4 -1; 0 -1 3]);
b = [15; 10; 10];
M1 = diag([2 2 1]);
M2 = diag([2 2 3]);
[x, flag, relres, iter] = minres(A, b, 1e-12, 20, M1, M2)
``````


== See also

#nlink(<linear_algebra:6_iterative_solvers.pcg>)[pcg];, #nlink(<linear_algebra:6_iterative_solvers.gmres>)[gmres];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
  [2.0.0], [added single, complex single, preconditioner, initial guess, and breakdown coverage],
)

// Author: Allan CORNET
