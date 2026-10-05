#import "../nelson_help.typ": *

= rotatefactors <statistics:8_dimension_reduction_feature_selection.rotatefactors>

Rotate factor loadings.

== Syntax

- #raw("B = rotatefactors(X)");
- #raw("B = rotatefactors(X, Name, Value)");
- #raw("[B, T] = rotatefactors(...)");

== Description

#strong[rotatefactors]; rotates factor loading columns. Supported methods include varimax, quartimax, equamax, parsimax, orthomax, promax, procrustes, and pattern.

 Name-value arguments include Method, Normalize, RelTol, MaxIt, Coeff, Power, Target, and Type.


== Example

``````matlab
X = [0.8 0.2; 0.7 -0.1; 0.1 0.9; 0.2 0.8];
[B, T] = rotatefactors(X)
``````


== See also

#nlink(<statistics:8_dimension_reduction_feature_selection.factoran>)[factoran];, #nlink(<statistics:8_dimension_reduction_feature_selection.pca>)[pca];, #nlink(<statistics:8_dimension_reduction_feature_selection.pcacov>)[pcacov];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
