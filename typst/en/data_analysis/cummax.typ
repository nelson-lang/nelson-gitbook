#import "nelson_help.typ": *

= cummax <data_analysis:cummax>

Cumulative maximum of array elements.

== Syntax

- #raw("R = cummax(A)");
- #raw("R = cummax(A, d)");

== Input argument

/ A: input array.
/ d: dimension to operate along: positive integer scalar.

== Output argument

/ R: Cumulative maximum of array elements.

== Description

#strong[cummax]; returns cumulative maximum values along the selected dimension.


== Example

``````matlab
A = [3 1 4 2];
R = cummax(A)
``````


== See also

#nlink(<data_analysis:max>)[max];, #nlink(<data_analysis:cummin>)[cummin];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
