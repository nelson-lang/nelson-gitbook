#import "../nelson_help.typ": *

= rmoutliers <statistics:7_clustering_anomaly_detection.rmoutliers>

Detect and remove outliers from numeric data.

== Syntax

- #raw("B = rmoutliers(A)");
- #raw("B = rmoutliers(A, method)");
- #raw("B = rmoutliers(A, 'percentiles', threshold)");
- #raw("B = rmoutliers(A, movmethod, window)");
- #raw("B = rmoutliers(..., dim)");
- #raw("B = rmoutliers(..., Name, Value)");
- #raw("[B, TFrm, TFoutlier, L, U, C] = rmoutliers(...)");

== Description

#strong[rmoutliers]; detects outliers in a numeric vector or matrix and removes entries that contain detected outliers.

 For matrices, outliers are detected column-wise. By default rows containing outliers are removed. With #strong[dim]; equal to 2, columns containing outliers are removed.

 Detection methods and name-value arguments are shared with #strong[isoutlier];. The #strong[OutlierLocations]; name-value argument can provide a logical mask directly.


== Examples

``````matlab
A = [57 59 60 100 59 58 57 58 300 61 62 60 62 58 57];
B = rmoutliers(A)
``````

``````matlab
A = [2 290 1 2; 1 0 323 1; 0 2 3 2; 1 1 2 3];
[B, TFrm, TFoutlier] = rmoutliers(A)
``````


== See also

#nlink(<statistics:7_clustering_anomaly_detection.isoutlier>)[isoutlier];, #nlink(<statistics:1_descriptive_statistics_visualization.median>)[median];, #nlink(<statistics:1_descriptive_statistics_visualization.iqr>)[iqr];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
