# spalloc

Create a sparse matrix with allocated storage.

## 📝 Syntax

- S = spalloc(m, n, nz)

## 📥 Input argument

- m - number of rows.
- n - number of columns.
- nz - requested storage allocation for nonzero elements.

## 📤 Output argument

- S - a sparse double matrix.

## 📄 Description

<b>spalloc</b> creates an m-by-n sparse double matrix and reserves storage for up to <b>nz</b> nonzero elements.

## 💡 Example

```matlab
S = spalloc(3, 4, 5)
nzmax(S)
```

## 🔗 See also

[sparse](../sparse/sparse.md), [nzmax](../sparse/nzmax.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
