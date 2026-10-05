#import "../nelson_help.typ": *

= skewness <statistics:1_descriptive_statistics_visualization.skewness>

Skewness of a data set.

== Syntax

- #raw("y = skewness(X)");
- #raw("y = skewness(X, flag)");
- #raw("y = skewness(X, flag, dim)");
- #raw("y = skewness(X, flag, vecdim)");
- #raw("y = skewness(X, flag, 'all')");

== Description

#strong[skewness]; computes the sample skewness of numeric data. Missing numeric values are ignored.

 #strong[flag]; is 1 by default. Set #strong[flag]; to 0 to apply the bias correction for sample skewness.


== Example

``````matlab
X = [1 2 5; 2 4 8; 3 8 13];
y = skewness(X)
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.kurtosis>)[kurtosis];, #nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];, #nlink(<statistics:1_descriptive_statistics_visualization.std>)[std];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
