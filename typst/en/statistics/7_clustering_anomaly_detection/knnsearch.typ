#import "../nelson_help.typ": *

= knnsearch <statistics:7_clustering_anomaly_detection.knnsearch>

Find k-nearest neighbors.

== Syntax

- #raw("idx = knnsearch(X, Y)");
- #raw("idx = knnsearch(X, Y, Name, Value)");
- #raw("[idx, D] = knnsearch(...)");

== Description

#strong[knnsearch]; finds nearest rows of #strong[X]; for each query row of #strong[Y]; using an exhaustive native search.

 Supported options include K, Distance, IncludeTies, NSMethod, SortIndices, P, Scale, Cov, BucketSize, and CacheSize. When IncludeTies is true, outputs are cell arrays.


== Example

``````matlab
X = [0 0; 1 0; 0 2; 4 4];
Y = [0 1; 3 4];
[idx, D] = knnsearch(X, Y, 'K', 2)
``````


== See also

#nlink(<statistics:7_clustering_anomaly_detection.pdist>)[pdist];, #nlink(<statistics:7_clustering_anomaly_detection.pdist2>)[pdist2];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
