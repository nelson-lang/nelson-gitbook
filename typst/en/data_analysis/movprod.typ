#import "nelson_help.typ": *

= movprod <data_analysis:movprod>

Moving product.

== Syntax

- #raw("R = movprod(A, window)");
- #raw("R = movprod(A, window, d)");

== Input argument

/ A: input array.
/ window: positive scalar window length.
/ d: dimension to operate along: positive integer scalar.

== Output argument

/ R: Moving product.

== Description

#strong[movprod]; computes products over a centered moving window.


== Example

``````matlab
A = [1 2 8 4 5];
R = movprod(A, 3)
``````


== See also

#nlink(<data_analysis:prod>)[prod];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
