#import "../nelson_help.typ": *

= mdscale <statistics:8_dimension_reduction_feature_selection.mdscale>

Nonclassical multidimensional scaling.

== Syntax

- #raw("Y = mdscale(D, p)");
- #raw("Y = mdscale(D, p, Name, Value)");
- #raw("[Y, stress] = mdscale(...)");
- #raw("[Y, stress, disparities] = mdscale(...)");

== Description

#strong[mdscale]; computes a multidimensional scaling configuration from a dissimilarity matrix or distance vector.

 Name-value options include Criterion, Weights, Start, Replicates, and Options. Supported criteria are stress, sstress, metricstress, metricsstress, sammon, and strain.

 NaN dissimilarities are treated as missing values. The Options structure can be created with statset and supports Display, MaxIter, TolFun, and TolX.


== Example

``````matlab
X = [0 0; 1 0; 0 2; 2 2];
D = pdist(X);
[Y, stress, disparities] = mdscale(D, 2)
``````


== See also

#nlink(<statistics:8_dimension_reduction_feature_selection.cmdscale>)[cmdscale];, #nlink(<statistics:7_clustering_anomaly_detection.pdist>)[pdist];, #nlink(<statistics:7_clustering_anomaly_detection.squareform>)[squareform];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
