#import "../nelson_help.typ": *

= KDTreeSearcher <statistics:7_clustering_anomaly_detection.KDTreeSearcher>

Nearest neighbor searcher object.

== Syntax

- #raw("Mdl = KDTreeSearcher(X)");
- #raw("Mdl = KDTreeSearcher(X, Name, Value)");
- #raw("[idx, D] = knnsearch(Mdl, Y, Name, Value)");
- #raw("[idx, D] = rangesearch(Mdl, Y, radius, Name, Value)");

== Input argument

/ X: the data to search, as a real numeric matrix with one point per row.
/ Name, Value: options: #strong[Distance]; (default #strong['euclidean'];), #strong[P]; (Minkowski exponent) and #strong[BucketSize];.

== Output argument

/ Mdl: a KDTreeSearcher object holding the data and the search options.

== Description

#strong[KDTreeSearcher]; stores a set of points and the distance metric used to query them, so that nearest neighbor searches can be run against the same data with #strong[knnsearch]; and #strong[rangesearch];. The object exposes the properties #strong[X];, #strong[Distance];, #strong[DistParameter]; and #strong[BucketSize];.

 The searches delegate to the #strong[knnsearch]; and #strong[rangesearch]; functions, forwarding the distance metric stored on the object.


== Example

``````matlab
X = [0 0; 1 0; 0 2; 4 4];
Mdl = KDTreeSearcher(X);
[idx, D] = knnsearch(Mdl, [0 1; 3 4], 'K', 2)
``````


== See also

#nlink(<statistics:7_clustering_anomaly_detection.knnsearch>)[knnsearch];, #nlink(<statistics:7_clustering_anomaly_detection.rangesearch>)[rangesearch];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
