# ClassificationSVM

Support vector machine classification model.

## 📝 Syntax

- mdl = fitcsvm(X, Y)
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

ClassificationSVM stores a support vector machine classifier, including support vectors, kernel information, and class data.

Create this object with fitcsvm. Use predict to classify new observations.

## Used function(s)

    fitcsvm
    predict

## 💡 Example

Train a binary support vector classifier and classify two observations.

```matlab
X = [0 0; 0 1; 1 0; 5 5; 5 6; 6 5];
Y = [1; 1; 1; 2; 2; 2];
mdl = fitcsvm(X, Y, 'KernelFunction', 'linear');
label = predict(mdl, [0.2 0.1; 5.2 5.1])
```

## 🔗 See also

[predict](../../statistics/predict.md), [fitcsvm](../../statistics/fitcsvm.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
