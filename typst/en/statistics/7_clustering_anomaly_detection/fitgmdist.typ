#import "../nelson_help.typ": *

= fitgmdist <statistics:7_clustering_anomaly_detection.fitgmdist>

Fit a Gaussian mixture distribution.

== Syntax

- #raw("gm = fitgmdist(X, k)");
- #raw("gm = fitgmdist(X, k, Name, Value)");

== Description

#strong[fitgmdist]; fits a Gaussian mixture model with #strong[k]; components to the rows of #strong[X]; using expectation maximization.

 Name-value arguments include Start, Replicates, RegularizationValue, CovarianceType, SharedCovariance, MaxIter, TolFun, and Options.


== Example

Fit and cluster a simple mixture.

``````matlab
X = [0; 1; 10; 11];
gm = fitgmdist(X, 2, 'Start', [1; 1; 2; 2]);
idx = cluster(gm, X)
``````


== See also

#nlink(<statistics:7_clustering_anomaly_detection.gmdistribution>)[gmdistribution];, #nlink(<statistics:7_clustering_anomaly_detection.kmeans>)[kmeans];, #nlink(<statistics:7_clustering_anomaly_detection.clusterdata>)[clusterdata];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
