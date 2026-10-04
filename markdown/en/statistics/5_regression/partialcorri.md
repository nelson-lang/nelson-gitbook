# partialcorri

Partial correlation coefficients adjusted for internal variables.

## 📝 Syntax

- rho = partialcorri(Y, X)
- rho = partialcorri(Y, X, Z)
- [rho, pval] = partialcorri(...)
- [rho, pval] = partialcorri(..., Name, Value)

## 📄 Description

<b>partialcorri</b> computes partial correlations between each column of <b>Y</b> and each column of <b>X</b>, adjusting for the remaining columns of <b>X</b>.

When <b>Z</b> is supplied, both <b>X</b> and <b>Y</b> are additionally controlled for <b>Z</b>. Supported options are <b>Type</b>, <b>Rows</b>, and <b>Tail</b>.

## 💡 Example

```matlab
X = randn(20, 3);
Y = randn(20, 2);
rho = partialcorri(Y, X)
```

## 🔗 See also

[partialcorr](../../statistics/partialcorr.md), [corr](../../statistics/corr.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
