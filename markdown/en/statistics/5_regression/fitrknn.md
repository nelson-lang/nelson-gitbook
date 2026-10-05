# fitrknn

Fit a k-nearest-neighbor regression model.

## 📝 Syntax

- mdl = fitrknn(X, Y)
- mdl = fitrknn(X, Y, Name, Value)
- yfit = predict(mdl, Xnew)
- [yfit, D] = predict(mdl, Xnew)

## 📄 Description


<b>fitrknn</b> creates a <b>RegressionKNN</b> object from numeric predictors <b>X</b> and numeric response <b>Y</b>. 

Name-value arguments include <b>NumNeighbors</b>, <b>Distance</b>, <b>DistanceWeight</b>, <b>Standardize</b>, <b>P</b>, <b>Scale</b>, <b>PredictorNames</b>, and <b>ResponseName</b>. Prediction returns weighted neighbor response averages.

## 💡 Example



```matlab
X = [0 0; 0 1; 1 0; 5 5; 5 6; 6 5];
Y = [1; 1.2; 1.1; 10; 10.2; 10.1];
mdl = fitrknn(X, Y, 'NumNeighbors', 3);
yfit = predict(mdl, [0.2 0.1; 5.2 5.1])
```


## 🔗 See also

[fitcknn](../../statistics/6_classification/fitcknn.md), [fitrtree](../../statistics/5_regression/fitrtree.md), [knnsearch](../../statistics/7_clustering_anomaly_detection/knnsearch.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
