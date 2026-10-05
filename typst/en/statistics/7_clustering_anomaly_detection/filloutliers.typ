#import "../nelson_help.typ": *

= filloutliers <statistics:7_clustering_anomaly_detection.filloutliers>

Detect and replace outliers in numeric data.

== Syntax

- #raw("B = filloutliers(A, fillmethod)");
- #raw("B = filloutliers(A, fillmethod, method)");
- #raw("B = filloutliers(A, fillmethod, 'percentiles', threshold)");
- #raw("B = filloutliers(A, fillmethod, movmethod, window)");
- #raw("B = filloutliers(..., dim)");
- #raw("B = filloutliers(..., Name, Value)");
- #raw("[B, TF, L, U, C] = filloutliers(...)");

== Description

#strong[filloutliers]; detects outliers in a numeric array and replaces them using a selected fill method.

 Fill methods include #strong[previous];, #strong[next];, #strong[nearest];, #strong[linear];, #strong[pchip];, #strong[clip];, or a numeric scalar constant. Detection methods and name-value arguments are shared with #strong[isoutlier];. The #strong[OutlierLocations]; name-value argument can provide a logical mask directly.


== Examples

``````matlab
A = [57 59 60 100 59 58 57 58 300 61 62 60 62 58 57];
B = filloutliers(A, 'linear')
``````

``````matlab
A = [60 59 49 49 58 100 61 57 48 58];
[B, TF, L, U, C] = filloutliers(A, 'clip')
``````


== See also

#nlink(<statistics:7_clustering_anomaly_detection.isoutlier>)[isoutlier];, #nlink(<statistics:7_clustering_anomaly_detection.rmoutliers>)[rmoutliers];, #nlink(<data_analysis:fillmissing>)[fillmissing];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
