#import "../nelson_help.typ": *

= nanvar <statistics:1_descriptive_statistics_visualization.nanvar>

Variance, ignoring NaN values.

== Syntax

- #raw("v = nanvar(X)");
- #raw("v = nanvar(X, w)");
- #raw("v = nanvar(X, w, dim)");
- #raw("v = nanvar(X, w, vecdim)");
- #raw("v = nanvar(X, w, 'all')");

== Description

#strong[nanvar]; computes the variance after removing #strong[NaN]; values from each operated slice.

 #strong[w]; can be #strong[0];, #strong[1];, empty for the default behavior, or a nonnegative vector of weights for a scalar operating dimension.


== Example

``````matlab
X = magic(3);
X([1 6:9]) = NaN;
v = nanvar(X)
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.var>)[var];, #nlink(<statistics:1_descriptive_statistics_visualization.nanmean>)[nanmean];, #nlink(<statistics:1_descriptive_statistics_visualization.nanmedian>)[nanmedian];, #nlink(<statistics:1_descriptive_statistics_visualization.nanstd>)[nanstd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
