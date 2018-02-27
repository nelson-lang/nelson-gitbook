



slicot_mb04gd


slicot_mb04gd

RQ factorization with row pivoting of a matrix.

## Syntax

- [A_OUT, JPVT_OUT, TAU, INFO] = slicot_mb04gd(A_IN, JPVT_IN)

## Input argument

 - A_IN - The m-by-n matrix A.
 - JPVT_IN - if JPVT(i) .ne. 0, the i-th row of A is permuted to the bottom of P*A (a trailing row); if JPVT(i) = 0, the i-th row of A is a free row.

## Output argument

 - A_OUT - if m less or equal than n, the upper triangle of the subarray A(1:m,n-m+1:n) contains the m-by-m upper triangular matrix R; if m greater or equal than n, the elements on and above the (m-n)-th subdiagonal contain the m-by-n upper trapezoidal matrix R; the remaining elements, with the array TAU, represent the orthogonal matrix Q as a product of min(m,n) elementary reflectors
 - JPVT_OUT - if JPVT(i) = k, then the i-th row of P*A was the k-th row of A.
 - TAU - The scalar factors of the elementary reflectors.
 - INFO - = 0:  successful exit.

## Description


  <p> To compute an RQ factorization with row pivoting of a real m-by-n matrix A: P * A = R * Q.</p>


Used function(s)

MB04GD

Bibliography

http://www.icm.tu-bs.de/NICONET/doc/MB04GD.html

## Example

```Nelson
M = 6;
N = 5;
A_IN = [1.    2.    6.    3.    5.;
  -2.   -1.   -1.    0.   -2.;
   5.    5.    1.    5.    1.;
  -2.   -1.   -1.    0.   -2.;
   4.    8.    4.   20.    4.;
  -2.   -1.   -1.    0.   -2.];
JPVT_IN = zeros(1, M);
[A_OUT, JPVT_OUT, TAU, INFO] = slicot_mb04gd(A_IN, JPVT_IN)
```

## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

SLICOT Documentation



