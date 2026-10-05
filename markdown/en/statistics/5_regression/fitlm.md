# fitlm

Fit a linear regression model.

## 📝 Syntax

- mdl = fitlm(X, y)
- mdl = fitlm(X, y, modelspec)
- mdl = fitlm(X, y, ..., Name, Value)
- yfit = predict(mdl, Xnew)

## 📄 Description


<b>fitlm</b> creates a <b>LinearModel</b> object from numeric predictors <b>X</b> and response <b>y</b>. 

Supported model specifications include <b>constant</b>, <b>linear</b>, <b>interactions</b>, <b>quadratic</b>, <b>purequadratic</b>, and numeric term matrices. Name-value arguments include <b>Intercept</b>, <b>PredictorNames</b>, and <b>ResponseName</b>.

## 💡 Example



```matlab
X = [1 2; 2 1; 3 4; 4 3; 5 6; 6 5];
y = 1 + 2 * X(:,1) - 3 * X(:,2);
mdl = fitlm(X, y);
yfit = predict(mdl, [7 8; 8 7])
```


## 🔗 See also

[regress](../../statistics/5_regression/regress.md), [regstats](../../statistics/5_regression/regstats.md), [robustfit](../../statistics/5_regression/robustfit.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
