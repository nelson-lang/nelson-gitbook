# ClassificationECOC

Error-correcting output codes classification model.

## 📝 Syntax

- mdl = fitcecoc(X, Y)
- label = predict(mdl, Xnew)
- [label, score] = predict(mdl, Xnew)

## 📥 Input argument

- X - numeric matrix: rows are observations and columns are predictors.
- Y - vector: class labels with one label for each row of X.
- Name, Value - optional name-value arguments accepted by the corresponding fitting function.

## 📤 Output argument

- mdl - classification model object returned by the fitting function.
- label - predicted class labels for new observations.
- score - class scores or posterior-like values when the model provides them.

## 📄 Description

ClassificationECOC stores a multiclass classifier represented by a set of binary learners and a coding design.

Create this object with fitcecoc. Use predict to classify new observations.

## Used function(s)

    fitcecoc
    predict

## 💡 Example

Train a multiclass classifier and classify three observations.

```matlab
X = [0 0; 0 1; 1 0; 5 5; 5 6; 6 5; 9 0; 9 1; 8 0];
Y = [1; 1; 1; 2; 2; 2; 3; 3; 3];
mdl = fitcecoc(X, Y);
label = predict(mdl, [0.2 0.1; 5.2 5.1; 8.8 0.2])
```

## 🔗 See also

[predict](../../statistics/predict.md), [fitcecoc](../../statistics/fitcecoc.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
