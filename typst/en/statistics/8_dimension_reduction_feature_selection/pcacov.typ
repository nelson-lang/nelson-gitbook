#import "../nelson_help.typ": *

= pcacov <statistics:8_dimension_reduction_feature_selection.pcacov>

Principal component analysis on a covariance matrix.

== Syntax

- #raw("coeff = pcacov(V)");
- #raw("[coeff, latent] = pcacov(V)");
- #raw("[coeff, latent, explained] = pcacov(V)");

== Description

#strong[pcacov]; performs principal component analysis on a square covariance matrix.

 The coefficients are returned in columns ordered by decreasing component variance. The vector latent contains the eigenvalues of V, and explained contains the percentage of total variance represented by each component.


== Example

``````matlab
V = [4 2; 2 3];
[coeff, latent, explained] = pcacov(V)
``````


== See also

#nlink(<statistics:8_dimension_reduction_feature_selection.pca>)[pca];, #nlink(<statistics:1_descriptive_statistics_visualization.cov>)[cov];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
