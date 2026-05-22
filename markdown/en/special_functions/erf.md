# erf

Error function

## 📝 Syntax

- R = erf(X)

## 📥 Input argument

- X - a real single or real double scalar, vector, matrix, or multidimensional array. Sparse and complex inputs are not supported.

## 📤 Output argument

- R - error function values, returned with the same size and floating-point class as X.

## 📄 Description

<b>erf</b> computes the error function element by element.

The error function is defined as:
$$erf(x) = \frac{2}{\sqrt{\pi}}\int_0^x e^{-t^2}\,dt$$

It is related to the complementary error function by:
$$erfc(x) = 1 - erf(x)$$

For better numerical accuracy when the result is close to zero, use <b>erfc</b> instead of evaluating <b>1 - erf(x)</b>.

## 💡 Examples

Find the error function of a scalar.

```matlab
R = erf(0.76)
```

Find the error function of the elements of a vector.

```matlab
V = [-0.5 0 1 0.72];
R = erf(V)
```

Find the error function of the elements of a matrix.

```matlab
M = [0.29 -0.11; 3.1 -2.9];
R = erf(M)
```

Compute the cumulative distribution function of the standard normal distribution.

```matlab
x = -3:0.1:3;
y = 0.5 * (1 + erf(x / sqrt(2)));
```

## 🔗 See also

[erfc](../special_functions/erfc.md), [erfinv](../special_functions/erfinv.md), [erfcinv](../special_functions/erfcinv.md), [erfcx](../special_functions/erfcx.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.17.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
