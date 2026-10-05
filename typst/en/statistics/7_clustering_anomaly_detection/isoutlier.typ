#import "../nelson_help.typ": *

= isoutlier <statistics:7_clustering_anomaly_detection.isoutlier>

Find outliers in numeric data.

== Syntax

- #raw("TF = isoutlier(A)");
- #raw("TF = isoutlier(A, method)");
- #raw("TF = isoutlier(A, 'percentiles', threshold)");
- #raw("TF = isoutlier(A, movmethod, window)");
- #raw("TF = isoutlier(..., dim)");
- #raw("TF = isoutlier(..., Name, Value)");
- #raw("[TF, L, U, C] = isoutlier(...)");

== Description

#strong[isoutlier]; returns a logical array that marks elements detected as outliers.

 The supported methods are #strong[median];, #strong[mean];, #strong[quartiles];, #strong[percentiles];, #strong[grubbs];, #strong[gesd];, #strong[movmedian];, and #strong[movmean];. Numeric #strong[NaN]; values are omitted from threshold estimation and are not marked as outliers.

 Name-value arguments include #strong[ThresholdFactor];, #strong[MaxNumOutliers];, and #strong[SamplePoints];. The additional outputs contain the lower threshold, upper threshold, and center value.


== Examples

``````matlab
A = [57 59 60 100 59 58 57 58 300 61 62 60 62 58 57];
TF = isoutlier(A)
``````

``````matlab
A = [60 59 49 49 58 100 61 57 48 58];
[TF, L, U, C] = isoutlier(A, 'median')
``````

``````matlab
A = [1 1 100 1 1];
t = [1 2 100 101 102];
TF = isoutlier(A, 'movmedian', 3, 'SamplePoints', t)
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.median>)[median];, #nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];, #nlink(<statistics:1_descriptive_statistics_visualization.iqr>)[iqr];, #nlink(<statistics:1_descriptive_statistics_visualization.zscore>)[zscore];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
