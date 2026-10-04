# predict

Predict responses or class labels from a fitted model.

## 📝 Syntax

- yfit = predict(mdl, Xnew)
- label = predict(mdl, Xnew)
- [label, score] = predict(mdl, Xnew)

## 📥 Input argument

- mdl - a fitted model object, such as a LinearModel, GeneralizedLinearModel, or one of the regression or classification model objects returned by the fit functions.
- Xnew - numeric matrix of new observations: rows are observations and columns are predictors, matching the predictors used to train mdl.

## 📤 Output argument

- yfit - predicted response values for the observations in Xnew (regression models).
- label - predicted class labels for the observations in Xnew (classification models).
- score - classification scores for each observation and class (classification models that provide scores).

## 📄 Description

<b>predict</b> is the common method used to evaluate a fitted model on new predictor data.

For regression models (for example the object returned by <b>fitlm</b> or <b>fitglm</b>), <b>predict</b> returns the predicted response <b>yfit</b> for each row of <b>Xnew</b>.

For classification models (for example the object returned by <b>fitcsvm</b> or <b>fitctree</b>), <b>predict</b> returns the predicted class <b>label</b> for each observation, and optionally a matrix of classification <b>score</b> values.

The columns of <b>Xnew</b> must correspond to the predictors used when the model was fitted.

## 💡 Example

Predict responses from a fitted linear model.

```matlab
X = [1 2; 2 1; 3 4; 4 3];
y = [3; 3; 7; 7];
mdl = fitlm(X, y);
yfit = predict(mdl, [7 4; 8 5])
```

## 🔗 See also

[fitlm](../../statistics/fitlm.md), [fitglm](../../statistics/fitglm.md), [fitcsvm](../../statistics/fitcsvm.md), [fitctree](../../statistics/fitctree.md), [LinearModel](../../statistics/LinearModel.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
