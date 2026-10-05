#import "../nelson_help.typ": *

= iqr <statistics:1_descriptive_statistics_visualization.iqr>

Interquartile range.

== Syntax

- #raw("r = iqr(A)");
- #raw("r = iqr(A, dim)");
- #raw("r = iqr(A, vecdim)");
- #raw("r = iqr(A, 'all')");
- #raw("[r, q] = iqr(...)");

== Description

#strong[iqr]; returns the difference between the third and first quartiles. The optional second output contains the first and third quartiles.

 Dimensions can be a scalar dimension, a vector of dimensions, or #strong[all];.

 #strong[A]; can be a real numeric array, a #strong[datetime]; array or a #strong[duration]; array. For datetime input data, the interquartile range #strong[r]; is a duration and the quartiles #strong[q]; are datetime values. For duration input data, #strong[r]; and #strong[q]; are durations. #strong[NaT]; values are omitted like #strong[NaN]; values.


== Examples

``````matlab
A = [2 5 6 10 11 13];
[r, q] = iqr(A)
``````

datetime and duration input data

``````matlab
t = datetime(2024, 1, [1 3 5 7 30]);
[r, q] = iqr(t)
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.quantile>)[quantile];, #nlink(<statistics:1_descriptive_statistics_visualization.prctile>)[prctile];, #nlink(<statistics:1_descriptive_statistics_visualization.mad>)[mad];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
  [2.0.0], [datetime and duration input data supported.],
)

// Author: Allan CORNET
