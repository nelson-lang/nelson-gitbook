#import "nelson_help.typ": *

= movmad <data_analysis:movmad>

Moving median absolute deviation.

== Syntax

- #raw("R = movmad(A, window)");
- #raw("R = movmad(A, window, d)");

== Input argument

/ A: input array.
/ window: positive scalar window length.
/ d: dimension to operate along: positive integer scalar.

== Output argument

/ R: Moving median absolute deviation.

== Description

#strong[movmad]; computes the median absolute deviation over a centered moving window.


== Example

``````matlab
A = [1 2 8 4 5];
R = movmad(A, 3)
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
