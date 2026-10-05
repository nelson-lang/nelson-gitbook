#import "../nelson_help.typ": *

= nanmedian <statistics:1_descriptive_statistics_visualization.nanmedian>

Median, ignoring NaN values.

== Syntax

- #raw("m = nanmedian(X)");
- #raw("m = nanmedian(X, dim)");
- #raw("m = nanmedian(X, vecdim)");
- #raw("m = nanmedian(X, 'all')");

== Description

#strong[nanmedian]; computes the median after removing #strong[NaN]; values from each operated slice.

 The default operating dimension is the first nonsingleton dimension.


== Example

``````matlab
X = magic(3);
X([1 6:9]) = NaN;
m = nanmedian(X, 2)
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.median>)[median];, #nlink(<statistics:1_descriptive_statistics_visualization.nanmean>)[nanmean];, #nlink(<statistics:1_descriptive_statistics_visualization.nanstd>)[nanstd];, #nlink(<statistics:1_descriptive_statistics_visualization.nanvar>)[nanvar];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
