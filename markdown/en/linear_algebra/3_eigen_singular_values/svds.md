# svds

Selected singular values and singular vectors of a sparse matrix.

## 📝 Syntax

- s = svds(A)
- s = svds(A, k)
- s = svds(A, k, which)
- [U, S, V] = svds(...)

## 📥 Input argument

- A - a sparse double, single, complex double, or complex single matrix.
- k - a positive integer smaller than the smaller matrix dimension. Default is 6.
- which - a string: 'largest' or 'lm' for largest singular values, 'smallest' or 'sm' for smallest singular values.

## 📤 Output argument

- s - selected singular values returned as a dense column vector in decreasing order.
- U - dense matrix whose columns are the selected left singular vectors.
- S - dense diagonal matrix containing the selected singular values.
- V - dense matrix whose columns are the selected right singular vectors.

## 📄 Description

<b>svds</b> computes selected singular values and, optionally, the corresponding singular vectors of a sparse floating-point matrix.

For a matrix <b>A</b>, the returned factors satisfy:
$$A V = U S$$

Tall matrices use the smaller normal problem when possible, and wide matrices use the corresponding transposed normal problem.

When the optional ARPACK backend is not available, <b>svds</b> uses a dense fallback for small sparse matrices. Larger sparse matrices still require ARPACK to avoid excessive memory use.

Sparse single and sparse single-complex inputs are accepted. The selected singular-value problem is computed through the double-precision sparse backend, and dense outputs are converted back to single or single-complex when applicable.

## 💡 Examples

```matlab
A = sparse([1 0 0; 0 2 0; 3 0 0; 0 4 0; 0 0 5]);
s = svds(A, 2)
[U, S, V] = svds(A, 2, 'smallest')

```

```matlab
A = sparse([1 + 1i 0 0; 0 2i 0; 3 0 0; 0 4 0; 0 0 5i]);
s = svds(A, 2)

```

```matlab
A = sparse(single([1 + 1i 0 0; 0 2i 0; 3 0 0; 0 4 0; 0 0 5i]));
s = svds(A, 2)

```

## 🔗 See also

[svd](../../linear_algebra/svd.md), [eigs](../../linear_algebra/eigs.md).

## 🕔 History

| Version | 📄 Description                                                                                        |
| ------- | ----------------------------------------------------------------------------------------------------- |
| 2.0.0   | dense fallback added for small sparse matrices when ARPACK is unavailable.                            |
| 2.0.0   | sparse single and sparse single-complex inputs supported through the sparse double-precision backend. |

<!--
## 👤 Author

Allan CORNET
-->
