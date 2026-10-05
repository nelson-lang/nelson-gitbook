#import "../nelson_help.typ": *

= pcares <statistics:8_dimension_reduction_feature_selection.pcares>

Residuals from principal component analysis.

== Syntax

- #raw("residuals = pcares(X, NumComponents)");
- #raw("[residuals, reconstructed] = pcares(X, NumComponents)");

== Description

#strong[pcares]; returns residuals obtained by retaining the requested number of principal components of the data matrix X.

 The reconstructed output is the low-dimensional approximation of X, and residuals is equal to X minus reconstructed.


== Example

``````matlab
X = [1 2; 3 4; 5 8; 7 11];
[residuals, reconstructed] = pcares(X, 1)
``````


== See also

#nlink(<statistics:8_dimension_reduction_feature_selection.pca>)[pca];, #nlink(<statistics:8_dimension_reduction_feature_selection.pcacov>)[pcacov];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
