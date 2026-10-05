# slicot\_mb04gd

RQ factorization with row pivoting of a matrix.

## 📝 Syntax

- [A\_OUT, JPVT\_OUT, TAU, INFO] = slicot\_mb04gd(A\_IN, JPVT\_IN)

## 📥 Input argument

- A\_IN - The m-by-n matrix A.
- JPVT\_IN - if JPVT(i) .ne. 0, the i-th row of A is permuted to the bottom of P\*A (a trailing row); if JPVT(i) = 0, the i-th row of A is a free row.

## 📤 Output argument

- A\_OUT - if m less or equal than n, the upper triangle of the subarray A(1:m,n-m+1:n) contains the m-by-m upper triangular matrix R; if m greater or equal than n, the elements on and above the (m-n)-th subdiagonal contain the m-by-n upper trapezoidal matrix R; the remaining elements, with the array TAU, represent the orthogonal matrix Q as a product of min(m,n) elementary reflectors
- JPVT\_OUT - if JPVT(i) = k, then the i-th row of P\*A was the k-th row of A.
- TAU - The scalar factors of the elementary reflectors.
- INFO - = 0: successful exit.

## 📄 Description


To compute an RQ factorization with row pivoting of a real m-by-n matrix A: P \* A = R \* Q.

## Used function(s)

MB04GD

## 📚 Bibliography

http://slicot.org/objects/software/shared/doc/MB04GD.html

## 💡 Example



```matlab
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


## 🔗 See also

[slicot_mb03od](../slicot/slicot_mb03od.md), [slicot_mb03pd](../slicot/slicot_mb03pd.md), [slicot_mb02md](../slicot/slicot_mb02md.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

SLICOT Documentation
-->
