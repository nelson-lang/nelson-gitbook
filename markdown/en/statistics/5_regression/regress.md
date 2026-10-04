# regress

Multiple linear regression.

## 📝 Syntax

- b = regress(y, X)
- [b, bint] = regress(y, X)
- [b, bint, r] = regress(y, X)
- [b, bint, r, rint] = regress(y, X)
- [b, bint, r, rint, stats] = regress(y, X)
- [...] = regress(y, X, alpha)

## 📄 Description

<b>regress</b> estimates coefficients for a multiple linear regression model of response vector <b>y</b> on predictor matrix <b>X</b>.

Rows containing <b>NaN</b> values in <b>y</b> or <b>X</b> are omitted from the fit. Include a column of ones in <b>X</b> to fit an intercept.

## 💡 Example

```matlab
y = [1; 2.1; 2.9; 4.2; 5.1; 5.9];
X = [ones(6, 1), (1:6)'];
[b, bint, r, rint, stats] = regress(y, X)
```

## 🔗 See also

[corr](../../statistics/corr.md), [partialcorr](../../statistics/partialcorr.md), [tcdf](../../statistics/tcdf.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
