# cumtrapz

Cumulative trapezoidal numerical integration.

## 📝 Syntax

- Z = cumtrapz(Y)
- Z = cumtrapz(X, Y)
- Z = cumtrapz(Y, dim)
- Z = cumtrapz(X, Y, dim)

## 📥 Input argument

- Y - vector or matrix (real or single)
- X - point spacing: vector
- dim - dimension: positive integer scalar

## 📤 Output argument

- Z - cumulative integral: same size as Y.

## 📄 Description

<b>cumtrapz(Y)</b> computes the cumulative integral of <b>Y</b> using the trapezoidal method with unit spacing, along the first non-singleton dimension.

<b>cumtrapz(X, Y)</b> integrates <b>Y</b> with respect to the coordinates given by <b>X</b>.

The result has the same size as <b>Y</b>, and its first value along the working dimension is <b>0</b>.

## 💡 Example

```matlab
x = 0:0.1:pi;
Z = cumtrapz(x, sin(x))
```

## 🔗 See also

[trapz](../trapz.md), [cumsum](../../elementary_functions/cumsum.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
