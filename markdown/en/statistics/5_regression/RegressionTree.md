# RegressionTree

Decision tree regression model.

## 📝 Syntax

- mdl = fitrtree(X, y)
- yfit = predict(mdl, Xnew)
- [yfit, node] = predict(mdl, Xnew)

## 📥 Input argument

- X - numeric matrix: rows are observations and columns are predictors.
- y - numeric vector: response values with one value for each row of X.
- Name, Value - optional name-value arguments accepted by the corresponding fitting function.

## 📤 Output argument

- mdl - regression model object returned by the fitting function.
- yfit - predicted response values for new observations.

## 📄 Description


RegressionTree stores a regression tree built from predictor data and a numeric response. 

Create this object with fitrtree. Use predict to estimate responses for new observations.

## Used function(s)


    fitrtree
    predict
  

## 💡 Example

Train a regression tree and predict two responses.

```matlab
X = [1 1; 2 1; 3 2; 4 3; 5 3; 6 4];
y = 1 + 2 * X(:,1) - X(:,2);
mdl = fitrtree(X, y);
yfit = predict(mdl, [7 4; 8 5])
```


## 🔗 See also

[predict](../../statistics/5_regression/predict.md), [fitrtree](../../statistics/5_regression/fitrtree.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
