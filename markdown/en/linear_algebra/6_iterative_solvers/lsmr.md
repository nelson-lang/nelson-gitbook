# lsmr

LSMR method for sparse linear equations and least squares.

## 📝 Syntax

- x = lsmr(A, b)
- x = lsmr(A, b, tol, maxit)
- x = lsmr(A, b, tol, maxit, M1, M2, x0)
- [x, flag, relres, iter, resvec, lsvec] = lsmr(...)

## 📥 Input argument

- A - a sparse real or complex floating-point matrix.
- b - a real or complex floating-point right-hand side vector compatible with A.
- tol - a finite real scalar convergence tolerance. Default is 1e-6.
- maxit - a non-negative integer maximum iteration count.
- M1, M2 - optional right preconditioners: sparse or full square matrices, diagonal vectors, or function handles. Function handles must accept a vector and a transpose flag.
- x0 - optional initial guess vector.

## 📤 Output argument

- x - computed solution vector.
- flag - 0 when convergence is reached, 1 when maxit is reached, 4 on numerical breakdown.
- relres - relative residual norm.
- iter - iteration count.
- resvec - residual norm history.
- lsvec - normal-equation residual norm history.

## 📄 Description


<b>lsmr</b> solves sparse linear equations and least-squares problems using a Golub-Kahan bidiagonalization method. 

The method supports square and rectangular sparse double, single, complex double, and complex single matrices. 

<b>M1</b> and <b>M2</b> are right preconditioners. They can be diagonal vectors, sparse or dense square matrices, or function handles accepting a vector and the transpose flag <b>'notransp'</b> or <b>'transp'</b>. 

If any compatible input, preconditioner, or initial guess is complex, the iteration is performed in the matching complex class. 

<b>resvec</b> stores residual norms and <b>lsvec</b> stores least-squares residual estimates for each iteration.

## 💡 Examples



```matlab
A = sparse([1 0; 0 1; 1 1; 2 -1]);
b = [1; 2; 4; 1];
[x, flag, relres, iter] = lsmr(A, b, 1e-12, 20)

```
Least-squares solve with split right preconditioners.

```matlab
A = sparse([1 0; 0 1; 1 1; 2 -1]);
b = [1; 2; 4; 1];
M1 = [2 0; 0 1];
M2 = [1 0.5; 0 3];
[x, flag, relres, iter] = lsmr(A, b, 1e-12, 20, M1, M2)
```


## 🔗 See also

[lsqr](../../linear_algebra/6_iterative_solvers/lsqr.md), [gmres](../../linear_algebra/6_iterative_solvers/gmres.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |
| 2.0.0   | added single, complex single, right-preconditioner, initial guess, and residual-history coverage |

<!--
## 👤 Author

Allan CORNET
-->
