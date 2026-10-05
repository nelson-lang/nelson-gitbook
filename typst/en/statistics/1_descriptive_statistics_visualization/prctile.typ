#import "../nelson_help.typ": *

= prctile <statistics:1_descriptive_statistics_visualization.prctile>

Percentiles of a data set.

== Syntax

- #raw("P = prctile(A, pct)");
- #raw("P = prctile(A, pct, dim)");
- #raw("P = prctile(A, pct, vecdim)");
- #raw("P = prctile(A, pct, 'all')");
- #raw("P = prctile(..., 'Method', method)");

== Description

#strong[prctile]; returns percentiles for percentages in the interval \[0,100\].

 #strong[NaN]; values are omitted. Supported methods are #strong[midpoint];, #strong[exact];, #strong[inclusive];, #strong[exclusive];, and #strong[approximate];.

 #strong[A]; can be a real numeric array, a #strong[datetime]; array or a #strong[duration]; array. For datetime or duration input data, #strong[P]; has the same class and Format as #strong[A];, and #strong[NaT]; values are omitted like #strong[NaN]; values.


== Examples

``````matlab
A = (1:5)' * (2:6);
P = prctile(A, [25 50 75], 1)
``````

datetime and duration input data

``````matlab
t = datetime(2024, 1, [1 3 5 7 30]);
P = prctile(t, [25 50 75])
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.quantile>)[quantile];, #nlink(<statistics:1_descriptive_statistics_visualization.iqr>)[iqr];, #nlink(<statistics:1_descriptive_statistics_visualization.median>)[median];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
  [2.0.0], [datetime and duration input data supported.],
)

// Author: Allan CORNET
