#import "../nelson_help.typ": *

= fitcnb <statistics:6_classification.fitcnb>

Fit a naive Bayes classifier.

== Syntax

- #raw("mdl = fitcnb(X, Y)");
- #raw("mdl = fitcnb(X, Y, Name, Value)");
- #raw("label = predict(mdl, Xnew)");
- #raw("[label, score, cost] = predict(mdl, Xnew)");

== Description

#strong[fitcnb]; creates a #strong[ClassificationNaiveBayes]; object from numeric predictors #strong[X]; and class labels #strong[Y];.

 The current implementation fits normal predictor distributions. Name-value arguments include #strong[ClassNames];, #strong[Prior];, #strong[DistributionNames];, and #strong[Weights];. Prediction returns posterior class scores.


== Example

``````matlab
X = [0 0; 0 1; 1 0; 5 5; 5 6; 6 5];
Y = [1; 1; 1; 2; 2; 2];
mdl = fitcnb(X, Y);
[label, score] = predict(mdl, [0.2 0.1; 5.2 5.1])
``````


== See also

#nlink(<statistics:6_classification.fitcknn>)[fitcknn];, #nlink(<statistics:6_classification.grp2idx>)[grp2idx];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
