# Linear algebra


    
The Linear Algebra module provides matrix and vector computation functions in Nelson.

    
It includes functions for matrix factorization, decomposition, inversion, and analysis, as well as operations on eigenvalues, singular values, and subspaces.

    
The module includes numerical methods for evaluating matrix properties, condition numbers, and transformations used in linear algebra problems.

  

## Linear Systems


    
Functions for solving, analyzing, and measuring linear systems and vector or matrix quantities.

  

### Functions

- [cumtrapz](1_linear_systems/cumtrapz.md) - Cumulative trapezoidal numerical integration.
- [del2](1_linear_systems/del2.md) - Discrete Laplacian.
- [det](1_linear_systems/det.md) - Matrix determinant.
- [diff](1_linear_systems/diff.md) - Differences and approximate derivatives.
- [gradient](1_linear_systems/gradient.md) - Numerical gradient.
- [inv](1_linear_systems/inv.md) - Matrix inverse.
- [kron](1_linear_systems/kron.md) - Kronecker tensor product.
- [null](1_linear_systems/null.md) - Null space of a matrix.
- [orth](1_linear_systems/orth.md) - Range space of a matrix.
- [rank](1_linear_systems/rank.md) - Rank of matrix.
- [rref](1_linear_systems/rref.md) - Gauss-Jordan elimination.
- [subspace](1_linear_systems/subspace.md) - Angle between two subspaces.
- [tensorprod](1_linear_systems/tensorprod.md) - Tensor products between two arrays.
- [trace](1_linear_systems/trace.md) - Matrix trace.
- [trapz](1_linear_systems/trapz.md) - Trapezoidal numerical integration.
- [vecnorm](1_linear_systems/vecnorm.md) - Vector-wise norm.

## Decompositions


    
Matrix factorization and plane rotation functions.

  

### Functions

- [chol](2_decompositions/chol.md) - Cholesky factorization.
- [hess](2_decompositions/hess.md) - Hessenberg form of a square matrix.
- [lu](2_decompositions/lu.md) - LU matrix factorization.
- [planerot](2_decompositions/planerot.md) - Givens plane rotation.
- [qr](2_decompositions/qr.md) - QR matrix factorization.

## Eigenvalues and Singular Values


    
Functions for eigenvalue, singular-value, and Schur computations.

  

### Functions

- [balance](3_eigen_singular_values/balance.md) - Diagonal scaling to improve eigenvalue accuracy.
- [eig](3_eigen_singular_values/eig.md) - Eigenvalues and eigenvectors.
- [eigs](3_eigen_singular_values/eigs.md) - Selected eigenvalues and eigenvectors of a sparse matrix.
- [rsf2csf](3_eigen_singular_values/rsf2csf.md) - Convert real Schur form to complex Schur form.
- [schur](3_eigen_singular_values/schur.md) - Schur decomposition.
- [svd](3_eigen_singular_values/svd.md) - Singular Value Decomposition.
- [svds](3_eigen_singular_values/svds.md) - Selected singular values and singular vectors of a sparse matrix.

## Matrix Functions


    
Functions that evaluate elementary functions on matrices.

  

### Functions

- [expm](4_matrix_functions/expm.md) - Computes the matrix exponential of a square matrix.
- [logm](4_matrix_functions/logm.md) - Computes the matrix logarithm of a square matrix.
- [pagectranspose](4_matrix_functions/pagectranspose.md) - Page-wise complex conjugate transpose.
- [pageinv](4_matrix_functions/pageinv.md) - Page-wise matrix inverse.
- [pagemtimes](4_matrix_functions/pagemtimes.md) - Page-wise matrix multiplication.
- [pagenorm](4_matrix_functions/pagenorm.md) - Page-wise matrix or vector norm.
- [pagetranspose](4_matrix_functions/pagetranspose.md) - Page-wise transpose.
- [sqrtm](4_matrix_functions/sqrtm.md) - Computes the matrix square root of a square matrix.

## Matrix Properties


    
Functions for condition estimates, structure checks, and matrix properties.

  

### Functions

- [bandwidth](5_matrix_properties/bandwidth.md) - Lower and upper matrix bandwidth.
- [cond](5_matrix_properties/cond.md) - Condition number for inversion.
- [condeig](5_matrix_properties/condeig.md) - Condition number with respect to eigenvalues.
- [condest](5_matrix_properties/condest.md) - 1-norm condition number estimate.
- [isbanded](5_matrix_properties/isbanded.md) - Determine if matrix is within specific bandwidth.
- [ishermitian](5_matrix_properties/ishermitian.md) - Computes if matrix is hermitian or skew-hermitian.
- [issymmetric](5_matrix_properties/issymmetric.md) - Computes if matrix is symmetric.
- [rcond](5_matrix_properties/rcond.md) - Inverse condition number.

## Iterative Solvers


    
Iterative solvers for linear systems.

  

### Functions

- [bicg](6_iterative_solvers/bicg.md) - BiConjugate gradients method for sparse linear systems.
- [bicgstab](6_iterative_solvers/bicgstab.md) - BiConjugate gradients stabilized method.
- [cgs](6_iterative_solvers/cgs.md) - Conjugate gradients squared method for sparse linear systems.
- [gmres](6_iterative_solvers/gmres.md) - Generalized minimum residual method.
- [lsmr](6_iterative_solvers/lsmr.md) - LSMR method for sparse linear equations and least squares.
- [lsqr](6_iterative_solvers/lsqr.md) - LSQR method for sparse linear equations and least squares.
- [minres](6_iterative_solvers/minres.md) - Minimum residual method for symmetric or Hermitian sparse systems.
- [pcg](6_iterative_solvers/pcg.md) - Preconditioned conjugate gradients method.
- [qmr](6_iterative_solvers/qmr.md) - Quasi-minimal residual method for sparse linear systems.

## Preconditioners


    
Incomplete factorization functions used as preconditioners.

  

### Functions

- [ichol](7_preconditioners/ichol.md) - Incomplete Cholesky factorization.
- [ilu](7_preconditioners/ilu.md) - Incomplete LU factorization.

