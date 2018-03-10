

# slicot_mb03rd

Reduction of a real Schur form matrix to a block-diagonal form.

## Syntax

- [A_OUT, X_OUT, NBLCKS, BLSIZE, WR, WI, INFO] = slicot_mb03rd(JOBX, SORT, PMAX, A_IN, X_IN, TOL)

## Input argument

 - JOBX - Specifies whether or not the transformations are accumulated, as follows: = 'N':  The transformations are not accumulated; = 'U':  The transformations are accumulated in X (the given matrix X is updated)
 - SORT - Specifies whether or not the diagonal blocks of the real Schur form are reordered, as follows: = 'N':  The diagonal blocks are not reordered; = 'S':  The diagonal blocks are reordered before each step of reduction, so that clustered eigenvalues appear in the same block; = 'C':  The diagonal blocks are not reordered, but the "closest-neighbour" strategy is used instead of the standard "closest to the mean" strategy. = 'B':  The diagonal blocks are reordered before each step of reduction, and the "closest-neighbour" strategy is used.
 - PMAX - An upper bound for the infinity norm of elementary submatrices of the individual transformations used for reduction
 - A_IN - the leading N-by-N part of this array must contain the matrix A to be block-diagonalized, in real Schur form.
 - X_IN - if JOBX = 'U', the leading N-by-N part of this array must contain a given matrix X.
 - TOL - The tolerance to be used in the ordering of the diagonal blocks of the real Schur form matrix.

## Output argument

 - A_OUT - the leading N-by-N part of this array contains the computed block-diagonal matrix, in real Schur canonical form. The non-diagonal blocks are set to zero.
 - X_OUT - if JOBX = 'U', the leading N-by-N part of this array contains the product of the given matrix X and the transformation matrix that reduced A to block-diagonal form. The transformation matrix is itself a product of non-orthogonal similarity transformations having elements with magnitude less than or equal to PMAX. If JOBX = 'N', this array is not referenced
 - NBLCKS - The number of diagonal blocks of the matrix A.
 - BLSIZE - The first NBLCKS elements of this array contain the orders of the resulting diagonal blocks of the matrix A.
 - WR - real parts of the eigenvalues of the matrix A.
 - WI - imaginary parts of the eigenvalues of the matrix A.
 - INFO - = 0:  successful exit;

## Description


  <p>To reduce a matrix A in real Schur form to a block-diagonal form using well-conditioned non-orthogonal similarity transformations. The condition numbers of the transformations used for reduction are roughly bounded by PMAX*PMAX, where PMAX is a given value. The transformations are optionally postmultiplied in a given matrix X. The real Schur form is optionally ordered, so that clustered eigenvalues are grouped in the same block.</p>


Used function(s)

MB03RD

Bibliography

http://www.icm.tu-bs.de/NICONET/doc/MB03RD.html

## Example

```matlab
N = 8;
PMAX = 1.D03;
TOL = 1.D-2;
JOBX = 'U';
SORT = 'S';
A_IN = [1.   -1.    1.    2.    3.    1.    2.    3.;
   1.    1.    3.    4.    2.    3.    4.    2.;
   0.    0.    1.   -1.    1.    5.    4.    1.;
   0.    0.    0.    1.   -1.    3.    1.    2.;
   0.    0.    0.    1.    1.    2.    3.   -1.;
   0.    0.    0.    0.    0.    1.    5.    1.;
   0.    0.    0.    0.    0.    0.    0.99999999   -0.99999999;
   0.    0.    0.    0.    0.    0.    0.99999999    0.99999999];
X_IN = zeros(N, N);
[A_OUT, X_OUT, NBLCKS, BLSIZE, WR, WI, INFO] = slicot_mb03rd(JOBX, SORT, PMAX, A_IN, X_IN, TOL)
```

## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

SLICOT Documentation



