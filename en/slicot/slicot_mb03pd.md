

# slicot_mb03pd

Matrix rank determination by incremental condition estimation (row pivoting).

## Syntax

- [A_OUT, JPVT_OUT, TAU, RANK, SVAL, INFO] = slicot_mb03pd(JOBRQ, A_IN, JPVT_IN, RCOND, SVLMAX)

## Input argument

 - JOBRQ - = 'R':  Perform an RQ factorization with row pivoting; = 'N':  Do not perform the RQ factorization (but assume that it has been done outside).
 - A_IN - with JOBRQ = 'R', the leading M-by-N part of this array must contain the given matrix A.
 - JPVT_IN - with JOBRQ = 'R', if JPVT(i) != 0, the i-th row of A is a final row, otherwise it is a free row. Before the RQ factorization of A, all final rows are permuted to the trailing positions; only the remaining free rows are moved as a result of row pivoting during the factorization.  For rank determination it is preferable that all rows be free.
 - RCOND - RCOND is used to determine the effective rank of A, which is defined as the order of the largest trailing triangular submatrix R22 in the RQ factorization with pivoting of A, whose estimated condition number is less than 1/RCOND.
 - SVLMAX - If A is a submatrix of another matrix B, and the rank decision should be related to that matrix, then SVLMAX should be an estimate of the largest singular value of B (for instance, the Frobenius norm of B).  If this is not the case, the input value SVLMAX = 0 should work.

## Output argument

 - A_OUT - with JOBRQ = 'R', if M less or equal than N, the upper triangle of the subarray A(1:M,N-M+1:N) contains the M-by-M upper triangular matrix R;
 - JPVT_OUT - with JOBRQ = 'R', if JPVT(i) = k, then the i-th row of P*A was the k-th row of A.
 - TAU - with JOBRQ = 'R', the leading min(M,N) elements of TAU contain the scalar factors of the elementary reflectors.
 - RANK - The effective (estimated) rank of A, i.e. the order of the submatrix R22.
 - SVAL - The estimates of some of the singular values of the triangular factor R.
 - INFO - = 0:  successful exit

## Description


  <p>To compute (optionally) a rank-revealing RQ factorization of a real general M-by-N matrix A, which may be rank-deficient, and estimate its effective rank using incremental condition estimation.</p>


Used function(s)

MB03PD

Bibliography

http://www.icm.tu-bs.de/NICONET/doc/MB03PD.html

## Example

```matlab
M = 6;
N = 5;
JOBRQ = 'R';
RCOND = 5.D-16;
SVLMAX = 0.0;
JPVT_IN = zeros(1, M);
A_IN = [   1.    2.    6.    3.    5.;
  -2.   -1.   -1.    0.   -2.;
   5.    5.    1.    5.    1.;
  -2.   -1.   -1.    0.   -2.;
   4.    8.    4.   20.    4.;
  -2.   -1.   -1.    0.   -2.];
[A_OUT, JPVT_OUT, TAU, RANK, SVAL, INFO] = slicot_mb03pd(JOBRQ, A_IN, JPVT_IN, RCOND, SVLMAX)
```

## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

SLICOT Documentation



