#import "../nelson_help.typ": *

= nnmf <statistics:8_dimension_reduction_feature_selection.nnmf>

Nonnegative matrix factorization.

== Syntax

- #raw("[W, H] = nnmf(A, k)");
- #raw("[W, H] = nnmf(A, k, Name, Value)");
- #raw("[W, H, D] = nnmf(...)");

== Description

#strong[nnmf]; factors the nonnegative matrix A into nonnegative factors W and H so that W\*H approximates A.

 Supported name-value options are Algorithm, W0, H0, Options, and Replicates. Algorithm can be als or mult. The Options structure can be created with statset and supports Display, MaxIter, TolFun, and TolX.

 The rows of H are normalized to unit length and columns of W are ordered by decreasing length. D is the root mean square residual.


== Example

``````matlab
A = rand(20, 10);
[W, H, D] = nnmf(A, 3)
``````


== See also

#nlink(<statistics:8_dimension_reduction_feature_selection.pca>)[pca];, #nlink(<statistics:9_design_of_experiments.statset>)[statset];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
