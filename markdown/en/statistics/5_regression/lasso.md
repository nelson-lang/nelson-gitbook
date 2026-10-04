# lasso

Lasso and elastic net regularization for linear models.

## 📝 Syntax

- B = lasso(X, y)
- B = lasso(X, y, Name, Value)
- [B, FitInfo] = lasso(...)

## 📄 Description

<b>lasso</b> fits L1 and elastic-net regularized linear models using coordinate descent.

Supported name-value options are <b>Alpha</b>, <b>Lambda</b>, <b>LambdaRatio</b>, <b>NumLambda</b>, <b>Standardize</b>, <b>Intercept</b>, <b>MaxIter</b>, <b>RelTol</b>, and <b>Weights</b>.

## 💡 Example

```matlab
X = randn(100, 5);
y = X * [0; 2; 0; -3; 0] + 0.1 * randn(100, 1);
[B, FitInfo] = lasso(X, y, 'NumLambda', 10)
```

## 🔗 See also

[ridge](../../statistics/ridge.md), [regress](../../statistics/regress.md), [robustfit](../../statistics/robustfit.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
