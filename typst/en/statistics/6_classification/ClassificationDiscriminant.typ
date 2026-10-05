#import "../nelson_help.typ": *

= ClassificationDiscriminant <statistics:6_classification.ClassificationDiscriminant>

Discriminant analysis classification model.

== Syntax

- #raw("mdl = fitcdiscr(X, Y)");
- #raw("label = predict(mdl, Xnew)");
- #raw("[label, score, cost] = predict(mdl, Xnew)");

== Input argument

/ X: numeric matrix: rows are observations and columns are predictors.
/ Y: vector: class labels with one label for each row of X.
/ Name, Value: optional name-value arguments accepted by the corresponding fitting function.

== Output argument

/ mdl: classification model object returned by the fitting function.
/ label: predicted class labels for new observations.
/ score: class scores or posterior-like values when the model provides them.

== Description

ClassificationDiscriminant stores a discriminant analysis classifier trained from predictor data and class labels.

 Create this object with fitcdiscr. Use predict to classify new observations when the model supports prediction.


== Used function(s)

fitcdiscr predict

== Example

Train a discriminant classifier and classify two observations.

``````matlab
X = [0 0; 0 1; 1 0; 5 5; 5 6; 6 5];
Y = [1; 1; 1; 2; 2; 2];
mdl = fitcdiscr(X, Y);
label = predict(mdl, [0.2 0.1; 5.2 5.1])
``````


== See also

#nlink(<statistics:5_regression.predict>)[predict];, #nlink(<statistics:6_classification.fitcdiscr>)[fitcdiscr];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
