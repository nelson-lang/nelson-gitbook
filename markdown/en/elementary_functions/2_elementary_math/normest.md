# normest

2-norm estimate

## 📝 Syntax

- nrm = normest(A)
- [nrm, count] = normest(A)
- nrm = normest(A, tolerance)
- [nrm, count] = normest(A, tolerance)

## 📥 Input argument

- A - Input matrix
- tolerance - relative error tolerance, specified as a non-negative finite scalar.

## 📤 Output argument

- nrm - Matrix norm: scalar.
- count - Number of power iterations: scalar.

## 📄 Description

<b>nrm = normest(A)</b> returns an estimate of the 2-norm of the matrix<b>A</b>.

Sparse double, sparse single, sparse double complex, and sparse single complex matrices are supported. Empty tolerance uses the initial column-sum estimate, and non-empty tolerance controls the power iteration stopping criterion.

## 💡 Example

```matlab
M = [    0    2.4495         0         0         0         0         0
    2.4495         0    3.1623         0         0         0         0
         0    3.1623         0    3.4641         0         0         0
         0         0    3.4641         0    3.4641         0         0
         0         0         0    3.4641         0    3.1623         0
         0         0         0         0    3.1623         0    2.4495
         0         0         0         0         0    2.4495         0];
[nrm, count] = normest(M)
norm(M)


```

## 🔗 See also

[norm](../../elementary_functions/norm.md), [svd](../../linear_algebra/svd.md).

## 🕔 History

| Version | 📄 Description                                                                                                                 |
| ------- | ------------------------------------------------------------------------------------------------------------------------------ |
| 1.0.0   | initial version                                                                                                                |
| 2.0.0   | sparse single and sparse single complex inputs supported, including stored zero sparse values; tolerance validation tightened. |

<!--
## 👤 Author

Allan CORNET
-->
