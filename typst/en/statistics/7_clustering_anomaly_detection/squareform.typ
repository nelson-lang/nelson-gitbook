#import "../nelson_help.typ": *

= squareform <statistics:7_clustering_anomaly_detection.squareform>

Convert between condensed distance vector and square distance matrix.

== Syntax

- #raw("Z = squareform(D)");
- #raw("D = squareform(Z)");
- #raw("Y = squareform(X, direction)");

== Input argument

/ D: distance vector with n\*(n-1)\/2 elements.
/ Z: square symmetric distance matrix.
/ direction: 'tomatrix' or 'tovector'.

== Description

#strong[squareform]; converts a condensed distance vector to a square symmetric matrix, or the reverse.


== Example

``````matlab
D = [1 2 3];
Z = squareform(D)
D2 = squareform(Z)
``````


== See also

#nlink(<statistics:7_clustering_anomaly_detection.pdist>)[pdist];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
