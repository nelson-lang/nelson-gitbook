# lu

LU matrix factorization.

## Syntax

- [L, U] = lu(A)
- [L, U, P] = lu(A)

## Input argument

- A - a matrix: square, finite single or double.

## Output argument

- L - Lower triangular factor: matrix (same type A)
- U - Upper triangular factor: matrix (same type A).
- P - Row permutation: matrix (same type A).

## Description

<p>
            [L, U] = lu(A) function decomposes a full matrix A into two matrices: an upper triangular matrix U and a permuted lower triangular matrix L.</p>

<p>This factorization satisfies the equation A = L * U.</p>

<p>
                [L, U, P] = lu(A) function, when used with three output arguments, provides a permutation matrix P in addition to the unit lower triangular matrix L and the upper triangular matrix U.</p>

<p>This factorization is expressed as A = P'LU, where L is unit lower triangular, and U is upper triangular.</p>

## Used function(s)

LAPACKE_dgetrf, LAPACKE_sgetrf, LAPACKE_zgetrf, LAPACKE_cgetrf

## Examples

```matlab
A = magic(5)
[L, U] = lu(A)
L * U

```

```matlab
A = magic(5)
[L, U, P] = lu(A);
subplot(1, 2, 1)
spy(L)
title(_('L factor'))
subplot(1, 2, 2)
spy(U)
title(_('U factor'))

```

<img src="lu.svg" align="middle"/>

## See also

[cond](../linear_algebra/cond.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.1.0   | initial version |

## Author

Allan CORNET
