# qr

QR matrix factorization.

## 📝 Syntax

- R = qr(A)
- [Q, R] = qr(A)
- [Q, R, P] = qr(A)
- [...] = qr(A, 'econ')
- [Q, R, P] = qr(A, outputForm)
- [...] = qr(A, 0)
- [C, R] = qr(S, B)
- [C, R, P] = qr(S, B)

## 📥 Input argument

- A - a full or sparse single or double matrix, real or complex.
- S - a sparse coefficient matrix.
- B - a right-hand side matrix with the same numeric class as S.
- outputForm - 'matrix' or 'vector'.

## 📤 Output argument

- Q - orthogonal or unitary factor.
- R - upper triangular factor.
- P - column permutation matrix or vector.
- C - factor equal to Q' \* B for sparse least-squares forms.

## 📄 Description

<b>qr</b> computes a QR factorization. For full matrices, <b>A = Q \* R</b>. With three outputs, a column permutation is returned and <b>A \* P = Q \* R</b>, or <b>A(:, P) = Q \* R</b> when <b>outputForm</b> is <b>'vector'</b>.

The <b>'econ'</b> option returns economy-size factors for tall matrices. The legacy option <b>0</b> is equivalent to economy-size output with permutation vectors.

For sparse <b>S</b> and right-hand side <b>B</b>, <b>qr(S, B)</b> returns <b>C = Q' \* B</b> and <b>R</b> for least-squares solves.

## Used function(s)

LAPACK dgeqrf, LAPACK sgeqrf, LAPACK zgeqrf, LAPACK cgeqrf, LAPACK dgeqp3, LAPACK sgeqp3, LAPACK zgeqp3, LAPACK cgeqp3, Eigen::SparseQR

## 💡 Examples

```matlab
A = magic(5);
[Q, R] = qr(A);
norm(A - Q * R)
```

Economy-size QR factorization.

```matlab
A = rand(10, 3);
[Q, R, p] = qr(A, 'econ', 'vector');
norm(A(:, p) - Q * R)
```

## 🔗 See also

[lu](../../linear_algebra/lu.md), [chol](../../linear_algebra/chol.md), [svd](../../linear_algebra/svd.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
