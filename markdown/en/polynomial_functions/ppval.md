# ppval

Evaluate a piecewise polynomial form

## 📝 Syntax

- vq = ppval(pp, xq)

## 📥 Input argument

- pp - Piecewise polynomial structure, such as the structure returned by interp1(..., 'pp').
- xq - Query points.

## 📤 Output argument

- vq - Values of the piecewise polynomial at xq.

## 📄 Description

<b>ppval</b> evaluates a piecewise polynomial structure. The structure contains breaks, coefficients, number of pieces, order, and output dimension.

For the interpolation workflow, create pp with <b>interp1(x, v, method, 'pp')</b>, then evaluate it repeatedly with <b>ppval</b>.

## 💡 Example

```matlab
x = 1:4;
v = [10 20 40 80];
pp = interp1(x, v, 'linear', 'pp');
ppval(pp, [1.5 2.5])
```

## 🔗 See also

[interp1](../special_functions/interp1.md), [polyval](../polynomial_functions/polyval.md).

<!--
## 👤 Author

Allan CORNET
-->
