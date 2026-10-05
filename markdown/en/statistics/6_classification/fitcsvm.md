# fitcsvm

Fit a binary support vector machine classifier.

## 📝 Syntax

- mdl = fitcsvm(X, Y)
- mdl = fitcsvm(X, Y, Name, Value)
- label = predict(mdl, Xnew)
- [label, score] = predict(mdl, Xnew)

## 📄 Description


<b>fitcsvm</b> creates a <b>ClassificationSVM</b> object from numeric predictors <b>X</b> and two-class labels <b>Y</b>. 

Name-value arguments include <b>ClassNames</b>, <b>KernelFunction</b>, <b>KernelScale</b>, <b>PolynomialOrder</b>, <b>BoxConstraint</b>, <b>Cost</b>, <b>Standardize</b>, <b>IterationLimit</b>, <b>Tolerance</b>, and <b>PredictorNames</b>. Supported kernels are <b>linear</b>, <b>gaussian</b>, <b>rbf</b>, and <b>polynomial</b>.

## 💡 Example



```matlab
X = [0 0; 0 1; 1 0; 1 1; 5 5; 5 6; 6 5; 6 6];
Y = [1; 1; 1; 1; 2; 2; 2; 2];
mdl = fitcsvm(X, Y, 'KernelFunction', 'linear');
[label, score] = predict(mdl, [0.2 0.2; 5.2 5.2])
```


## 🔗 See also

[fitcknn](../../statistics/6_classification/fitcknn.md), [fitcdiscr](../../statistics/6_classification/fitcdiscr.md), [fitctree](../../statistics/6_classification/fitctree.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
