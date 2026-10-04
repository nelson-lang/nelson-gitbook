# nzmax

Reserved size for nonzero elements.

## 📝 Syntax

- v = nzmax(M)

## 📥 Input argument

- M - numeric, logical, or character array, sparse or full.

## 📤 Output argument

- v - a integer value.

## 📄 Description

<b>nzmax</b> returns the amount of storage allocated for nonzero elements.

For full arrays, <b>nzmax</b> returns <b>numel(M)</b>. For sparse matrices, it returns the reserved sparse storage capacity, which can be larger than <b>nnz(M)</b>.

Sparse double, single, logical, complex double, and complex single matrices are supported. Stored zero values may contribute to the reserved capacity even though <b>nnz</b> ignores them.

## 💡 Examples

```matlab
I = [1 2 3];
J = [3 1 2];
V = [32 42 53];
sp = sparse(I, J, V, 5, 4, 10)
size(sp)
nnz(sp)
nzmax(sp)
```

```matlab
S = sparse([1 2 1 2], [1 1 2 2], single([0 -0 complex(0, 0) complex(0, 2)]), 2, 2, 4);
[nnz(S), nzmax(S)]
```

## 🔗 See also

[sparse](../sparse/sparse.md), [nnz](../sparse/nnz.md).

## 🕔 History

| Version | 📄 Description                                         |
| ------- | ------------------------------------------------------ |
| 2.0.0   | documented sparse single and reserved storage behavior |
| 1.0.0   | initial version                                        |

<!--
## 👤 Author

Allan CORNET
-->
