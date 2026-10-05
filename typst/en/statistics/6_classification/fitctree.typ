#import "../nelson_help.typ": *

= fitctree <statistics:6_classification.fitctree>

Fit a classification decision tree.

== Syntax

- #raw("mdl = fitctree(X, Y)");
- #raw("mdl = fitctree(X, Y, Name, Value)");
- #raw("label = predict(mdl, Xnew)");
- #raw("[label, score, cost, node] = predict(mdl, Xnew)");

== Description

#strong[fitctree]; creates a #strong[ClassificationTree]; object from numeric predictors #strong[X]; and class labels #strong[Y];.

 Name-value arguments include #strong[ClassNames];, #strong[Prior];, #strong[SplitCriterion];, #strong[MaxNumSplits];, #strong[MinLeafSize];, and #strong[MinParentSize];. Numeric predictors are split with binary threshold tests. Prediction returns leaf class scores.


== Example

``````matlab
X = [0 0; 0 1; 1 0; 1 1; 5 5; 5 6; 6 5; 6 6];
Y = [1; 1; 1; 1; 2; 2; 2; 2];
mdl = fitctree(X, Y);
[label, score] = predict(mdl, [0.2 0.1; 5.2 5.1])
``````


== See also

#nlink(<statistics:6_classification.fitcknn>)[fitcknn];, #nlink(<statistics:6_classification.fitcnb>)[fitcnb];, #nlink(<statistics:6_classification.fitcdiscr>)[fitcdiscr];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
