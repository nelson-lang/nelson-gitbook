#import "../nelson_help.typ": *

= ClassificationNaiveBayes <statistics:6_classification.ClassificationNaiveBayes>

Naive Bayes classification model.

== Syntax

- #raw("mdl = fitcnb(X, Y)");
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

ClassificationNaiveBayes stores a naive Bayes classifier with class prior probabilities and predictor distribution information.

 Create this object with fitcnb. Use predict to classify new observations.


== Used function(s)

fitcnb predict

== Example

Train a naive Bayes classifier and classify two observations.

``````matlab
X = [0 0; 0 1; 1 0; 5 5; 5 6; 6 5];
Y = [1; 1; 1; 2; 2; 2];
mdl = fitcnb(X, Y);
label = predict(mdl, [0.2 0.1; 5.2 5.1])
``````


== See also

#nlink(<statistics:5_regression.predict>)[predict];, #nlink(<statistics:6_classification.fitcnb>)[fitcnb];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
