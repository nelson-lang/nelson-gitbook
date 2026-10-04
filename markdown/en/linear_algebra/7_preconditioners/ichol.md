# ichol

Incomplete Cholesky factorization.

## 📝 Syntax

- L = ichol(A)
- L = ichol(A, opts)

## 📥 Input argument

- A - a sparse real symmetric or complex Hermitian floating-point square matrix.
- opts - a scalar structure with optional fields type, droptol, diagcomp, michol, and shape.

## 📤 Output argument

- L - sparse lower or upper triangular incomplete Cholesky factor.

## 📄 Description

<b>ichol</b> computes a sparse lower triangular factor <b>L</b> suitable for use as a preconditioner.

The input matrix should be symmetric positive definite for real data or Hermitian positive definite for complex data.

<b>opts.type</b> can be 'nofill' or 'ict'. The default is 'nofill'.

<b>opts.droptol</b> is a non-negative scalar used by the 'ict' mode. The default is <b>0</b>. Entries whose magnitude is below the drop tolerance relative to the column scale are removed from the incomplete factor.

<b>opts.diagcomp</b> applies a relative diagonal compensation before factorization. This can make borderline positive definite or difficult Hermitian matrices usable as preconditioners without changing the sparse input matrix.

<b>opts.michol</b> can be 'on' or 'off'. In 'ict' mode, the modified variant moves dropped structural entries onto the diagonal so row sums are better preserved.

<b>opts.shape</b> can be 'lower' or 'upper'. The default is 'lower'.

Text option values such as <b>opts.type</b>, <b>opts.michol</b>, and <b>opts.shape</b> can be character row vectors or string scalars.

Double, single, complex double, and complex single sparse matrices are supported. The output factor keeps the input numeric class.

The factor can be used directly as a preconditioner for <b>pcg</b>, for example <b>pcg(A, b, tol, maxit, L, L')</b>.

## 💡 Examples

```matlab
A = sparse([4 -1 0; -1 4 -1; 0 -1 3]);
L = ichol(A)
full(L * L')

```

ICT with dropping.

```matlab
A = sparse([4 -1 0; -1 4 -1; 0 -1 3]);
opts.type = 'ict';
opts.droptol = 0.6;
L = ichol(A, opts)

```

```matlab
A = sparse([4 -1 0; -1 4 -1; 0 -1 3]);
opts.shape = 'upper';
R = ichol(A, opts)

```

```matlab
A = sparse(single([4 1 + 1i; 1 - 1i 3]));
opts.type = 'ict';
opts.droptol = 0;
L = ichol(A, opts)
b = single([1 + 2i; 3 - 1i]);
[x, flag] = pcg(A, b, 1e-6, 20, L, L')

```

Diagonal compensation for a difficult sparse Hermitian matrix.

```matlab
A = sparse([1 2 + 1i; 2 - 1i 1]);
opts.diagcomp = 3;
L = ichol(A, opts);
full(L * L')

```

## 🔗 See also

[pcg](../../linear_algebra/pcg.md), [chol](../../linear_algebra/chol.md).

## 🕔 History

| Version | 📄 Description                                                                                           |
| ------- | -------------------------------------------------------------------------------------------------------- |
| 2.0.0   | initial version                                                                                          |
| 2.0.0   | added single and complex single ict, diagcomp, shape, string scalar options, and preconditioner coverage |

<!--
## 👤 Author

Allan CORNET
-->
