#import "../nelson_help.typ": *

= fitcecoc <statistics:6_classification.fitcecoc>

Fit a multiclass error-correcting output code classifier.

== Syntax

- #raw("mdl = fitcecoc(X, Y)");
- #raw("mdl = fitcecoc(X, Y, Name, Value)");
- #raw("label = predict(mdl, Xnew)");
- #raw("[label, score] = predict(mdl, Xnew)");

== Description

#strong[fitcecoc]; creates a #strong[ClassificationECOC]; object from numeric predictors #strong[X]; and class labels #strong[Y];.

 The current classifier uses one-versus-one binary #strong[fitcsvm]; learners. Name-value arguments include #strong[ClassNames];, #strong[KernelFunction];, #strong[KernelScale];, #strong[PolynomialOrder];, #strong[BoxConstraint];, #strong[Standardize];, #strong[IterationLimit];, and #strong[Tolerance];.


== Example

``````matlab
X = [0 0; 0 1; 5 5; 5 6; 10 0; 10 1];
Y = [1; 1; 2; 2; 3; 3];
mdl = fitcecoc(X, Y);
[label, score] = predict(mdl, [0.2 0.2; 5.2 5.2; 10.2 0.2])
``````


== See also

#nlink(<statistics:6_classification.fitcsvm>)[fitcsvm];, #nlink(<statistics:6_classification.fitcknn>)[fitcknn];, #nlink(<statistics:6_classification.fitctree>)[fitctree];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
