

# slicot_mb05od

Matrix exponential for a real matrix, with accuracy estimate.

## Syntax

- [A_OUT, MDIG, IDIG, IWARN, INFO] = slicot_mb05od(BALANC, NDIAG, DELTA, A_IN)

## Input argument

 - BALANC - Specifies whether or not a balancing transformation (done by SLICOT Library routine MB04MD) is required, as follows: = 'N', do not use balancing; = 'S', use balancing (scaling).
 - NDIAG - The specified order of the diagonal Pade approximant. In the absence of further information NDIAG should be set to 9.  NDIAG should not exceed 15.  NDIAG greater or equal than 1.
 - DELTA - The scalar value delta of the problem.
 - A_IN - The leading N-by-N part of this array must contain the matrix A of the problem.

## Output argument

 - A_OUT - if INFO = 0, the leading N-by-N part of this array contains the solution matrix exp(A * delta).
 - MDIG - The minimal number of accurate digits in the 1-norm of exp(A*delta).
 - IDIG - The number of accurate digits in the 1-norm of exp(A*delta) at 95% confidence level.
 - IWARN - = 0:  no warning; = 1:  if MDIG = 0 and IDIG greater than 0, warning for possible inaccuracy (the exponential has been computed); = 2:  if MDIG = 0 and IDIG = 0, warning for severe inaccuracy (the exponential has been computed); = 3:  if balancing has been requested, but it failed to reduce the matrix norm and was not actually used.
 - INFO - = 0:  successful exit; = 1:  if the norm of matrix A*delta (after a possible balancing) is too large to obtain an accurate result; = 2:  if the coefficient matrix (the denominator of the Pade approximant) is exactly singular; try a different value of NDIAG; = 3:  if the solution exponential would overflow, possibly due to a too large value DELTA; the calculations stopped prematurely. This error is not likely to appear.

## Description


  <p>To compute exp(A*delta) where A is a real N-by-N matrix and delta is a scalar value. The routine also returns the minimal number of accurate digits in the 1-norm of exp(A*delta) and the number of accurate digits in the 1-norm of exp(A*delta) at 95% confidence level.</p>


Used function(s)

MB05OD

Bibliography

http://www.icm.tu-bs.de/NICONET/doc/MB05OD.html

## Example

```Nelson
N = 3;
NDIAG = 9;
DELTA = 1.0;
BALANC = 'S';
A_IN = [2.0   1.0   1.0;
   0.0   3.0   2.0;
   1.0   0.0   4.0];
[A_OUT, MDIG, IDIG, IWARN, INFO] = slicot_mb05od(BALANC, NDIAG, DELTA, A_IN)
```

## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

SLICOT Documentation



