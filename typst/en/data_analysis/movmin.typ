#import "nelson_help.typ": *

= movmin <data_analysis:movmin>

Moving minimum.

== Syntax

- #raw("R = movmin(A, window)");
- #raw("R = movmin(A, window, d)");

== Input argument

/ A: input array.
/ window: positive scalar window length.
/ d: dimension to operate along: positive integer scalar.

== Output argument

/ R: Moving minimum.

== Description

#strong[movmin]; computes minimum values over a centered moving window.


== Example

``````matlab
A = [1 2 8 4 5];
R = movmin(A, 3)
``````


== See also

#nlink(<data_analysis:min>)[min];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
