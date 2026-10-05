#import "nelson_help.typ": *

= movsum <data_analysis:movsum>

Moving sum.

== Syntax

- #raw("R = movsum(A, window)");
- #raw("R = movsum(A, window, d)");

== Input argument

/ A: input array.
/ window: positive scalar window length.
/ d: dimension to operate along: positive integer scalar.

== Output argument

/ R: Moving sum.

== Description

#strong[movsum]; computes sums over a centered moving window.


== Example

``````matlab
A = [1 2 8 4 5];
R = movsum(A, 3)
``````


== See also

#nlink(<data_analysis:sum>)[sum];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
