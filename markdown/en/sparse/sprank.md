# sprank

Structural rank of a matrix.

## 📝 Syntax

- r = sprank(S)

## 📥 Input argument

- S - a sparse or full floating-point or logical matrix.

## 📤 Output argument

- r - structural rank.

## 📄 Description


<b>sprank</b> returns the structural rank of a matrix, computed from its nonzero pattern. 

The value is the size of a maximum matching between matrix rows and columns. 

Double, single, logical, complex double, and complex single matrices are supported, both full and sparse. For sparse input, stored zero values are ignored when the structural pattern is built. 

Structural rank can be larger than numeric rank because it depends only on the locations of nonzero values, not on numerical linear dependence.

## 💡 Examples



```matlab
S = sparse([1 1; 1 1]);
r = sprank(S)

```


```matlab
S = sparse([1 2 1 2], [1 1 2 2], single([0 -0 complex(0, 0) complex(0, 2)]), 2, 2, 4);
r = sprank(S)

```


## 🔗 See also

[sparse](../sparse/sparse.md), [nnz](../sparse/nnz.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
