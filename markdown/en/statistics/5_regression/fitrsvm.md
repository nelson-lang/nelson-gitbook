# fitrsvm

Fit a support vector regression model.

## 📝 Syntax

- mdl = fitrsvm(X, Y)
- mdl = fitrsvm(X, Y, Name, Value)
- yfit = predict(mdl, Xnew)

## 📄 Description


<b>fitrsvm</b> creates a <b>RegressionSVM</b> object from numeric predictors <b>X</b> and numeric response <b>Y</b>. 

Name-value arguments include <b>KernelFunction</b>, <b>KernelScale</b>, <b>PolynomialOrder</b>, <b>BoxConstraint</b>, <b>Epsilon</b>, <b>Standardize</b>, <b>PredictorNames</b>, and <b>ResponseName</b>. Supported kernels are <b>linear</b>, <b>gaussian</b>, <b>rbf</b>, and <b>polynomial</b>.

## 💡 Example



```matlab
X = [0; 1; 2; 3; 4; 5];
Y = [1; 1.2; 3; 3.2; 9; 9.1];
mdl = fitrsvm(X, Y, 'KernelFunction', 'gaussian');
yfit = predict(mdl, [1.5; 4.5])
```


## 🔗 See also

[fitcsvm](../../statistics/6_classification/fitcsvm.md), [fitrknn](../../statistics/5_regression/fitrknn.md), [fitrtree](../../statistics/5_regression/fitrtree.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
