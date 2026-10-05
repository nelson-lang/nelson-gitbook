#import "../nelson_help.typ": *

= kurtosis <statistics:1_descriptive_statistics_visualization.kurtosis>

Kurtosis of a data set.

== Syntax

- #raw("k = kurtosis(X)");
- #raw("k = kurtosis(X, flag)");
- #raw("k = kurtosis(X, flag, dim)");
- #raw("k = kurtosis(X, flag, vecdim)");
- #raw("k = kurtosis(X, flag, 'all')");

== Description

#strong[kurtosis]; computes the sample kurtosis of numeric data. Missing numeric values are ignored.

 #strong[flag]; is 1 by default. Set #strong[flag]; to 0 to apply the bias correction for sample kurtosis.


== Example

``````matlab
X = [1 2 5; 2 4 8; 3 8 13];
k = kurtosis(X)
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.skewness>)[skewness];, #nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];, #nlink(<statistics:1_descriptive_statistics_visualization.std>)[std];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
