# fitcensemble

Fit an ensemble classifier.

## 📝 Syntax

- mdl = fitcensemble(X, Y)
- mdl = fitcensemble(X, Y, Name, Value)
- label = predict(mdl, Xnew)
- [label, score] = predict(mdl, Xnew)

## 📄 Description


<b>fitcensemble</b> creates a <b>ClassificationEnsemble</b> object from numeric predictors <b>X</b> and class labels <b>Y</b>. 

The current implementation supports <b>Bag</b> ensembles of tree learners. Name-value arguments include <b>ClassNames</b>, <b>Method</b>, <b>Learners</b>, <b>NumLearningCycles</b>, <b>MaxNumSplits</b>, <b>MinLeafSize</b>, and <b>MinParentSize</b>.

## 💡 Example



```matlab
X = [0 0; 0 1; 5 5; 5 6; 10 0; 10 1];
Y = [1; 1; 2; 2; 3; 3];
mdl = fitcensemble(X, Y, 'NumLearningCycles', 5);
[label, score] = predict(mdl, [0.2 0.2; 5.2 5.2; 10.2 0.2])
```


## 🔗 See also

[fitctree](../../statistics/6_classification/fitctree.md), [fitcecoc](../../statistics/6_classification/fitcecoc.md), [fitcknn](../../statistics/6_classification/fitcknn.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
