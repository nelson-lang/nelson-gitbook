# rank

Rank of matrix.

## 📝 Syntax

- r = rank(A)
- r = rank(A, tol)

## 📥 Input argument

- A - matrix: double or single
- tol - tolerance

## 📤 Output argument

- r - a numeric value: a scalar.

## 📄 Description

<b>rank(A)</b> returns the number of linearly independent columns in a matrix (rank of the matrix).

## 💡 Example

```matlab
X = rand(10, 10);
r = rank(X)
```

## 🔗 See also

[svd](../linear_algebra/svd.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
