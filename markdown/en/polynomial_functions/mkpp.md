# mkpp

Make a piecewise polynomial

## 📝 Syntax

- pp = mkpp(breaks, coefs)
- pp = mkpp(breaks, coefs, d)

## 📥 Input argument

- breaks - Vector of break points, of length pieces + 1.
- coefs - Matrix of polynomial coefficients, of size (pieces \* prod(d)) by order. Each row holds the coefficients of one polynomial piece from the highest power to the constant term.
- d - Dimension of the values of the piecewise polynomial (default 1).

## 📤 Output argument

- pp - Piecewise polynomial structure with fields form, breaks, coefs, pieces, order and dim.

## 📄 Description

<b>mkpp</b> builds a piecewise polynomial structure from its break points and coefficients. The structure can then be evaluated with <b>ppval</b>.

For each piece, the polynomial is evaluated in the local variable x - breaks(i), where breaks(i) is the left break point of the piece.

The number of pieces is numel(breaks) - 1 and the order is the number of columns of coefs.

## 💡 Example

```matlab
pp = mkpp([0 1 2], [1 0; 1 1]);
ppval(pp, 0.5)
```

## 🔗 See also

[ppval](../polynomial_functions/ppval.md), [interp1](../special_functions/interp1.md).

<!--
## 👤 Author

Allan CORNET
-->
