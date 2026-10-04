# nonzeros

Nonzero matrix elements.

## 📝 Syntax

- v = nonzeros(A)

## 📥 Input argument

- A - numeric, logical, or character array, including sparse numeric and sparse logical matrices.

## 📤 Output argument

- v - dense column vector containing the nonzero values of A.

## 📄 Description

<b>nonzeros</b> returns the nonzero values of <b>A</b> in column-major order.

For sparse input, the output is a dense column vector containing only values that are actually nonzero. Stored zero values in a sparse matrix are skipped.

The output keeps the value class of <b>A</b>, including single, complex single, logical, and integer inputs.

## 💡 Examples

```matlab
A = sparse([1 0 2; 0 3 0]);
v = nonzeros(A)

```

```matlab
S = sparse([1 2 1 2], [1 1 2 2], single([0 -0 complex(0, 0) complex(0, 2)]), 2, 2, 4);
v = nonzeros(S)

```

## 🔗 See also

[find](../elementary_functions/find.md), [sparse](../sparse/sparse.md), [nnz](../sparse/nnz.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
