# ClassificationKNN

K-nearest neighbor classification model.

## 📝 Syntax

- mdl = fitcknn(X, Y)
- mdl = fitcknn(X, Y, Name, Value)
- label = predict(mdl, Xnew)
- [label, score, cost] = predict(mdl, Xnew)

## 📥 Input argument

- X - numeric matrix: rows are observations and columns are predictors.
- Y - vector: class labels with one label for each row of X.
- Name, Value - optional name-value arguments accepted by the corresponding fitting function.

## 📤 Output argument

- mdl - classification model object returned by the fitting function.
- label - predicted class labels for new observations.
- score - class scores or posterior-like values when the model provides them.

## 📄 Description


ClassificationKNN stores a nearest-neighbor classifier with its training predictors, class labels, distance metric, and neighbor count. 

Create this object with fitcknn. Use predict to classify observations from their nearest neighbors.

## Used function(s)


    fitcknn
    predict
  

## 💡 Example

Train a nearest-neighbor classifier and classify two observations.

```matlab
X = [0 0; 0 1; 1 0; 5 5; 5 6; 6 5];
Y = [1; 1; 1; 2; 2; 2];
mdl = fitcknn(X, Y, 'NumNeighbors', 3);
label = predict(mdl, [0.2 0.1; 5.2 5.1])
```


## 🔗 See also

[predict](../../statistics/5_regression/predict.md), [fitcknn](../../statistics/6_classification/fitcknn.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
