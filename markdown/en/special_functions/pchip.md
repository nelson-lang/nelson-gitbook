# pchip

Piecewise Cubic Hermite Interpolating Polynomial (PCHIP).

## 📝 Syntax

- yq = pchip(x, y, xq)
- pp = pchip(x, y)

## 📥 Input argument

- x - Sample points, strictly increasing.
- y - Sample values.
- xq - Query points.

## 📤 Output argument

- yq - Interpolated values.
- pp - Piecewise polynomial structure.

## 📄 Description


<b>pchip</b> is a convenience function for one-dimensional shape-preserving piecewise cubic Hermite interpolation: the interpolant preserves the monotonicity of the data and does not overshoot. 

With three inputs, <b>pchip(x, y, xq)</b> is equivalent to <b>interp1(x, y, xq, 'pchip')</b>. 

With two inputs, it returns a piecewise polynomial structure evaluable with <b>ppval</b>.

## 💡 Examples



```matlab
x = -3:3;
y = [-1 -1 -1 0 1 1 1];
xq = -3:0.25:3;
yq = pchip(x, y, xq)
```
Piecewise polynomial form

```matlab
x = [0 1 2.5 3.6 5 7 8.1 10];
y = cos(x);
pp = pchip(x, y);
yq = ppval(pp, 0:0.25:10)
```


## 🔗 See also

[interp1](../special_functions/interp1.md), [makima](../special_functions/makima.md), [ppval](../polynomial_functions/ppval.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
