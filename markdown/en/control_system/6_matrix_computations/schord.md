# schord

Order a Schur decomposition.

## 📝 Syntax

- [Qo, To] = schord(Qi, Ti, index)

## 📥 Input argument

- Qi - orthogonal or unitary Schur vector matrix.
- Ti - upper triangular Schur matrix.
- index - ordering keys for the diagonal entries.

## 📤 Output argument

- Qo - ordered Schur vector matrix.
- To - ordered Schur matrix.

## 📄 Description


<b>schord</b> applies adjacent unitary rotations to reorder a Schur decomposition by increasing values in <b>index</b>.

## 💡 Example



```matlab

A = [1 2; 3 4];
[Q, T] = schur(A);
[Qo, To] = schord(Q, T, [2 1])

```


## 🔗 See also

[schur](../../linear_algebra/3_eigen_singular_values/schur.md), [bdschur](../../control_system/6_matrix_computations/bdschur.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
