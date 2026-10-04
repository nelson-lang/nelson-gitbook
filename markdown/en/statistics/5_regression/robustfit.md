# robustfit

Robust linear regression.

## 📝 Syntax

- b = robustfit(X, y)
- b = robustfit(X, y, wfun, tune, const)
- [b, stats] = robustfit(...)

## 📄 Description

<b>robustfit</b> fits a linear regression model using iteratively reweighted least squares.

By default, a constant column is added before fitting. Supported weight functions include <b>bisquare</b>, <b>huber</b>, <b>fair</b>, <b>cauchy</b>, <b>welsch</b>, <b>talwar</b>, <b>andrews</b>, <b>logistic</b>, <b>ols</b>, and function handles.

## 💡 Example

```matlab
x = (1:10)';
y = 10 - 2*x + randn(10,1);
[b, stats] = robustfit(x, y)
```

## 🔗 See also

[regress](../../statistics/regress.md), [corr](../../statistics/corr.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
