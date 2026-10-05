# ClassificationEnsemble

Classification ensemble model.

## 📝 Syntax

- mdl = fitcensemble(X, Y)
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


ClassificationEnsemble stores a classification model that combines multiple weak learners. 

Create this object with fitcensemble. Use predict to aggregate learner responses for new observations.

## Used function(s)


    fitcensemble
    predict
  

## 💡 Example

Train a small classification ensemble and classify two observations.

```matlab
X = [0 0; 0 1; 1 0; 5 5; 5 6; 6 5];
Y = [1; 1; 1; 2; 2; 2];
mdl = fitcensemble(X, Y, 'NumLearningCycles', 3);
label = predict(mdl, [0.2 0.1; 5.2 5.1])
```


## 🔗 See also

[predict](../../statistics/5_regression/predict.md), [fitcensemble](../../statistics/6_classification/fitcensemble.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
