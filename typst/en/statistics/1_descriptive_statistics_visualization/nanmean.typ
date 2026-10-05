#import "../nelson_help.typ": *

= nanmean <statistics:1_descriptive_statistics_visualization.nanmean>

Mean, ignoring NaN values.

== Syntax

- #raw("m = nanmean(X)");
- #raw("m = nanmean(X, dim)");
- #raw("m = nanmean(X, vecdim)");
- #raw("m = nanmean(X, 'all')");

== Description

#strong[nanmean]; computes the mean after removing #strong[NaN]; values from each operated slice.

 The default operating dimension is the first nonsingleton dimension.


== Example

``````matlab
X = magic(3);
X([1 6:9]) = NaN;
m = nanmean(X)
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];, #nlink(<statistics:1_descriptive_statistics_visualization.nanmedian>)[nanmedian];, #nlink(<statistics:1_descriptive_statistics_visualization.nanstd>)[nanstd];, #nlink(<statistics:1_descriptive_statistics_visualization.nanvar>)[nanvar];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
