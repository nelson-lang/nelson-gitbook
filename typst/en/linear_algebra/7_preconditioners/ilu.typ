#import "../nelson_help.typ": *

= ilu <linear_algebra:7_preconditioners.ilu>

Incomplete LU factorization.

== Syntax

- #raw("LU = ilu(A)");
- #raw("LU = ilu(A, opts)");
- #raw("[L, U] = ilu(A)");
- #raw("[L, U] = ilu(A, opts)");
- #raw("[L, U, P] = ilu(A, opts)");

== Input argument

/ A: a sparse real or complex floating-point square matrix.
/ opts: a scalar structure with optional fields type, droptol, fillfactor, udiag, and thresh.

== Output argument

/ LU: single sparse factor containing the strict lower part of #strong[L]; and the upper part of #strong[U];.
/ L: sparse lower triangular incomplete LU factor.
/ U: sparse upper triangular incomplete LU factor.
/ P: sparse row permutation matrix. When returned, #strong[P \* A]; is approximated by #strong[L \* U];.

== Description

#strong[ilu]; computes sparse incomplete LU factors suitable for use as preconditioners.

 #strong[opts.type]; can be 'nofill' or 'ilutp'. The default is 'nofill', which preserves the input sparsity pattern and performs no threshold dropping.

 In 'ilutp' mode, #strong[opts.droptol]; drops small entries, #strong[opts.fillfactor]; limits retained row fill, #strong[opts.udiag]; allows zero pivots, and #strong[opts.thresh]; is a pivot threshold between 0 and 1. The default values are #strong[droptol \= 1e-4];, #strong[fillfactor \= 10];, #strong[udiag \= false];, and #strong[thresh \= 1];.

 The 'ilutp' mode uses sparse row pivoting. With three outputs, #strong[P]; contains the row permutation and #strong[P \* A]; is approximated by #strong[L \* U];. With one output, the packed sparse factor stores the strict lower part of #strong[L]; and the upper part of #strong[U];.

 Text option values such as #strong[opts.type]; can be character row vectors or string scalars.

 Double, single, complex double, and complex single sparse matrices are supported. #strong[L]; and #strong[U]; keep the input numeric class; #strong[P]; is a sparse permutation matrix.

 The factors can be used directly as preconditioners for Krylov solvers such as #strong[gmres];, #strong[bicgstab];, #strong[bicg];, #strong[cgs];, and #strong[qmr];.


== Used function(s)

Nelson sparse routines

== Examples

``````matlab
A = sparse([4 1 0; 2 3 1; 0 1 2]);
LU = ilu(A)
full(LU)

``````

``````matlab
A = sparse([4 1 0; 2 3 1; 0 1 2]);
[L, U] = ilu(A)
full(L * U)

``````

``````matlab
A = sparse([4 1 0; 2 3 1; 0 1 2]);
b = [1; 2; 3];
[L, U] = ilu(A);
x = bicgstab(A, b, 1e-12, 20, L, U)

``````

ILUTP with row pivoting.

``````matlab
A = sparse(single([0 1 + 2i; 3 - 1i 4]));
opts.type = 'ilutp';
opts.droptol = 0;
[L, U, P] = ilu(A, opts);
full(P * A - L * U)

``````

Control pivoting and retained fill in the thresholded mode.

``````matlab
A = sparse([0.2 1; 1 1]);
opts.type = 'ilutp';
opts.droptol = 0;
opts.fillfactor = 10;
opts.thresh = 0.25;
[L, U, P] = ilu(A, opts);
full(P * A - L * U)

``````


== See also

#nlink(<linear_algebra:6_iterative_solvers.bicgstab>)[bicgstab];, #nlink(<linear_algebra:2_decompositions.lu>)[lu];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
  [2.0.0], [added single and complex single nofill, ilutp, pivoting, string scalar options, and preconditioner coverage],
)

// Author: Allan CORNET
