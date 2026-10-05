# bicg

BiConjugate gradients method for sparse linear systems.

## 📝 Syntax

- x = bicg(A, b)
- x = bicg(A, b, tol, maxit)
- x = bicg(A, b, tol, maxit, M1, M2, x0)
- [x, flag, relres, iter, resvec] = bicg(...)

## 📥 Input argument

- A - sparse square coefficient matrix.
- b - right-hand side vector.
- tol - relative residual tolerance. Default is 1e-6.
- maxit - maximum number of iterations.
- M1, M2 - optional preconditioners: sparse or full square matrices, diagonal vectors, or function handles. Function handles must accept a vector and a transpose flag.
- x0 - initial guess.

## 📤 Output argument

- x - computed solution.
- flag - 0 if convergence was reached, 1 if maxit was reached, 4 on numerical breakdown.
- relres - relative residual norm.
- iter - number of iterations performed.
- resvec - residual norm history.

## 📄 Description


<b>bicg</b> solves <b>A\*x = b</b> using the BiConjugate gradients method. 

The method is intended for sparse nonsymmetric systems. It supports sparse or full matrix preconditioners, diagonal vector preconditioners, and function handles. 

When <b>M1</b> or <b>M2</b> is a matrix, <b>bicg</b> applies it through an internal linear solve. A vector preconditioner is interpreted as the diagonal of a square preconditioner. A function handle must accept a vector and a transpose flag, then return a vector with the same length. 

Sparse single and sparse single complex matrices are supported. If <b>M1</b>, <b>M2</b>, or <b>x0</b> is complex, the computation uses the matching complex solver path.

## 💡 Examples



```matlab
A = sparse([4 1 0; 2 3 1; 0 1 2]);
b = [1; 2; 3];
[x, flag, relres, iter, resvec] = bicg(A, b, 1e-12, 20)

```
Solve with split matrix preconditioners.

```matlab
A = sparse([4 1; 2 3]);
b = [5; 5];
M1 = [2 0; 0 1];
M2 = [2 0.5; 2 3];
[x, flag, relres, iter] = bicg(A, b, 1e-12, 10, M1, M2)
```
Solve a sparse single complex system.

```matlab
A = sparse(single([4 1i; 2 3]));
b = single([1; 2]);
[x, flag] = bicg(A, b, 1e-6, 20)
```


## 🔗 See also

[bicgstab](../../linear_algebra/6_iterative_solvers/bicgstab.md), [cgs](../../linear_algebra/6_iterative_solvers/cgs.md), [gmres](../../linear_algebra/6_iterative_solvers/gmres.md), [ilu](../../linear_algebra/7_preconditioners/ilu.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |
| 2.0.0   | sparse single, sparse single complex, matrix preconditioners, and function handle preconditioners supported. |

<!--
## 👤 Author

Allan CORNET
-->
