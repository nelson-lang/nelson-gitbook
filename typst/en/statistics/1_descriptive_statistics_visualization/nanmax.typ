#import "../nelson_help.typ": *

= nanmax <statistics:1_descriptive_statistics_visualization.nanmax>

Maximum, ignoring NaN values.

== Syntax

- #raw("y = nanmax(X)");
- #raw("[y, idx] = nanmax(X)");
- #raw("y = nanmax(X, Y)");
- #raw("[y, idx] = nanmax(X, [], dim)");

== Description

#strong[nanmax]; returns the maximum after removing #strong[NaN]; values; a slice made only of #strong[NaN]; yields #strong[NaN];.

 #strong[nanmax(X, Y)]; returns the element-wise maximum of #strong[X]; and #strong[Y];, ignoring #strong[NaN];.

 The optional second output #strong[idx]; holds the indices of the maxima. It is equivalent to #strong[max(X, ..., 'omitnan')];.


== Example

``````matlab
[y, idx] = nanmax([1 NaN 5 NaN 3])
``````


== See also

#nlink(<data_analysis:max>)[max];, #nlink(<statistics:1_descriptive_statistics_visualization.nanmin>)[nanmin];, #nlink(<statistics:1_descriptive_statistics_visualization.nansum>)[nansum];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
