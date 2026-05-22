# erfc

Complementary error function

## 📝 Syntax

- R = erfc(X)

## 📥 Input argument

- X - a real single or real double scalar, vector, matrix, or multidimensional array. Sparse and complex inputs are not supported.

## 📤 Output argument

- R - complementary error function values, returned with the same size and floating-point class as X.

## 📄 Description

<b>erfc</b> computes the complementary error function element by element.

The complementary error function is defined as:
$$erfc(x) = \frac{2}{\sqrt{\pi}}\int_x^{\infty} e^{-t^2}\,dt$$

It is related to the error function by:
$$erfc(x) = 1 - erf(x)$$

Use <b>erfc</b> instead of <b>1 - erf(x)</b> when <b>erf(x)</b> is close to 1, because direct subtraction can lose significant digits.

Use <b>erfcx</b> instead of <b>exp(x^2) \* erfc(x)</b> for large positive values of X.

## 💡 Examples

Find the complementary error function of a scalar.

```matlab
R = erfc(0.35)
```

Find the complementary error function of the elements of a vector.

```matlab
V = [-0.5 0 1 0.72];
R = erfc(V)
```

Find the complementary error function of the elements of a matrix.

```matlab
M = [0.29 -0.11; 3.1 -2.9];
R = erfc(M)
```

Compare direct subtraction with erfc for a large positive input.

```matlab
A = 1 - erf(10);
B = erfc(10);
```

## 🔗 See also

[erf](../special_functions/erf.md), [erfcinv](../special_functions/erfcinv.md), [erfcx](../special_functions/erfcx.md), [erfinv](../special_functions/erfinv.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.17.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
