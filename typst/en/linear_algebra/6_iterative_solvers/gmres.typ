#import "../nelson_help.typ": *

= gmres <linear_algebra:6_iterative_solvers.gmres>

Generalized minimum residual method.

== Syntax

- #raw("x = gmres(A, b)");
- #raw("x = gmres(A, b, restart, tol, maxit)");
- #raw("x = gmres(A, b, restart, tol, maxit, M1, M2, x0)");
- #raw("[x, flag, relres, iter, resvec] = gmres(...)");

== Input argument

/ A: a sparse real or complex floating-point square matrix.
/ b: a real or complex floating-point right-hand side vector compatible with A.
/ restart: a positive integer restart length. Empty uses the matrix dimension.
/ tol: a finite real scalar convergence tolerance. Default is 1e-6.
/ maxit: a non-negative integer maximum outer iteration count.
/ M1, M2: optional sparse preconditioner matrices, dense preconditioner matrices, diagonal vectors, or function handles.
/ x0: optional initial guess vector.

== Output argument

/ x: computed solution vector.
/ flag: 0 when convergence is reached, 1 when maxit is reached, 4 on numerical breakdown.
/ relres: relative residual norm.
/ iter: two-element row vector \[outer inner\] with the convergence iteration.
/ resvec: residual norm history.

== Description

#strong[gmres]; solves #strong[A \* x \= b]; with the restarted generalized minimum residual method.

 The method supports sparse double, single, complex double, and complex single matrices.

 If any compatible input, preconditioner, or initial guess is complex, the iteration is performed in the matching complex class.

 Preconditioners can be supplied as diagonal vectors, sparse triangular factors, sparse or dense square matrices, or function handles returning vectors. Zero diagonal preconditioners and inconsistent dimensions are rejected before iteration.

 #strong[flag]; is 0 on convergence, 1 when the iteration limit is reached, and 4 when a numerical breakdown is detected.


== Examples

``````matlab
A = sparse([4 1 0; 2 3 1; 0 1 2]);
b = [1; 2; 3];
[x, flag, relres, iter] = gmres(A, b, [], 1e-12, 20)

``````

``````matlab
A = sparse([4 1 0; 2 3 1; 0 1 2]);
b = [1; 2; 3];
[L, U] = ilu(A);
x = gmres(A, b, [], 1e-12, 20, L, U)

``````

Solve with split matrix preconditioners.

``````matlab
A = sparse([4 1; 2 3]);
b = [5; 5];
M1 = [2 0; 0 1];
M2 = [2 0.5; 2 3];
[x, flag, relres, iter] = gmres(A, b, [], 1e-12, 10, M1, M2)
``````

``````matlab
A = sparse(single([3 + 1i 1; 0 2 - 1i]));
b = single([4 + 2i; 3 - 1i]);
D = single(diag(full(A)));
[x, flag, relres, iter, resvec] = gmres(A, b, [], 1e-6, 20, D)

``````


== See also

#nlink(<linear_algebra:6_iterative_solvers.bicgstab>)[bicgstab];, #nlink(<linear_algebra:7_preconditioners.ilu>)[ilu];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
  [2.0.0], [added single, complex single, preconditioner, initial guess, and breakdown coverage],
)

// Author: Allan CORNET
