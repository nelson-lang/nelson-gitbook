#import "nelson_help.typ": *

= Linear algebra

The Linear Algebra module provides matrix and vector computation functions in Nelson.

 It includes functions for matrix factorization, decomposition, inversion, and analysis, as well as operations on eigenvalues, singular values, and subspaces.

 The module includes numerical methods for evaluating matrix properties, condition numbers, and transformations used in linear algebra problems.

== Linear Systems

Functions for solving, analyzing, and measuring linear systems and vector or matrix quantities.

=== Functions

- #nlink(<linear_algebra:1_linear_systems.cumtrapz>)[cumtrapz]: Cumulative trapezoidal numerical integration.
- #nlink(<linear_algebra:1_linear_systems.del2>)[del2]: Discrete Laplacian.
- #nlink(<linear_algebra:1_linear_systems.det>)[det]: Matrix determinant.
- #nlink(<linear_algebra:1_linear_systems.diff>)[diff]: Differences and approximate derivatives.
- #nlink(<linear_algebra:1_linear_systems.gradient>)[gradient]: Numerical gradient.
- #nlink(<linear_algebra:1_linear_systems.inv>)[inv]: Matrix inverse.
- #nlink(<linear_algebra:1_linear_systems.kron>)[kron]: Kronecker tensor product.
- #nlink(<linear_algebra:1_linear_systems.null>)[null]: Null space of a matrix.
- #nlink(<linear_algebra:1_linear_systems.orth>)[orth]: Range space of a matrix.
- #nlink(<linear_algebra:1_linear_systems.rank>)[rank]: Rank of matrix.
- #nlink(<linear_algebra:1_linear_systems.rref>)[rref]: Gauss-Jordan elimination.
- #nlink(<linear_algebra:1_linear_systems.subspace>)[subspace]: Angle between two subspaces.
- #nlink(<linear_algebra:1_linear_systems.tensorprod>)[tensorprod]: Tensor products between two arrays.
- #nlink(<linear_algebra:1_linear_systems.trace>)[trace]: Matrix trace.
- #nlink(<linear_algebra:1_linear_systems.trapz>)[trapz]: Trapezoidal numerical integration.
- #nlink(<linear_algebra:1_linear_systems.vecnorm>)[vecnorm]: Vector-wise norm.

== Decompositions

Matrix factorization and plane rotation functions.

=== Functions

- #nlink(<linear_algebra:2_decompositions.chol>)[chol]: Cholesky factorization.
- #nlink(<linear_algebra:2_decompositions.hess>)[hess]: Hessenberg form of a square matrix.
- #nlink(<linear_algebra:2_decompositions.lu>)[lu]: LU matrix factorization.
- #nlink(<linear_algebra:2_decompositions.planerot>)[planerot]: Givens plane rotation.
- #nlink(<linear_algebra:2_decompositions.qr>)[qr]: QR matrix factorization.

== Eigenvalues and Singular Values

Functions for eigenvalue, singular-value, and Schur computations.

=== Functions

- #nlink(<linear_algebra:3_eigen_singular_values.balance>)[balance]: Diagonal scaling to improve eigenvalue accuracy.
- #nlink(<linear_algebra:3_eigen_singular_values.eig>)[eig]: Eigenvalues and eigenvectors.
- #nlink(<linear_algebra:3_eigen_singular_values.eigs>)[eigs]: Selected eigenvalues and eigenvectors of a sparse matrix.
- #nlink(<linear_algebra:3_eigen_singular_values.rsf2csf>)[rsf2csf]: Convert real Schur form to complex Schur form.
- #nlink(<linear_algebra:3_eigen_singular_values.schur>)[schur]: Schur decomposition.
- #nlink(<linear_algebra:3_eigen_singular_values.svd>)[svd]: Singular Value Decomposition.
- #nlink(<linear_algebra:3_eigen_singular_values.svds>)[svds]: Selected singular values and singular vectors of a sparse matrix.

== Matrix Functions

Functions that evaluate elementary functions on matrices.

=== Functions

