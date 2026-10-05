#import "../nelson_help.typ": *

= nanstd <statistics:1_descriptive_statistics_visualization.nanstd>

Standard deviation, ignoring NaN values.

== Syntax

- #raw("s = nanstd(X)");
- #raw("s = nanstd(X, flag)");
- #raw("s = nanstd(X, flag, dim)");
- #raw("s = nanstd(X, flag, vecdim)");
- #raw("s = nanstd(X, flag, 'all')");

== Description

#strong[nanstd]; computes the standard deviation after removing #strong[NaN]; values from each operated slice.

 #strong[flag]; is #strong[0]; for sample normalization and #strong[1]; for population normalization.


== Example

``````matlab
X = magic(3);
X([1 6:9]) = NaN;
s = nanstd(X, 0, 2)
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.std>)[std];, #nlink(<statistics:1_descriptive_statistics_visualization.nanmean>)[nanmean];, #nlink(<statistics:1_descriptive_statistics_visualization.nanmedian>)[nanmedian];, #nlink(<statistics:1_descriptive_statistics_visualization.nanvar>)[nanvar];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
