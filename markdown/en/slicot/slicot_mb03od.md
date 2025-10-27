# slicot_mb03od

Matrix rank determination by incremental condition estimation.

## 📝 Syntax

- [A_OUT, JPVT_OUT, TAU, RANK, SVAL, INFO] = slicot_mb03od(JOBQR, A_IN, JPVT_IN, RCOND, SVLMAX)

## 📥 Input argument

- JOBQR - = 'Q': Perform a QR factorization with column pivoting; = 'N': Do not perform the QR factorization (but assume that it has been done outside).
- A_IN - with JOBQR = 'Q', the leading M by N part of this array must contain the given matrix A.
- JPVT_IN - with JOBQR = 'Q', if JPVT(i) != 0, the i-th column of A is an initial column, otherwise it is a free column. Before the QR factorization of A, all initial columns are permuted to the leading positions; only the remaining free columns are moved as a result of column pivoting during the factorization. For rank determination it is preferable that all columns be free.
- RCOND - RCOND is used to determine the effective rank of A, which is defined as the order of the largest leading triangular submatrix R11 in the QR factorization with pivoting of A, whose estimated condition number is less than 1/RCOND.
- SVLMAX - If A is a submatrix of another matrix B, and the rank decision should be related to that matrix, then SVLMAX should be an estimate of the largest singular value of B

## 📤 Output argument

- A_OUT - with JOBQR = 'Q', the leading min(M,N) by N upper triangular part of A contains the triangular factor R, and the elements below the diagonal, with the array TAU, represent the orthogonal matrix Q as a product of min(M,N) elementary reflectors.
- JPVT_OUT - with JOBQR = 'Q', if JPVT(i) = k, then the i-th column of A\*P was the k-th column of A.
- TAU - with JOBQR = 'Q', the leading min(M,N) elements of TAU contain the scalar factors of the elementary reflectors.
- RANK - The effective (estimated) rank of A, i.e. the order of the submatrix R11.
- SVAL - The estimates of some of the singular values of the triangular factor R
- INFO - = 0: successful exit

## 📄 Description

To compute (optionally) a rank-revealing QR factorization of a real general M-by-N matrix A, which may be rank-deficient, and estimate its effective rank using incremental condition estimation.

## Used function(s)

MB03OD

## 📚 Bibliography

http://slicot.org/objects/software/shared/doc/MB03OD.html

## 💡 Example

```matlab
M = 6;
N = 5;
JOBQR = 'Q';
RCOND = 5.D-16;
SVLMAX = 0.0;
JPVT_IN = zeros(1, N);
A_IN = [1.    2.    6.    3.    5.;
  -2.   -1.   -1.    0.   -2.;
   5.    5.    1.    5.    1.;
  -2.   -1.   -1.    0.   -2.;
   4.    8.    4.   20.    4.;
  -2.   -1.   -1.    0.   -2.];

[A_OUT, JPVT_OUT, TAU, RANK, SVAL, INFO] = slicot_mb03od(JOBQR, A_IN, JPVT_IN, RCOND, SVLMAX)
```

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

SLICOT Documentation
