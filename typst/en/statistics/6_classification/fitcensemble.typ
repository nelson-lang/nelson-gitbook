#import "../nelson_help.typ": *

= fitcensemble <statistics:6_classification.fitcensemble>

Fit an ensemble classifier.

== Syntax

- #raw("mdl = fitcensemble(X, Y)");
- #raw("mdl = fitcensemble(X, Y, Name, Value)");
- #raw("label = predict(mdl, Xnew)");
- #raw("[label, score] = predict(mdl, Xnew)");

== Description

#strong[fitcensemble]; creates a #strong[ClassificationEnsemble]; object from numeric predictors #strong[X]; and class labels #strong[Y];.

 The current implementation supports #strong[Bag]; ensembles of tree learners. Name-value arguments include #strong[ClassNames];, #strong[Method];, #strong[Learners];, #strong[NumLearningCycles];, #strong[MaxNumSplits];, #strong[MinLeafSize];, and #strong[MinParentSize];.


== Example

``````matlab
X = [0 0; 0 1; 5 5; 5 6; 10 0; 10 1];
Y = [1; 1; 2; 2; 3; 3];
mdl = fitcensemble(X, Y, 'NumLearningCycles', 5);
[label, score] = predict(mdl, [0.2 0.2; 5.2 5.2; 10.2 0.2])
``````


== See also

#nlink(<statistics:6_classification.fitctree>)[fitctree];, #nlink(<statistics:6_classification.fitcecoc>)[fitcecoc];, #nlink(<statistics:6_classification.fitcknn>)[fitcknn];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
