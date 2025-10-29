# diff

Differences and approximate derivatives.

## 📝 Syntax

- Y = diff(X)
- Y = diff(X, n)
- Y = diff(X, n, dim)

## 📥 Input argument

- X - vector or matrix (real or single)
- n - difference order: positive integer scalar or []
- dim - dimension: positive integer scalar

## 📤 Output argument

- Y - difference array: vector or matrix.

## 📄 Description

If <b>X</b> is a vector of length <b>n</b>, result of <b>diff(X)</b> is a vector of first differences <b>X(2) - X(1), ..., X(n) - X(n-1)</b>.

If <b>X</b> is a matrix, result of <b>diff(X)</b> is a matrix of column differences along the first non-singleton dimension.

## 💡 Example

```matlab
h = .01; x = 0:h:pi;
X = sin(x.^2);
R = diff(X)
```

## 🔗 See also

[sum](../linear_algebra/sum.md), [prod](../linear_algebra/prod.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
