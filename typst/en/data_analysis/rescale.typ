#import "nelson_help.typ": *

= rescale <data_analysis:rescale>

Scale array elements to a fixed interval.

== Syntax

- #raw("Y = rescale(X)");
- #raw("Y = rescale(X, a, b)");
- #raw("Y = rescale(..., 'InputMin', lo, 'InputMax', hi)");

== Input argument

/ X: a numeric array.
/ a, b: the bounds of the output interval (default #strong[0]; and #strong[1];).
/ lo, hi: optional input limits mapped to #strong[a]; and #strong[b];.

== Output argument

/ Y: the rescaled array, same size as #strong[X];.

== Description

#strong[Y \= rescale(X)]; scales the entries of #strong[X]; to the interval #strong[\[0, 1\]];.

 #strong[Y \= rescale(X, a, b)]; scales the entries to the interval #strong[\[a, b\]];.


== Example

``````matlab
Y = rescale([1 2 3 4 5])
Z = rescale([1 2 3 4 5], 0, 10)
``````


== See also

#nlink(<data_analysis:bounds>)[bounds];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
