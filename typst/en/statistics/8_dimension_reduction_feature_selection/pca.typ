#import "../nelson_help.typ": *

= pca <statistics:8_dimension_reduction_feature_selection.pca>

Principal component analysis of raw data.

== Syntax

- #raw("coeff = pca(X)");
- #raw("coeff = pca(X, Name, Value)");
- #raw("[coeff, score, latent] = pca(...)");
- #raw("[coeff, score, latent, tsquared, explained, mu] = pca(...)");

== Description

#strong[pca]; computes principal component coefficients for a numeric data matrix whose rows are observations and columns are variables.

 Name-value arguments include Algorithm, Centered, Economy, NumComponents, Rows, Weights, and VariableWeights. The main computation uses native singular value or eigenvalue decomposition.


== Example

``````matlab
X = [1 2; 3 4; 5 8; 7 11];
[coeff, score, latent] = pca(X)
``````


== See also

#nlink(<linear_algebra:3_eigen_singular_values.svd>)[svd];, #nlink(<statistics:1_descriptive_statistics_visualization.cov>)[cov];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
