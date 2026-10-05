# spdiags

Extract or create sparse matrix diagonals.

## 📝 Syntax

- B = spdiags(A)
- [B, d] = spdiags(A)
- S = spdiags(B, d, A)
- S = spdiags(B, d, m, n)

## 📥 Input argument

- A - a sparse or full matrix.
- B - a full matrix whose columns contain diagonal values.
- d - diagonal offsets.
- m, n - output sparse matrix dimensions.

## 📤 Output argument

- B - dense matrix containing extracted diagonals.
- d - diagonal offsets.
- S - a sparse matrix.

## 📄 Description


<b>spdiags</b> extracts stored diagonals from a matrix, replaces selected diagonals, or builds a sparse matrix from diagonal columns.

## 💡 Example



```matlab
A = sparse([1 0 2; 0 3 0; 4 0 5]);
[B, d] = spdiags(A)
R = spdiags([10; 20; 30], 0, A)
S = spdiags(B, d, 3, 3)
```


## 🔗 See also

[diag](../constructors_functions/diag.md), [sparse](../sparse/sparse.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
