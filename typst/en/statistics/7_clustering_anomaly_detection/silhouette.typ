#import "../nelson_help.typ": *

= silhouette <statistics:7_clustering_anomaly_detection.silhouette>

Silhouette values for clustered data.

== Syntax

- #raw("s = silhouette(X, clust)");
- #raw("s = silhouette(X, clust, distance)");
- #raw("[s, h] = silhouette(...)");

== Description

#strong[silhouette]; computes silhouette values from pairwise distances. Plot handles are returned as an empty array.


== Used function(s)

pdist2 kmeans kmedoids

== Examples

Compute silhouette values for two compact clusters.

``````matlab
X = [0; 1; 10; 11];
clust = [1; 1; 2; 2];
s = silhouette(X, clust)
``````

Compute silhouettes after k-means clustering.

``````matlab
X = [0 0; 0 1; 5 5; 5 6];
idx = kmeans(X, 2, 'Start', [0 0; 5 5]);
s = silhouette(X, idx, 'cityblock')
``````

