# spaugment

Form a sparse augmented least squares matrix.

## 📝 Syntax

- S = spaugment(A)
- S = spaugment(A, c)

## 📥 Input argument

- A - non-empty numeric or logical 2-D matrix, sparse or full.
- c - residual scaling factor. The first element is used. Default is max(max(abs(A))) / 1000.

## 📤 Output argument

- S - sparse augmented matrix.

## 📄 Description

<b>spaugment</b> forms the sparse matrix <b>[c \* I, A; A', 0]</b>.

This matrix is useful when rewriting sparse least squares problems as symmetric indefinite systems.

Double, single, logical, complex double, and complex single inputs are supported. The output is sparse, and sparse single numeric inputs keep class single.

Stored zero values in sparse <b>A</b> are ignored by the sparse arithmetic used to form the augmented matrix.

## 💡 Examples

```matlab
A = sparse([1 0; 2 3; 0 4]);
S = spaugment(A, 2)

```

```matlab
A = sparse(single([1 + 2i 0; 0 3]));
S = spaugment(A, single(2))

```

## 🔗 See also

[sparse](../sparse/sparse.md), [speye](../sparse/speye.md), [lsqr](../linear_algebra/lsqr.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
