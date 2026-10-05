#import "nelson_help.typ": *

= bounds <data_analysis:bounds>

Smallest and largest array elements.

== Syntax

- #raw("[smallest, largest] = bounds(A)");
- #raw("[smallest, largest] = bounds(A, d)");
- #raw("[smallest, largest] = bounds(A, flag)");

== Input argument

/ A: input array.
/ d: dimension to operate along: positive integer scalar.
/ flag: optional argument forwarded to min and max.

== Output argument

/ smallest: Smallest values.
/ largest: Largest values.

== Description

#strong[bounds]; returns the smallest and largest elements of A along the selected dimension.


== Example

``````matlab
A = [3 7 2; 9 1 5];
[s, l] = bounds(A)
``````


== See also

#nlink(<data_analysis:min>)[min];, #nlink(<data_analysis:max>)[max];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
