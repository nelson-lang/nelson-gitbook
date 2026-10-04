# bicgstab

BiConjugate gradients stabilized method.

## 📝 Syntax

- x = bicgstab(A, b)
- x = bicgstab(A, b, tol, maxit)
- x = bicgstab(A, b, tol, maxit, M1, M2, x0)
- [x, flag, relres, iter, resvec] = bicgstab(...)

## 📥 Input argument

- A - a sparse real or complex floating-point square matrix.
- b - a real or complex floating-point right-hand side vector.
- tol - a finite real scalar convergence tolerance. Default is 1e-6.
- maxit - a non-negative integer maximum iteration count.
- M1, M2 - optional preconditioners: sparse or full square matrices, diagonal vectors, or function handles that apply the preconditioner to one vector.
- x0 - optional initial guess vector.

## 📤 Output argument

- x - computed solution vector.
- flag - 0 when convergence is reached, 1 when maxit is reached, 4 on numerical breakdown.
- relres - relative residual norm.
- iter - iteration count. Half-iteration values indicate convergence after the first step of an iteration.
- resvec - residual norm history, including half-iteration residuals.

## 📄 Description

<b>bicgstab</b> solves <b>A \* x = b</b> with the BiConjugate gradients stabilized method.

The method supports sparse double, sparse single, sparse double complex, and sparse single complex matrices.

When <b>M1</b> or <b>M2</b> is a matrix, the solver applies it through an internal linear solve. A vector preconditioner is interpreted as the diagonal of a square preconditioner. A function handle preconditioner must accept one vector input and return a vector with the same length.

If <b>M1</b>, <b>M2</b>, or <b>x0</b> is complex, the computation uses the matching complex solver path.

## 💡 Examples

```matlab
A = sparse([4 1 0; 2 3 1; 0 1 2]);
b = [1; 2; 3];
[x, flag, relres, iter] = bicgstab(A, b, 1e-12, 20)

```

```matlab
A = sparse([3 + 1i 1; 0 2 - 1i]);
b = [4 + 2i; 3 - 1i];
x = bicgstab(A, b, 1e-12, 20)

```

Solve with a matrix preconditioner.

```matlab
A = sparse([4 1 0; 2 3 1; 0 1 2]);
b = [1; 2; 3];
M = diag(diag(full(A)));
[x, flag] = bicgstab(A, b, 1e-12, 20, M)
```

Solve with split matrix preconditioners.

```matlab
A = sparse([4 1; 2 3]);
b = [5; 5];
M1 = [2 0; 0 1];
M2 = [2 0.5; 2 3];
[x, flag, relres, iter] = bicgstab(A, b, 1e-12, 10, M1, M2)
```

Solve a sparse single complex system with an ILU preconditioner.

```matlab
A = sparse(single([4 1i; 2 3]));
b = single([1; 2]);
[L, U] = ilu(A);
[x, flag] = bicgstab(A, b, 1e-6, 20, L, U)
```

## 🔗 See also

[pcg](../../linear_algebra/pcg.md), [ilu](../../linear_algebra/ilu.md).

## 🕔 History

| Version | 📄 Description                                                                                                         |
| ------- | ---------------------------------------------------------------------------------------------------------------------- |
| 2.0.0   | initial version                                                                                                        |
| 2.0.0   | sparse single and sparse single complex inputs, matrix preconditioners, and function handle preconditioners supported. |

<!--
## 👤 Author

Allan CORNET
-->
