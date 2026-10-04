# fitctree

Fit a classification decision tree.

## 📝 Syntax

- mdl = fitctree(X, Y)
- mdl = fitctree(X, Y, Name, Value)
- label = predict(mdl, Xnew)
- [label, score, cost, node] = predict(mdl, Xnew)

## 📄 Description

<b>fitctree</b> creates a <b>ClassificationTree</b> object from numeric predictors <b>X</b> and class labels <b>Y</b>.

Name-value arguments include <b>ClassNames</b>, <b>Prior</b>, <b>SplitCriterion</b>, <b>MaxNumSplits</b>, <b>MinLeafSize</b>, and <b>MinParentSize</b>. Numeric predictors are split with binary threshold tests. Prediction returns leaf class scores.

## 💡 Example

```matlab
X = [0 0; 0 1; 1 0; 1 1; 5 5; 5 6; 6 5; 6 6];
Y = [1; 1; 1; 1; 2; 2; 2; 2];
mdl = fitctree(X, Y);
[label, score] = predict(mdl, [0.2 0.1; 5.2 5.1])
```

## 🔗 See also

[fitcknn](../../statistics/fitcknn.md), [fitcnb](../../statistics/fitcnb.md), [fitcdiscr](../../statistics/fitcdiscr.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
