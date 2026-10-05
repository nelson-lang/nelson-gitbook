#import "../nelson_help.typ": *

= cconv <signal_processing:3_transforms_correlation_modeling.cconv>

Circular convolution.

== Syntax

- #raw("Y = cconv(A, B)");
- #raw("Y = cconv(A, B, N)");

== Input argument

/ A, B: input vectors.
/ N: positive integer convolution length.

== Output argument

/ Y: circular convolution result.

== Description

#strong[cconv]; computes circular convolution using FFTs.


== Example

``````matlab

y = cconv([1 2], [1 1], 2);

``````


== See also

#nlink(<data_analysis:conv>)[conv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
