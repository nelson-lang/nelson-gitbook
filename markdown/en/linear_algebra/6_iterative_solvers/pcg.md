# pcg

Preconditioned conjugate gradients method.

## 📝 Syntax

- x = pcg(A, b)
- x = pcg(A, b, tol, maxit)
- x = pcg(A, b, tol, maxit, M1, M2, x0)
- [x, flag, relres, iter, resvec] = pcg(...)

## 📥 Input argument

- A - a sparse real or complex floating-point square symmetric or Hermitian positive definite matrix.
- b - a real or complex floating-point right-hand side vector compatible with A.
- tol - a finite real scalar convergence tolerance. Default is 1e-6.
- maxit - a non-negative integer maximum iteration count.
- M1, M2 - optional sparse preconditioner matrices or diagonal vectors.
- x0 - optional initial guess vector.

## 📤 Output argument

- x - computed solution vector.
- flag - 0 when convergence is reached, 1 when maxit is reached, 4 on numerical breakdown.
- relres - relative residual norm.
- iter - iteration count.
- resvec - residual norm history.

## 📄 Description

<b>pcg</b> solves <b>A \* x = b</b> with the preconditioned conjugate gradients method.

The method is intended for sparse symmetric or Hermitian positive definite systems.

The method supports sparse double, single, complex double, and complex single matrices.

Preconditioners can be diagonal vectors, sparse triangular factors, sparse or dense square matrices, or function handles returning vectors. <b>ichol</b> factors can be supplied as <b>M1</b> and <b>M2</b>.

Zero diagonal preconditioners and inconsistent dimensions are rejected before iteration.

## 💡 Examples

```matlab
A = sparse([4 -1 0; -1 4 -1; 0 -1 3]);
b = [15; 10; 10];
[x, flag, relres, iter] = pcg(A, b, 1e-12, 20)

```

```matlab
A = sparse([4 -1 0; -1 4 -1; 0 -1 3]);
b = [15; 10; 10];
L = ichol(A);
[x, flag, relres, iter] = pcg(A, b, 1e-12, 20, L, L')

```

## 🔗 See also

[bicgstab](../../linear_algebra/bicgstab.md), [ichol](../../linear_algebra/ichol.md).

## 🕔 History

| Version | 📄 Description                                                                      |
| ------- | ----------------------------------------------------------------------------------- |
| 2.0.0   | initial version                                                                     |
| 2.0.0   | added single, complex single, preconditioner, initial guess, and breakdown coverage |

<!--
## 👤 Author

Allan CORNET
-->