- #nlink(<linear_algebra:4_matrix_functions.expm>)[expm]: Computes the matrix exponential of a square matrix.
- #nlink(<linear_algebra:4_matrix_functions.logm>)[logm]: Computes the matrix logarithm of a square matrix.
- #nlink(<linear_algebra:4_matrix_functions.pagectranspose>)[pagectranspose]: Page-wise complex conjugate transpose.
- #nlink(<linear_algebra:4_matrix_functions.pageinv>)[pageinv]: Page-wise matrix inverse.
- #nlink(<linear_algebra:4_matrix_functions.pagemtimes>)[pagemtimes]: Page-wise matrix multiplication.
- #nlink(<linear_algebra:4_matrix_functions.pagenorm>)[pagenorm]: Page-wise matrix or vector norm.
- #nlink(<linear_algebra:4_matrix_functions.pagetranspose>)[pagetranspose]: Page-wise transpose.
- #nlink(<linear_algebra:4_matrix_functions.sqrtm>)[sqrtm]: Computes the matrix square root of a square matrix.

== Matrix Properties

Functions for condition estimates, structure checks, and matrix properties.

=== Functions

- #nlink(<linear_algebra:5_matrix_properties.bandwidth>)[bandwidth]: Lower and upper matrix bandwidth.
- #nlink(<linear_algebra:5_matrix_properties.cond>)[cond]: Condition number for inversion.
- #nlink(<linear_algebra:5_matrix_properties.condeig>)[condeig]: Condition number with respect to eigenvalues.
- #nlink(<linear_algebra:5_matrix_properties.condest>)[condest]: 1-norm condition number estimate.
- #nlink(<linear_algebra:5_matrix_properties.isbanded>)[isbanded]: Determine if matrix is within specific bandwidth.
- #nlink(<linear_algebra:5_matrix_properties.ishermitian>)[ishermitian]: Computes if matrix is hermitian or skew-hermitian.
- #nlink(<linear_algebra:5_matrix_properties.issymmetric>)[issymmetric]: Computes if matrix is symmetric.
- #nlink(<linear_algebra:5_matrix_properties.rcond>)[rcond]: Inverse condition number.

== Iterative Solvers

Iterative solvers for linear systems.

=== Functions

- #nlink(<linear_algebra:6_iterative_solvers.bicg>)[bicg]: BiConjugate gradients method for sparse linear systems.
- #nlink(<linear_algebra:6_iterative_solvers.bicgstab>)[bicgstab]: BiConjugate gradients stabilized method.
- #nlink(<linear_algebra:6_iterative_solvers.cgs>)[cgs]: Conjugate gradients squared method for sparse linear systems.
- #nlink(<linear_algebra:6_iterative_solvers.gmres>)[gmres]: Generalized minimum residual method.
- #nlink(<linear_algebra:6_iterative_solvers.lsmr>)[lsmr]: LSMR method for sparse linear equations and least squares.
- #nlink(<linear_algebra:6_iterative_solvers.lsqr>)[lsqr]: LSQR method for sparse linear equations and least squares.
- #nlink(<linear_algebra:6_iterative_solvers.minres>)[minres]: Minimum residual method for symmetric or Hermitian sparse systems.
- #nlink(<linear_algebra:6_iterative_solvers.pcg>)[pcg]: Preconditioned conjugate gradients method.
- #nlink(<linear_algebra:6_iterative_solvers.qmr>)[qmr]: Quasi-minimal residual method for sparse linear systems.

== Preconditioners

Incomplete factorization functions used as preconditioners.

=== Functions

- #nlink(<linear_algebra:7_preconditioners.ichol>)[ichol]: Incomplete Cholesky factorization.
- #nlink(<linear_algebra:7_preconditioners.ilu>)[ilu]: Incomplete LU factorization.


