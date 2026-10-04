# ilu

Incomplete LU factorization.

## 📝 Syntax

- LU = ilu(A)
- LU = ilu(A, opts)
- [L, U] = ilu(A)
- [L, U] = ilu(A, opts)
- [L, U, P] = ilu(A, opts)

## 📥 Input argument

- A - a sparse real or complex floating-point square matrix.
- opts - a scalar structure with optional fields type, droptol, fillfactor, udiag, and thresh.

## 📤 Output argument

- LU - single sparse factor containing the strict lower part of <b>L</b> and the upper part of <b>U</b>.
- L - sparse lower triangular incomplete LU factor.
- U - sparse upper triangular incomplete LU factor.
- P - sparse row permutation matrix. When returned, <b>P \* A</b> is approximated by <b>L \* U</b>.

## 📄 Description

<b>ilu</b> computes sparse incomplete LU factors suitable for use as preconditioners.

<b>opts.type</b> can be 'nofill' or 'ilutp'. The default is 'nofill', which preserves the input sparsity pattern and performs no threshold dropping.

In 'ilutp' mode, <b>opts.droptol</b> drops small entries, <b>opts.fillfactor</b> limits retained row fill, <b>opts.udiag</b> allows zero pivots, and <b>opts.thresh</b> is a pivot threshold between 0 and 1. The default values are <b>droptol = 1e-4</b>, <b>fillfactor = 10</b>, <b>udiag = false</b>, and <b>thresh = 1</b>.

The 'ilutp' mode uses sparse row pivoting. With three outputs, <b>P</b> contains the row permutation and <b>P \* A</b> is approximated by <b>L \* U</b>. With one output, the packed sparse factor stores the strict lower part of <b>L</b> and the upper part of <b>U</b>.

Text option values such as <b>opts.type</b> can be character row vectors or string scalars.

Double, single, complex double, and complex single sparse matrices are supported. <b>L</b> and <b>U</b> keep the input numeric class; <b>P</b> is a sparse permutation matrix.

The factors can be used directly as preconditioners for Krylov solvers such as <b>gmres</b>, <b>bicgstab</b>, <b>bicg</b>, <b>cgs</b>, and <b>qmr</b>.

## Used function(s)

Nelson sparse routines

## 💡 Examples

```matlab
A = sparse([4 1 0; 2 3 1; 0 1 2]);
LU = ilu(A)
full(LU)

```

```matlab
A = sparse([4 1 0; 2 3 1; 0 1 2]);
[L, U] = ilu(A)
full(L * U)

```

```matlab
A = sparse([4 1 0; 2 3 1; 0 1 2]);
b = [1; 2; 3];
[L, U] = ilu(A);
x = bicgstab(A, b, 1e-12, 20, L, U)

```

ILUTP with row pivoting.

```matlab
A = sparse(single([0 1 + 2i; 3 - 1i 4]));
opts.type = 'ilutp';
opts.droptol = 0;
[L, U, P] = ilu(A, opts);
full(P * A - L * U)

```

Control pivoting and retained fill in the thresholded mode.

```matlab
A = sparse([0.2 1; 1 1]);
opts.type = 'ilutp';
opts.droptol = 0;
opts.fillfactor = 10;
opts.thresh = 0.25;
[L, U, P] = ilu(A, opts);
full(P * A - L * U)

```

## 🔗 See also

[bicgstab](../../linear_algebra/bicgstab.md), [lu](../../linear_algebra/lu.md).

## 🕔 History

| Version | 📄 Description                                                                                              |
| ------- | ----------------------------------------------------------------------------------------------------------- |
| 2.0.0   | initial version                                                                                             |
| 2.0.0   | added single and complex single nofill, ilutp, pivoting, string scalar options, and preconditioner coverage |

<!--
## 👤 Author

Allan CORNET
-->
