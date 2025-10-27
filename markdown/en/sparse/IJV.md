# IJV

Returns I,J,V triplets from a sparse matrix.

## 📝 Syntax

- [iv, jv, vv, m, n, nzmax] = IJV(sp)

## 📥 Input argument

- sp - a sparse matrix.

## 📤 Output argument

- iv - a vector: row indices of the nonzero elements.
- jv - a vector: column indices of the nonzero elements.
- vv - a vector: values of the nonzero elements.
- m - an integer value: number of rows in the matrix.
- n - an integer value: number of columns in the matrix.
- nzmax - an integer value: reserved size for nonzero elements..

## 📄 Description

<b>IJV</b> converts a sparse matrix into its COO format.

## 💡 Example

```matlab
sp = sparse(eye(3,3))
[IV, JV, VV, m, n, nzmax] = IJV(sp)
```

## 🔗 See also

[sparse](../sparse/sparse.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
