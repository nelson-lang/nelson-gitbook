#import "../nelson_help.typ": *

= kmedoids <statistics:7_clustering_anomaly_detection.kmedoids>

Partition data into clusters using medoids.

== Syntax

- #raw("idx = kmedoids(X, k)");
- #raw("[idx, C, sumd, D, midx, info] = kmedoids(...)");

== Description

#strong[kmedoids]; clusters rows of X using a serial PAM-style update loop and Nelson's random generator for random starts.


== Used function(s)

kmeans pdist2 statset rng

== Examples

Cluster observations and return medoid information.

``````matlab
X = [0; 1; 10; 11];
[idx, C, sumd, D, midx, info] = kmedoids(X, 2, 'Start', [1; 3])
``````

Use cityblock distance for two-dimensional observations.

``````matlab
X = [0 0; 0 1; 5 5; 5 6];
[idx, C] = kmedoids(X, 2, 'Start', [0 0; 5 5], 'Distance', 'cityblock')
``````

