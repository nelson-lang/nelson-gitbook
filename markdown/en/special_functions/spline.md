# spline

Cubic spline interpolation.

## 📝 Syntax

- yq = spline(x, y, xq)
- pp = spline(x, y)

## 📥 Input argument

- x - Sample points.
- y - Sample values.
- xq - Query points.

## 📤 Output argument

- yq - Interpolated values.
- pp - Piecewise polynomial structure.

## 📄 Description

<b>spline</b> evaluates a not-a-knot cubic spline or returns its piecewise polynomial form.

## 💡 Example

```matlab
yq = spline(1:4, [0 1 0 1], [1.5 2.5])
```

## 🔗 See also

[interp1](../special_functions/interp1.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
