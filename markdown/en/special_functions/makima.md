# makima

Modified Akima piecewise cubic interpolation.

## 📝 Syntax

- yq = makima(x, y, xq)
- pp = makima(x, y)

## 📥 Input argument

- x - Sample points.
- y - Sample values.
- xq - Query points.

## 📤 Output argument

- yq - Interpolated values.
- pp - Piecewise polynomial structure.

## 📄 Description


<b>makima</b> is a convenience function for one-dimensional modified Akima interpolation. 

With two inputs, it returns a piecewise polynomial structure evaluable with <b>ppval</b>.

## 💡 Example



```matlab
x = [0 1 2.5 3.6 5 7 8.1 10];
y = cos(x);
yq = makima(x, y, 0:0.25:10)
```


## 🔗 See also

[interp1](../special_functions/interp1.md), [pchip](../special_functions/pchip.md), [ppval](../polynomial_functions/ppval.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
