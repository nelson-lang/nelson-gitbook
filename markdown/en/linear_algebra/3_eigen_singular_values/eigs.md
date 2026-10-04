# eigs

Selected eigenvalues and eigenvectors of a sparse matrix.

## 📝 Syntax

- d = eigs(A)
- d = eigs(A, k)
- d = eigs(A, k, which)
- d = eigs(A, k, sigma)
- [V, D] = eigs(...)

## 📥 Input argument

- A - a sparse double, single, complex double, or complex single square matrix.
- k - a positive integer smaller than the matrix dimension. Default is 6.
- which - a string selecting eigenvalues: 'lm', 'sm', 'lr', 'sr', 'li', 'si', 'la', or 'sa'.
- sigma - a finite scalar. Eigenvalues nearest to sigma are computed by shift-invert mode. Complex sigma values are supported for complex sparse matrices.

## 📤 Output argument

- d - selected eigenvalues returned as a dense column vector.
- V - dense matrix whose columns are the selected eigenvectors.
- D - dense diagonal matrix containing the selected eigenvalues.

## 📄 Description

<b>eigs</b> computes a subset of eigenvalues and, optionally, the corresponding eigenvectors of a sparse floating-point square matrix.

For a matrix <b>A</b>, the returned eigenpairs satisfy:
$$A\mathbf{v} = \lambda\mathbf{v}$$

<b>eigs(A, k, which)</b> selects eigenvalues by magnitude, real part, or imaginary part. The values 'la' and 'sa' are accepted as aliases for largest and smallest algebraic values on symmetric real matrices.

<b>eigs(A, k, sigma)</b> selects eigenvalues nearest to the scalar <b>sigma</b>.

When the optional ARPACK backend is not available, <b>eigs</b> uses a dense fallback for small sparse matrices. Larger sparse matrices still require ARPACK to avoid excessive memory use.

Sparse single and sparse single-complex inputs are accepted. The selected eigenproblem is computed through the double-precision sparse backend, and dense outputs are converted back to single or single-complex when applicable.

## 💡 Examples

```matlab
A = sparse([4 1 0; 1 3 0; 0 0 2]);
d = eigs(A, 2)
[V, D] = eigs(A, 2)

```

```matlab
A = sparse(diag([1 2 4 8 16]));
d = eigs(A, 2, 3.5)

```

```matlab
A = sparse(diag([1 + 1i, 2 - 1i, 4 + 2i]));
d = eigs(A, 2, 2 + 0.5i)

```

```matlab
A = sparse(single(diag([1 + 1i, 2 - 1i, 4 + 2i])));
d = eigs(A, 2)

```

## 🔗 See also

[eig](../../linear_algebra/eig.md), [svds](../../linear_algebra/svds.md).

## 🕔 History

| Version | 📄 Description                                                                                        |
| ------- | ----------------------------------------------------------------------------------------------------- |
| 2.0.0   | dense fallback added for small sparse matrices when ARPACK is unavailable.                            |
| 2.0.0   | sparse single and sparse single-complex inputs supported through the sparse double-precision backend. |

<!--
## 👤 Author

Allan CORNET
-->