#nested[
#pagebreak(weak: true)
#include "1_linear_systems/cumtrapz.typ"
#pagebreak(weak: true)
#include "1_linear_systems/del2.typ"
#pagebreak(weak: true)
#include "1_linear_systems/det.typ"
#pagebreak(weak: true)
#include "1_linear_systems/diff.typ"
#pagebreak(weak: true)
#include "1_linear_systems/gradient.typ"
#pagebreak(weak: true)
#include "1_linear_systems/inv.typ"
#pagebreak(weak: true)
#include "1_linear_systems/kron.typ"
#pagebreak(weak: true)
#include "1_linear_systems/null.typ"
#pagebreak(weak: true)
#include "1_linear_systems/orth.typ"
#pagebreak(weak: true)
#include "1_linear_systems/rank.typ"
#pagebreak(weak: true)
#include "1_linear_systems/rref.typ"
#pagebreak(weak: true)
#include "1_linear_systems/subspace.typ"
#pagebreak(weak: true)
#include "1_linear_systems/tensorprod.typ"
#pagebreak(weak: true)
#include "1_linear_systems/trace.typ"
#pagebreak(weak: true)
#include "1_linear_systems/trapz.typ"
#pagebreak(weak: true)
#include "1_linear_systems/vecnorm.typ"
#pagebreak(weak: true)
#include "2_decompositions/chol.typ"
#pagebreak(weak: true)
#include "2_decompositions/hess.typ"
#pagebreak(weak: true)
#include "2_decompositions/lu.typ"
#pagebreak(weak: true)
#include "2_decompositions/planerot.typ"
#pagebreak(weak: true)
#include "2_decompositions/qr.typ"
#pagebreak(weak: true)
#include "3_eigen_singular_values/balance.typ"
#pagebreak(weak: true)
#include "3_eigen_singular_values/eig.typ"
#pagebreak(weak: true)
#include "3_eigen_singular_values/eigs.typ"
#pagebreak(weak: true)
#include "3_eigen_singular_values/rsf2csf.typ"
#pagebreak(weak: true)
#include "3_eigen_singular_values/schur.typ"
#pagebreak(weak: true)
#include "3_eigen_singular_values/svd.typ"
#pagebreak(weak: true)
#include "3_eigen_singular_values/svds.typ"
#pagebreak(weak: true)
#include "4_matrix_functions/expm.typ"
#pagebreak(weak: true)
#include "4_matrix_functions/logm.typ"
#pagebreak(weak: true)
#include "4_matrix_functions/pagectranspose.typ"
#pagebreak(weak: true)
#include "4_matrix_functions/pageinv.typ"
#pagebreak(weak: true)
#include "4_matrix_functions/pagemtimes.typ"
#pagebreak(weak: true)
#include "4_matrix_functions/pagenorm.typ"
#pagebreak(weak: true)
#include "4_matrix_functions/pagetranspose.typ"
#pagebreak(weak: true)
#include "4_matrix_functions/sqrtm.typ"
#pagebreak(weak: true)
#include "5_matrix_properties/bandwidth.typ"
#pagebreak(weak: true)
#include "5_matrix_properties/cond.typ"
#pagebreak(weak: true)
#include "5_matrix_properties/condeig.typ"
#pagebreak(weak: true)
#include "5_matrix_properties/condest.typ"
#pagebreak(weak: true)
#include "5_matrix_properties/isbanded.typ"
#pagebreak(weak: true)
#include "5_matrix_properties/ishermitian.typ"
#pagebreak(weak: true)
#include "5_matrix_properties/issymmetric.typ"
#pagebreak(weak: true)
#include "5_matrix_properties/rcond.typ"
#pagebreak(weak: true)
#include "6_iterative_solvers/bicg.typ"
#pagebreak(weak: true)
#include "6_iterative_solvers/bicgstab.typ"
#pagebreak(weak: true)
#include "6_iterative_solvers/cgs.typ"
#pagebreak(weak: true)
#include "6_iterative_solvers/gmres.typ"
#pagebreak(weak: true)
#include "6_iterative_solvers/lsmr.typ"
#pagebreak(weak: true)
#include "6_iterative_solvers/lsqr.typ"
#pagebreak(weak: true)
#include "6_iterative_solvers/minres.typ"
#pagebreak(weak: true)
#include "6_iterative_solvers/pcg.typ"
#pagebreak(weak: true)
#include "6_iterative_solvers/qmr.typ"
#pagebreak(weak: true)
#include "7_preconditioners/ichol.typ"
#pagebreak(weak: true)
#include "7_preconditioners/ilu.typ"
]
