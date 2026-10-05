#import "nelson_help.typ": *

= movmax <data_analysis:movmax>

Moving maximum.

== Syntax

- #raw("R = movmax(A, window)");
- #raw("R = movmax(A, window, d)");

== Input argument

/ A: input array.
/ window: positive scalar window length.
/ d: dimension to operate along: positive integer scalar.

== Output argument

/ R: Moving maximum.

== Description

#strong[movmax]; computes maximum values over a centered moving window.


== Example

``````matlab
A = [1 2 8 4 5];
R = movmax(A, 3)
``````


== See also

#nlink(<data_analysis:max>)[max];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
