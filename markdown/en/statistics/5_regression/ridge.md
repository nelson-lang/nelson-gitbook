# ridge

Ridge regression.

## 📝 Syntax

- B = ridge(y, X, k)
- B = ridge(y, X, k, scaled)

## 📄 Description

<b>ridge</b> returns coefficient estimates for ridge regression models of response vector <b>y</b> on predictor matrix <b>X</b>.

Predictors are centered and scaled before fitting. If <b>scaled</b> is <b>0</b>, coefficients are restored to the original predictor scale and an intercept row is included.

## 💡 Example

```matlab
y = [1; 2.1; 2.9; 4.2; 5.1; 5.9];
X = [(1:6)' [2; 1; 4; 3; 7; 6]];
B = ridge(y, X, [0 0.5 2])
```

## 🔗 See also

[regress](../../statistics/regress.md), [robustfit](../../statistics/robustfit.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
