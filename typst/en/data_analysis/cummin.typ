#import "nelson_help.typ": *

= cummin <data_analysis:cummin>

Cumulative minimum of array elements.

== Syntax

- #raw("R = cummin(A)");
- #raw("R = cummin(A, d)");

== Input argument

/ A: input array.
/ d: dimension to operate along: positive integer scalar.

== Output argument

/ R: Cumulative minimum of array elements.

== Description

#strong[cummin]; returns cumulative minimum values along the selected dimension.


== Example

``````matlab
A = [3 1 4 2];
R = cummin(A)
``````


== See also

#nlink(<data_analysis:min>)[min];, #nlink(<data_analysis:cummax>)[cummax];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
