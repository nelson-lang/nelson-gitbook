#import "../nelson_help.typ": *

= rangesearch <statistics:7_clustering_anomaly_detection.rangesearch>

Find all neighbors within a specified distance.

== Syntax

- #raw("idx = rangesearch(X, Y, r)");
- #raw("idx = rangesearch(X, Y, r, Name, Value)");
- #raw("[idx, D] = rangesearch(...)");

== Description

#strong[rangesearch]; finds all rows of #strong[X]; whose distance to each query row of #strong[Y]; is not greater than #strong[r];.

 The search is exhaustive and native. Outputs are column cell arrays. Supported options include Distance, NSMethod, SortIndices, P, Scale, Cov, BucketSize, and CacheSize.


== Example

``````matlab
X = [0 0; 1 0; 0 2; 4 4];
Y = [0 1; 3 4];
[idx, D] = rangesearch(X, Y, 1.1)
``````


== See also

#nlink(<statistics:7_clustering_anomaly_detection.knnsearch>)[knnsearch];, #nlink(<statistics:7_clustering_anomaly_detection.pdist>)[pdist];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
