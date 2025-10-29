# nzmax

Reserved size for nonzero elements.

## 📝 Syntax

- v = nzmax(M)

## 📥 Input argument

- M - a matrix: double or logical, sparse or not.

## 📤 Output argument

- v - a integer value.

## 📄 Description

<b>nzmax</b> returns the amount of storage allocated for nonzero elements.

## 💡 Example

```matlab
I = [1 2 3];
J = [3 1 2];
V = [32 42 53];
sp = sparse(I, J, V, 5, 4, 10)
size(sp)
nnz(sp)
nzmax(sp)
```

## 🔗 See also

[sparse](../sparse/sparse.md), [nnz](../sparse/nzmax.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
