#import "../nelson_help.typ": *

= ppca <statistics:8_dimension_reduction_feature_selection.ppca>

Probabilistic principal component analysis.

== Syntax

- #raw("[coeff, score, pcvar] = ppca(Y, K)");
- #raw("[coeff, score, pcvar, mu, v, S] = ppca(Y, K, Name, Value)");

== Description

#strong[ppca]; computes a probabilistic principal component model for a real data matrix. Missing values encoded as NaN are estimated iteratively.

 Supported name-value options are W0, v0, and Options. The Options structure can be created with statset and supports Display, MaxIter, TolFun, and TolX.

 The structure S contains W, Xexp, Recon, v, NumIter, RMSResid, and nloglk fields.


== Example

``````matlab
Y = [1 2 3; 2 NaN 5; 4 5 8; 5 7 NaN; 7 8 13];
[coeff, score, pcvar, mu, v, S] = ppca(Y, 2)
``````


== See also

#nlink(<statistics:8_dimension_reduction_feature_selection.pca>)[pca];, #nlink(<statistics:8_dimension_reduction_feature_selection.pcacov>)[pcacov];, #nlink(<statistics:9_design_of_experiments.statset>)[statset];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
