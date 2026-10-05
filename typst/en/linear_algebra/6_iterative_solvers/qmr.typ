#import "../nelson_help.typ": *

= qmr <linear_algebra:6_iterative_solvers.qmr>

Quasi-minimal residual method for sparse linear systems.

== Syntax

- #raw("x = qmr(A, b)");
- #raw("x = qmr(A, b, tol, maxit)");
- #raw("x = qmr(A, b, tol, maxit, M1, M2, x0)");
- #raw("[x, flag, relres, iter, resvec] = qmr(...)");

== Input argument

/ A: sparse square coefficient matrix.
/ b: right-hand side vector.
/ tol: relative residual tolerance. Default is 1e-6.
/ maxit: maximum number of iterations.
/ M1, M2: optional preconditioners: sparse or full square matrices, diagonal vectors, or function handles that apply the preconditioner or its transpose to one vector.
/ x0: initial guess.

== Output argument

/ x: computed solution.
/ flag: 0 if convergence was reached, 1 if maxit was reached, 4 on numerical breakdown.
/ relres: relative residual norm.
/ iter: number of iterations performed.
/ resvec: residual norm history.

== Description

#strong[qmr]; solves #strong[A\*x \= b]; using the quasi-minimal residual method.

 The method is intended for sparse nonsymmetric systems. It supports sparse and full matrix preconditioners, diagonal vector preconditioners, and function handle preconditioners.

 When #strong[M1]; or #strong[M2]; is a matrix, the solver applies it through an internal linear solve. A vector preconditioner is interpreted as the diagonal of a square preconditioner. A function handle preconditioner must accept a vector and a transpose flag, and return a vector with the same length.

 Sparse single and sparse single complex matrices are supported. If #strong[M1];, #strong[M2];, or #strong[x0]; is complex, the computation uses the matching complex solver path.


== Examples

``````matlab
A = sparse([4 1 0; 2 3 1; 0 1 2]);
b = [1; 2; 3];
[x, flag, relres, iter, resvec] = qmr(A, b, 1e-12, 20)

``````

Solve with a matrix preconditioner.

``````matlab
A = sparse([4 1 0; 2 3 1; 0 1 2]);
b = [1; 2; 3];
M = diag(diag(full(A)));
[x, flag] = qmr(A, b, 1e-12, 20, M)
``````

Solve with split matrix preconditioners.

``````matlab
A = sparse([4 1; 2 3]);
b = [5; 5];
M1 = [2 0; 0 1];
M2 = [2 0.5; 2 3];
[x, flag, relres, iter] = qmr(A, b, 1e-12, 10, M1, M2)
``````

Solve a sparse single complex system.

``````matlab
A = sparse(single([4 1i; 2 3]));
b = single([1; 2]);
[x, flag] = qmr(A, b, 1e-6, 20)
``````


== See also

#nlink(<linear_algebra:6_iterative_solvers.bicg>)[bicg];, #nlink(<linear_algebra:6_iterative_solvers.bicgstab>)[bicgstab];, #nlink(<linear_algebra:6_iterative_solvers.gmres>)[gmres];, #nlink(<linear_algebra:7_preconditioners.ilu>)[ilu];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
  [2.0.0], [sparse single and sparse single complex inputs, matrix preconditioners, and function handle preconditioners supported.],
)

// Author: Allan CORNET
