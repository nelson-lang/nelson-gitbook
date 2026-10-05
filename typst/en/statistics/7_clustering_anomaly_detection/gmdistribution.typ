#import "../nelson_help.typ": *

= gmdistribution <statistics:7_clustering_anomaly_detection.gmdistribution>

Gaussian mixture distribution.

== Syntax

- #raw("gm = gmdistribution(mu, Sigma)");
- #raw("gm = gmdistribution(mu, Sigma, p)");
- #raw("y = pdf(gm, X)");
- #raw("P = posterior(gm, X)");
- #raw("idx = cluster(gm, X)");
- #raw("R = random(gm, n)");

== Description

#strong[gmdistribution]; creates a Gaussian mixture model object from component means, covariance matrices, and optional component proportions.

 The object supports density evaluation with #strong[pdf];, posterior probabilities with #strong[posterior];, maximum-posterior assignment with #strong[cluster];, and random sampling with #strong[random];.


== Example

Create and evaluate a two-component mixture.

``````matlab
gm = gmdistribution([0; 10], cat(3, 1, 4), [0.25 0.75]);
y = pdf(gm, [0; 10; 5])
P = posterior(gm, [0; 10; 5])
``````


== See also

#nlink(<statistics:7_clustering_anomaly_detection.fitgmdist>)[fitgmdist];, #nlink(<statistics:7_clustering_anomaly_detection.kmeans>)[kmeans];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
