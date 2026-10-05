#import "../nelson_help.typ": *

= nanmin <statistics:1_descriptive_statistics_visualization.nanmin>

Minimum, ignoring NaN values.

== Syntax

- #raw("y = nanmin(X)");
- #raw("[y, idx] = nanmin(X)");
- #raw("y = nanmin(X, Y)");
- #raw("[y, idx] = nanmin(X, [], dim)");

== Description

#strong[nanmin]; returns the minimum after removing #strong[NaN]; values; a slice made only of #strong[NaN]; yields #strong[NaN];.

 #strong[nanmin(X, Y)]; returns the element-wise minimum of #strong[X]; and #strong[Y];, ignoring #strong[NaN];.

 The optional second output #strong[idx]; holds the indices of the minima. It is equivalent to #strong[min(X, ..., 'omitnan')];.


== Example

``````matlab
[y, idx] = nanmin([4 NaN 1 NaN 3])
``````


== See also

#nlink(<data_analysis:min>)[min];, #nlink(<statistics:1_descriptive_statistics_visualization.nanmax>)[nanmax];, #nlink(<statistics:1_descriptive_statistics_visualization.nansum>)[nansum];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
