#import "../nelson_help.typ": *

= moment <statistics:1_descriptive_statistics_visualization.moment>

Central moment of a data set.

== Syntax

- #raw("m = moment(X, order)");
- #raw("m = moment(X, order, dim)");
- #raw("m = moment(X, order, vecdim)");
- #raw("m = moment(X, order, 'all')");

== Description

#strong[moment]; computes the central moment of the requested positive integer order.

 The first-order central moment is zero. The second-order central moment uses a divisor of #strong[n];.


== Example

``````matlab
X = [1 2 4; 2 4 8; 3 8 13];
m = moment(X, 3)
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.skewness>)[skewness];, #nlink(<statistics:1_descriptive_statistics_visualization.kurtosis>)[kurtosis];, #nlink(<statistics:1_descriptive_statistics_visualization.var>)[var];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
