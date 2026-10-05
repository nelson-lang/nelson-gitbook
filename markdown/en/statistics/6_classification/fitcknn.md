# fitcknn

Fit a k-nearest neighbor classifier.

## 📝 Syntax

- mdl = fitcknn(X, Y)
- mdl = fitcknn(X, Y, Name, Value)
- label = predict(mdl, Xnew)
- [label, score, cost] = predict(mdl, Xnew)

## 📄 Description


<b>fitcknn</b> creates a <b>ClassificationKNN</b> object from numeric predictors <b>X</b> and class labels <b>Y</b>. 

Name-value arguments include <b>NumNeighbors</b>, <b>Distance</b>, <b>DistanceWeight</b>, <b>Standardize</b>, <b>P</b>, <b>Scale</b>, and <b>ClassNames</b>. Prediction uses native nearest-neighbor search and returns class scores normalized across classes.

## 💡 Example



```matlab
X = [0 0; 0 1; 1 0; 5 5; 5 6; 6 5];
Y = [1; 1; 1; 2; 2; 2];
mdl = fitcknn(X, Y, 'NumNeighbors', 3);
[label, score] = predict(mdl, [0.2 0.1; 5.2 5.1])
```


## 🔗 See also

[knnsearch](../../statistics/7_clustering_anomaly_detection/knnsearch.md), [fitgmdist](../../statistics/7_clustering_anomaly_detection/fitgmdist.md), [grp2idx](../../statistics/6_classification/grp2idx.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
