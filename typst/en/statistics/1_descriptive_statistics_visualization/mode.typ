#import "../nelson_help.typ": *

= mode <statistics:1_descriptive_statistics_visualization.mode>

Most frequent values.

== Syntax

- #raw("M = mode(A)");
- #raw("M = mode(A, d)");
- #raw("[M, F, C] = mode(...)");

== Input argument

/ A: input array.
/ d: dimension to operate along: positive integer scalar.

== Output argument

/ M: Most frequent values.
/ F: Frequencies of the most frequent values.
/ C: Cell array containing the most frequent values.

== Description

#strong[mode]; returns the most frequent values of A along the selected dimension.


== Used function(s)

mean median std

== Example

``````matlab
A = [1 2 2; 3 3 4];
[M, F, C] = mode(A)
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.median>)[median];, #nlink(<data_analysis:sort>)[sort];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
