#import "../nelson_help.typ": *

= ichol <linear_algebra:7_preconditioners.ichol>

Incomplete Cholesky factorization.

== Syntax

- #raw("L = ichol(A)");
- #raw("L = ichol(A, opts)");

== Input argument

/ A: a sparse real symmetric or complex Hermitian floating-point square matrix.
/ opts: a scalar structure with optional fields type, droptol, diagcomp, michol, and shape.

== Output argument

/ L: sparse lower or upper triangular incomplete Cholesky factor.

== Description

#strong[ichol]; computes a sparse lower triangular factor #strong[L]; suitable for use as a preconditioner.

 The input matrix should be symmetric positive definite for real data or Hermitian positive definite for complex data.

 #strong[opts.type]; can be 'nofill' or 'ict'. The default is 'nofill'.

 #strong[opts.droptol]; is a non-negative scalar used by the 'ict' mode. The default is #strong[0];. Entries whose magnitude is below the drop tolerance relative to the column scale are removed from the incomplete factor.

 #strong[opts.diagcomp]; applies a relative diagonal compensation before factorization. This can make borderline positive definite or difficult Hermitian matrices usable as preconditioners without changing the sparse input matrix.

 #strong[opts.michol]; can be 'on' or 'off'. In 'ict' mode, the modified variant moves dropped structural entries onto the diagonal so row sums are better preserved.

 #strong[opts.shape]; can be 'lower' or 'upper'. The default is 'lower'.

 Text option values such as #strong[opts.type];, #strong[opts.michol];, and #strong[opts.shape]; can be character row vectors or string scalars.

 Double, single, complex double, and complex single sparse matrices are supported. The output factor keeps the input numeric class.

 The factor can be used directly as a preconditioner for #strong[pcg];, for example #strong[pcg(A, b, tol, maxit, L, L')];.


== Examples

``````matlab
A = sparse([4 -1 0; -1 4 -1; 0 -1 3]);
L = ichol(A)
full(L * L')

``````

ICT with dropping.

``````matlab
A = sparse([4 -1 0; -1 4 -1; 0 -1 3]);
opts.type = 'ict';
opts.droptol = 0.6;
L = ichol(A, opts)

``````

``````matlab
A = sparse([4 -1 0; -1 4 -1; 0 -1 3]);
opts.shape = 'upper';
R = ichol(A, opts)

``````

``````matlab
A = sparse(single([4 1 + 1i; 1 - 1i 3]));
opts.type = 'ict';
opts.droptol = 0;
L = ichol(A, opts)
b = single([1 + 2i; 3 - 1i]);
[x, flag] = pcg(A, b, 1e-6, 20, L, L')

``````

Diagonal compensation for a difficult sparse Hermitian matrix.

``````matlab
A = sparse([1 2 + 1i; 2 - 1i 1]);
opts.diagcomp = 3;
L = ichol(A, opts);
full(L * L')

``````


== See also

#nlink(<linear_algebra:6_iterative_solvers.pcg>)[pcg];, #nlink(<linear_algebra:2_decompositions.chol>)[chol];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
  [2.0.0], [added single and complex single ict, diagcomp, shape, string scalar options, and preconditioner coverage],
)

// Author: Allan CORNET
