#import "nelson_help.typ": *

= movmedian <data_analysis:movmedian>

Moving median.

== Syntax

- #raw("R = movmedian(A, window)");
- #raw("R = movmedian(A, window, d)");

== Input argument

/ A: input array.
/ window: positive scalar window length.
/ d: dimension to operate along: positive integer scalar.

== Output argument

/ R: Moving median.

== Description

#strong[movmedian]; computes median values over a centered moving window.


== Example

``````matlab
A = [1 2 8 4 5];
R = movmedian(A, 3)
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.median>)[median];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
