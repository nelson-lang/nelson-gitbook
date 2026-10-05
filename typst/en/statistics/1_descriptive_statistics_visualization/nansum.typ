#import "../nelson_help.typ": *

= nansum <statistics:1_descriptive_statistics_visualization.nansum>

Sum, ignoring NaN values.

== Syntax

- #raw("y = nansum(X)");
- #raw("y = nansum(X, dim)");
- #raw("y = nansum(X, vecdim)");
- #raw("y = nansum(X, 'all')");

== Description

#strong[nansum]; computes the sum after removing #strong[NaN]; values from each operated slice; a slice made only of #strong[NaN]; sums to #strong[0];.

 The default operating dimension is the first nonsingleton dimension.

 It is equivalent to #strong[sum(X, ..., 'omitnan')];.


== Example

``````matlab
y = nansum([1 NaN 3 NaN 5])
``````


== See also

#nlink(<data_analysis:sum>)[sum];, #nlink(<statistics:1_descriptive_statistics_visualization.nanmean>)[nanmean];, #nlink(<statistics:1_descriptive_statistics_visualization.nanmax>)[nanmax];, #nlink(<statistics:1_descriptive_statistics_visualization.nanmin>)[nanmin];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
