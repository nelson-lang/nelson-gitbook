# eig

Eigenvalues and eigenvectors.

## 📝 Syntax

- e = eig(A)
- [V, D] = eig(A)
- e = eig(A, balanceOption)
- [V, D] = eig(A, balanceOption)
- e = eig(A, B)
- [V, D] = eig(A, B)
- e = eig(A, B, balanceOption)
- [V, D] = eig(A, B, balanceOption)

## 📥 Input argument

- A - a numeric value: scalar or square matrix (double or single, complex or real)
- B - a numeric value: scalar or square matrix (double or single, complex or real)
- balanceOption - a string: 'nobalance' (disable preliminary balancing) or 'balance' (default).

## 📤 Output argument

- e - real or complex number (double or single), Eigenvalues (returned as column vector).
- V - real or complex number (double or single), square right eigenvectors.
- D - real or complex number (double or single), Eigenvalues (returned as diagonal matrix).

## 📄 Description

<b>eig(A)</b> returns the eigenvalues and eigenvectors.

For a square matrix <b>A</b>, eigenvalues

$$\lambda$$

and eigenvectors

$$\mathbf{v}$$

satisfy:

$$A\mathbf{v} = \lambda\mathbf{v}$$

The characteristic equation is:

$$\det(A - \lambda I) = 0$$

<b>eig(A, B)</b> returns the generalized eigenvalues and eigenvectors where:

$$A\mathbf{v} = \lambda B\mathbf{v}$$

## 📚 Bibliography

[1] Anderson, E., Z. Bai, C. Bischof, S. Blackford, J. Demmel, J. Dongarra, J. Du Croz, A. Greenbaum, S. Hammarling, A. McKenney, and D. Sorensen, LAPACK User's Guide (http://www.netlib.org/lapack/lug/ lapack_lug.html), Third Edition, SIAM, Philadelphia, 1999.

## 💡 Examples

```matlab
A = [10 -20 40; -50 20 0; 10 0 30]
e = eig(A)
[V, D] = eig(A)

```

```matlab
A = [1/sqrt(2) 0; 0 1];
B = [0 1; -1/sqrt(2) 0];
[V, D] = eig(A, B)

```

## 🔗 See also

[svd](../linear_algebra/svd.md), [schur](../linear_algebra/schur.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
