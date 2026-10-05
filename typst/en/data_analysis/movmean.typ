#import "nelson_help.typ": *

= movmean <data_analysis:movmean>

Moving mean.

== Syntax

- #raw("R = movmean(A, window)");
- #raw("R = movmean(A, window, d)");

== Input argument

/ A: input array.
/ window: positive scalar window length.
/ d: dimension to operate along: positive integer scalar.

== Output argument

/ R: Moving mean.

== Description

#strong[movmean]; computes mean values over a centered moving window.


== Example

``````matlab
A = [1 2 8 4 5];
R = movmean(A, 3)
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
