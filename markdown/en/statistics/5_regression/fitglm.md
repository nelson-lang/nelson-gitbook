# fitglm

Fit a generalized linear regression model.

## 📝 Syntax

- mdl = fitglm(X, y)
- mdl = fitglm(X, y, modelspec)
- mdl = fitglm(X, y, ..., Name, Value)
- yfit = predict(mdl, Xnew)

## 📄 Description


<b>fitglm</b> creates a <b>GeneralizedLinearModel</b> object from numeric predictors <b>X</b> and response <b>y</b>. 

Supported distributions are <b>normal</b>, <b>binomial</b>, and <b>poisson</b>. Supported links are <b>identity</b>, <b>log</b>, and <b>logit</b>, with canonical defaults for each distribution. 

Supported model specifications include <b>constant</b>, <b>linear</b>, <b>interactions</b>, <b>quadratic</b>, <b>purequadratic</b>, and numeric term matrices. Name-value arguments include <b>Distribution</b>, <b>Link</b>, <b>Intercept</b>, <b>PredictorNames</b>, <b>ResponseName</b>, <b>MaxIter</b>, and <b>TolFun</b>.

## 💡 Example



```matlab
X = [0; 1; 2; 3; 4; 5; 6; 7];
y = [1; 1; 2; 3; 5; 8; 13; 21];
mdl = fitglm(X, y, 'Distribution', 'poisson');
yfit = predict(mdl, [2; 4; 6])
```


## 🔗 See also

[fitlm](../../statistics/5_regression/fitlm.md), [regress](../../statistics/5_regression/regress.md), [robustfit](../../statistics/5_regression/robustfit.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
