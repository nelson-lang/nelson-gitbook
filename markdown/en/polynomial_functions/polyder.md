# polyder

Polynomial differentiation.

## 📝 Syntax

- k = polyder(p)
- k = polyder(a, b)
- [q, d] = polyder(a, b)

## 📥 Input argument

- p - vector: polynomial coefficients
- a - row vector: polynomial coefficients
- b - row vector: polynomial coefficients

## 📤 Output argument

- k - row vector: differentiated polynomial coefficients
- q - row vector: numerator polynomial
- d - row vector: denominator polynomial

## 📄 Description

<b>k = polyder(p)</b> return the coefficients of the derivative of the polynomial whose coefficients are given by the vector <b>p</b>.

<b>k = polyder(a, b) </b> returns the derivative of the product of the polynomials <b>a</b> and <b>b</b>.

<b>[q, d] = polyder(a, b)</b> returns the derivative of the quotient of the polynomials <b>a</b> and <b>b</b>.

## 💡 Example

```matlab

p = [30 0 -20 0 10 50];
q = polyder(p)
```

## 🔗 See also

[polyval](../polynomial_functions/polyval.md), [poly](../polynomial_functions/poly.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
