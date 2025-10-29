# deconv

Deconvolution and polynomial division.

## 📝 Syntax

- [q, r] = deconv(b, a)

## 📥 Input argument

- a - row or column vectors
- b - row or column vectors

## 📤 Output argument

- q - quotient: row or column vector
- r - remainder: row or column vector

## 📄 Description

<b>[q, r] = deconv(b, a)</b> performs deconvolution on vector <b>b</b> by vector <b>a</b> using long division.

It returns the quotient <b>q</b> and remainder <b>r</b> such that <b>b = conv(a, q) + r</b>.

In the context of polynomial coefficients, deconvolving vectors <b>b</b> and <b>a</b> is akin to dividing the polynomial represented by <b>b</b> by the polynomial represented by <b>a</b>.

## 💡 Example

```matlab

b = [1; 2; -1];  % Dividend (x^2 + 2x - 1)
a = [1; 1];      % Divisor (x + 1)

[q, r] = deconv(b, a)
```

## 🔗 See also

[conv](../data_analysis/conv.md), [poly](../polynomial_functions/poly.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.3.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
