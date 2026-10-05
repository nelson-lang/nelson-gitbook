#import "../nelson_help.typ": *

= quantile <statistics:1_descriptive_statistics_visualization.quantile>

Quantiles of a data set.

== Syntax

- #raw("Q = quantile(A, p)");
- #raw("Q = quantile(A, n)");
- #raw("Q = quantile(A, p, dim)");
- #raw("Q = quantile(A, p, vecdim)");
- #raw("Q = quantile(A, p, 'all')");
- #raw("Q = quantile(..., 'Method', method)");

== Description

#strong[quantile]; returns quantiles for probabilities in the interval \[0,1\]. If the second input is an integer greater than one, it is interpreted as the number of evenly spaced quantiles.

 #strong[NaN]; values are omitted. Supported methods are #strong[midpoint];, #strong[exact];, #strong[inclusive];, #strong[exclusive];, and #strong[approximate];.

 #strong[A]; can be a real numeric array, a #strong[datetime]; array or a #strong[duration]; array. For datetime or duration input data, the quantiles have the same class and Format as #strong[A];, and #strong[NaT]; values are omitted like #strong[NaN]; values.


== Examples

``````matlab
A = [2 5 6 10 11 13];
Q = quantile(A, [0.25 0.5 0.75])
``````

datetime and duration input data

``````matlab
d = hours([1 2 3 4 10]);
Q = quantile(d, [0.25 0.5 0.75])
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.prctile>)[prctile];, #nlink(<statistics:1_descriptive_statistics_visualization.iqr>)[iqr];, #nlink(<statistics:1_descriptive_statistics_visualization.median>)[median];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
  [2.0.0], [datetime and duration input data supported.],
)

// Author: Allan CORNET
