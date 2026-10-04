# LinearModel

Linear regression model.

## 📝 Syntax

- mdl = fitlm(X, y)
- mdl = fitlm(X, y, modelspec)
- yfit = predict(mdl, Xnew)

## 📥 Input argument

- X - numeric matrix: rows are observations and columns are predictors.
- y - numeric vector: response values with one value for each row of X.
- Name, Value - optional name-value arguments accepted by the corresponding fitting function.

## 📤 Output argument

- mdl - regression model object returned by the fitting function.
- yfit - predicted response values for new observations.

## 📄 Description

LinearModel stores a fitted linear regression model, including coefficients, predictor names, and response information.

Create this object with fitlm. Use predict to evaluate fitted responses for new predictor values.

## Used function(s)

    fitlm
    predict

## 💡 Example

Fit a linear model and predict two responses.

```matlab
X = [1 1; 2 1; 3 2; 4 3; 5 3; 6 4];
y = 1 + 2 * X(:,1) - X(:,2);
mdl = fitlm(X, y);
yfit = predict(mdl, [7 4; 8 5])
```

## 🔗 See also

[predict](../../statistics/predict.md), [fitlm](../../statistics/fitlm.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
