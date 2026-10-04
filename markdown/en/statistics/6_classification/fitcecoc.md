# fitcecoc

Fit a multiclass error-correcting output code classifier.

## 📝 Syntax

- mdl = fitcecoc(X, Y)
- mdl = fitcecoc(X, Y, Name, Value)
- label = predict(mdl, Xnew)
- [label, score] = predict(mdl, Xnew)

## 📄 Description

<b>fitcecoc</b> creates a <b>ClassificationECOC</b> object from numeric predictors <b>X</b> and class labels <b>Y</b>.

The current classifier uses one-versus-one binary <b>fitcsvm</b> learners. Name-value arguments include <b>ClassNames</b>, <b>KernelFunction</b>, <b>KernelScale</b>, <b>PolynomialOrder</b>, <b>BoxConstraint</b>, <b>Standardize</b>, <b>IterationLimit</b>, and <b>Tolerance</b>.

## 💡 Example

```matlab
X = [0 0; 0 1; 5 5; 5 6; 10 0; 10 1];
Y = [1; 1; 2; 2; 3; 3];
mdl = fitcecoc(X, Y);
[label, score] = predict(mdl, [0.2 0.2; 5.2 5.2; 10.2 0.2])
```

## 🔗 See also

[fitcsvm](../../statistics/fitcsvm.md), [fitcknn](../../statistics/fitcknn.md), [fitctree](../../statistics/fitctree.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
