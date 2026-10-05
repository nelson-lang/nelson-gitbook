#import "../nelson_help.typ": *

= cov <statistics:1_descriptive_statistics_visualization.cov>

Covariance

== Syntax

- #raw("C = cov(M)");

== Input argument

/ M: a vector or matrix

== Output argument

/ V: Covariance of M.

== Description

#strong[C \= cov(M)]; returns the covariance.


== Used function(s)

corrcoef std var

== Example

``````matlab
M = [4 -7 3; 1 4 -2; 10 7 9];
C = cov(M)
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.var>)[var];, #nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
