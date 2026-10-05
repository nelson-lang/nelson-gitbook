# fitcnb

Fit a naive Bayes classifier.

## 📝 Syntax

- mdl = fitcnb(X, Y)
- mdl = fitcnb(X, Y, Name, Value)
- label = predict(mdl, Xnew)
- [label, score, cost] = predict(mdl, Xnew)

## 📄 Description


<b>fitcnb</b> creates a <b>ClassificationNaiveBayes</b> object from numeric predictors <b>X</b> and class labels <b>Y</b>. 

The current implementation fits normal predictor distributions. Name-value arguments include <b>ClassNames</b>, <b>Prior</b>, <b>DistributionNames</b>, and <b>Weights</b>. Prediction returns posterior class scores.

## 💡 Example



```matlab
X = [0 0; 0 1; 1 0; 5 5; 5 6; 6 5];
Y = [1; 1; 1; 2; 2; 2];
mdl = fitcnb(X, Y);
[label, score] = predict(mdl, [0.2 0.1; 5.2 5.1])
```


## 🔗 See also

[fitcknn](../../statistics/6_classification/fitcknn.md), [grp2idx](../../statistics/6_classification/grp2idx.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
