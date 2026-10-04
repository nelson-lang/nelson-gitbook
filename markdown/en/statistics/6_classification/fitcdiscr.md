# fitcdiscr

Fit a discriminant analysis classifier.

## 📝 Syntax

- mdl = fitcdiscr(X, Y)
- mdl = fitcdiscr(X, Y, Name, Value)
- label = predict(mdl, Xnew)
- [label, score, cost] = predict(mdl, Xnew)

## 📄 Description

<b>fitcdiscr</b> creates a <b>ClassificationDiscriminant</b> object from numeric predictors <b>X</b> and class labels <b>Y</b>.

Name-value arguments include <b>ClassNames</b>, <b>Prior</b>, <b>DiscrimType</b>, <b>Gamma</b>, and <b>Delta</b>. Supported discriminant types are linear, quadratic, diaglinear, and diagquadratic. Prediction returns posterior class scores.

## 💡 Example

```matlab
X = [0 0; 0 1; 1 0; 1 1; 5 5; 5 6; 6 5; 6 6];
Y = [1; 1; 1; 1; 2; 2; 2; 2];
mdl = fitcdiscr(X, Y);
[label, score] = predict(mdl, [0.2 0.1; 5.2 5.1])
```

## 🔗 See also

[fitcknn](../../statistics/fitcknn.md), [fitcnb](../../statistics/fitcnb.md), [grp2idx](../../statistics/grp2idx.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
