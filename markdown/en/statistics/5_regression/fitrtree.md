# fitrtree

Fit a regression decision tree.

## 📝 Syntax

- mdl = fitrtree(X, Y)
- mdl = fitrtree(X, Y, Name, Value)
- yfit = predict(mdl, Xnew)
- [yfit, node] = predict(mdl, Xnew)

## 📄 Description


<b>fitrtree</b> creates a <b>RegressionTree</b> object from numeric predictors <b>X</b> and numeric response <b>Y</b>. 

Name-value arguments include <b>MaxNumSplits</b>, <b>MinLeafSize</b>, <b>MinParentSize</b>, <b>PredictorNames</b>, and <b>ResponseName</b>. Numeric predictors are split with binary threshold tests that reduce squared error.

## 💡 Example



```matlab
X = [0; 1; 2; 3; 4; 5];
Y = [1; 1.2; 3; 3.2; 9; 9.1];
mdl = fitrtree(X, Y, 'MaxNumSplits', 2);
yfit = predict(mdl, [1.5; 4.5])
```


## 🔗 See also

[fitctree](../../statistics/6_classification/fitctree.md), [fitlm](../../statistics/5_regression/fitlm.md), [fitglm](../../statistics/5_regression/fitglm.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
