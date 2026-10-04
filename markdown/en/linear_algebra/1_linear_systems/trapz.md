# trapz

Trapezoidal numerical integration.

## 📝 Syntax

- Z = trapz(Y)
- Z = trapz(X, Y)
- Z = trapz(Y, dim)
- Z = trapz(X, Y, dim)

## 📥 Input argument

- Y - vector or matrix (real or single)
- X - point spacing: vector
- dim - dimension: positive integer scalar

## 📤 Output argument

- Z - integral: scalar, vector or matrix.

## 📄 Description

<b>trapz(Y)</b> computes the approximate integral of <b>Y</b> using the trapezoidal method with unit spacing, along the first non-singleton dimension.

<b>trapz(X, Y)</b> integrates <b>Y</b> with respect to the coordinates given by <b>X</b>.

Use <b>dim</b> to integrate along a specific dimension.

## 💡 Example

```matlab
x = 0:0.1:pi;
Z = trapz(x, sin(x))
```

## 🔗 See also

[cumtrapz](../cumtrapz.md), [sum](../../data_analysis/sum.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
