#import "../nelson_help.typ": *

= predict <statistics:5_regression.predict>

Predict responses or class labels from a fitted model.

== Syntax

- #raw("yfit = predict(mdl, Xnew)");
- #raw("label = predict(mdl, Xnew)");
- #raw("[label, score] = predict(mdl, Xnew)");

== Input argument

/ mdl: a fitted model object, such as a LinearModel, GeneralizedLinearModel, or one of the regression or classification model objects returned by the fit functions.
/ Xnew: numeric matrix of new observations: rows are observations and columns are predictors, matching the predictors used to train mdl.

== Output argument

/ yfit: predicted response values for the observations in Xnew (regression models).
/ label: predicted class labels for the observations in Xnew (classification models).
/ score: classification scores for each observation and class (classification models that provide scores).

== Description

#strong[predict]; is the common method used to evaluate a fitted model on new predictor data.

 For regression models (for example the object returned by #strong[fitlm]; or #strong[fitglm];), #strong[predict]; returns the predicted response #strong[yfit]; for each row of #strong[Xnew];.

 For classification models (for example the object returned by #strong[fitcsvm]; or #strong[fitctree];), #strong[predict]; returns the predicted class #strong[label]; for each observation, and optionally a matrix of classification #strong[score]; values.

 The columns of #strong[Xnew]; must correspond to the predictors used when the model was fitted.


== Example

Predict responses from a fitted linear model.

``````matlab
X = [1 2; 2 1; 3 4; 4 3];
y = [3; 3; 7; 7];
mdl = fitlm(X, y);
yfit = predict(mdl, [7 4; 8 5])
``````


== See also

#nlink(<statistics:5_regression.fitlm>)[fitlm];, #nlink(<statistics:5_regression.fitglm>)[fitglm];, #nlink(<statistics:6_classification.fitcsvm>)[fitcsvm];, #nlink(<statistics:6_classification.fitctree>)[fitctree];, #nlink(<statistics:5_regression.LinearModel>)[LinearModel];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
