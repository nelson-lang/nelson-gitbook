#import "../nelson_help.typ": *

= factoran <statistics:8_dimension_reduction_feature_selection.factoran>

Factor analysis.

== Syntax

- #raw("lambda = factoran(X, m)");
- #raw("lambda = factoran(X, m, Name, Value)");
- #raw("[lambda, psi, T, stats, F] = factoran(...)");

== Description

#strong[factoran]; estimates factor loadings for a real numeric data matrix or covariance matrix.

 Name-value arguments include Xtype, Rotate, Scores, Start, Options, and Coeff. Supported rotations include varimax, quartimax, equamax, parsimax, orthomax, and none.


== Example

``````matlab
X = [1 2 3; 2 3 5; 4 5 8; 5 7 11; 7 8 13; 8 10 16];
[lambda, psi, T, stats, F] = factoran(X, 2)
``````


== See also

#nlink(<statistics:8_dimension_reduction_feature_selection.pca>)[pca];, #nlink(<statistics:8_dimension_reduction_feature_selection.pcacov>)[pcacov];, #nlink(<statistics:8_dimension_reduction_feature_selection.ppca>)[ppca];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
