#import "../nelson_help.typ": *

= fitcsvm <statistics:6_classification.fitcsvm>

Fit a binary support vector machine classifier.

== Syntax

- #raw("mdl = fitcsvm(X, Y)");
- #raw("mdl = fitcsvm(X, Y, Name, Value)");
- #raw("label = predict(mdl, Xnew)");
- #raw("[label, score] = predict(mdl, Xnew)");

== Description

#strong[fitcsvm]; creates a #strong[ClassificationSVM]; object from numeric predictors #strong[X]; and two-class labels #strong[Y];.

 Name-value arguments include #strong[ClassNames];, #strong[KernelFunction];, #strong[KernelScale];, #strong[PolynomialOrder];, #strong[BoxConstraint];, #strong[Cost];, #strong[Standardize];, #strong[IterationLimit];, #strong[Tolerance];, and #strong[PredictorNames];. Supported kernels are #strong[linear];, #strong[gaussian];, #strong[rbf];, and #strong[polynomial];.


== Example

``````matlab
X = [0 0; 0 1; 1 0; 1 1; 5 5; 5 6; 6 5; 6 6];
Y = [1; 1; 1; 1; 2; 2; 2; 2];
mdl = fitcsvm(X, Y, 'KernelFunction', 'linear');
[label, score] = predict(mdl, [0.2 0.2; 5.2 5.2])
``````


== See also

#nlink(<statistics:6_classification.fitcknn>)[fitcknn];, #nlink(<statistics:6_classification.fitcdiscr>)[fitcdiscr];, #nlink(<statistics:6_classification.fitctree>)[fitctree];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
