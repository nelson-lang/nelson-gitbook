# filter

1-D digital filter

## 📝 Syntax

- y = filter(b, a, x)
- y = filter(b, a, x, zi)
- y = filter(b, a, x, zi, dim)
- [y, zf] = filter(...)

## 📥 Input argument

- b - Numerator coefficients of rational transfer function: vector.
- a - Denominator coefficients of rational transfer function: vector.
- x - Input data: matrix.
- zi - Initial filter conditions.
- dim - Dimension to operate along.

## 📤 Output argument

- y - Filtered data: matrix.
- zf - Final filter conditions.

## 📄 Description

The function<b>filter(b, a, x)</b> applies a rational transfer function to filter the input data array<b>x</b>.

This transfer function is defined by the coefficients of the numerator (<b>b</b>) and denominator (<b>a</b>).

If the first coefficient of <b>a</b> (a(1)) is not equal to 1, the filter normalizes the coefficients by a(1). It is crucial for a(1) to be nonzero.

When<b>x</b> is a vector, the function returns a vector of the same size as<b>x</b> containing the filtered data.

Sparse inputs are not supported.

Initial and final filter conditions have the filter order as their first dimension, followed by the dimensions of <b>x</b> except the filtered dimension.

## 💡 Example

```matlab
f = figure();
rng default
t = linspace(-pi,pi,100);
X = sin(t) + (0.33 * rand(size(t)));
windowSize = 7;
b = (1/windowSize)*ones(1,windowSize);
a = 1;
y = filter(b, a, X);
plot(t, X)
hold on
plot(t, y)
legend(_('Input Data'), _('Filtered Data'));

```

## 🔗 See also

[conv](../../data_analysis/conv.md).

## 🕔 History

| Version | 📄 Description                                                                                 |
| ------- | ---------------------------------------------------------------------------------------------- |
| 1.0.0   | initial version                                                                                |
| 2.0.0   | documented initial and final filter conditions, dimension support, and sparse input validation |

<!--
## 👤 Author

Allan CORNET
-->
