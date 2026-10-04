# fitrensemble

Fit an ensemble regression model.

## 📝 Syntax

- mdl = fitrensemble(X, Y)
- mdl = fitrensemble(X, Y, Name, Value)
- yfit = predict(mdl, Xnew)

## 📄 Description

<b>fitrensemble</b> creates a <b>RegressionEnsemble</b> object from numeric predictors <b>X</b> and numeric response <b>Y</b>.

The current implementation supports <b>Bag</b> and <b>LSBoost</b> ensembles of tree learners. Name-value arguments include <b>Method</b>, <b>Learners</b>, <b>NumLearningCycles</b>, <b>LearnRate</b>, <b>MaxNumSplits</b>, <b>MinLeafSize</b>, <b>MinParentSize</b>, <b>PredictorNames</b>, and <b>ResponseName</b>.

## 💡 Example

```matlab
X = [0; 1; 2; 3; 4; 5];
Y = [1; 1.2; 3; 3.2; 9; 9.1];
mdl = fitrensemble(X, Y, 'NumLearningCycles', 5);
yfit = predict(mdl, [1.5; 4.5])
```

## 🔗 See also

[fitrtree](../../statistics/fitrtree.md), [fitrknn](../../statistics/fitrknn.md), [fitrsvm](../../statistics/fitrsvm.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
