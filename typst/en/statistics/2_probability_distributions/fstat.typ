#import "../nelson_help.typ": *

= fstat <statistics:2_probability_distributions.fstat>

F mean and variance

== Syntax

- #raw("[m, v] = fstat(v1, v2)");

== Input argument

/ v1: positive scalar or array: numerator degrees of freedom.
/ v2: positive scalar or array: denominator degrees of freedom.

== Output argument

/ m: array: mean values.
/ v: array: variance values.

== Description

#strong[fstat]; returns the mean and variance of the F distribution.


== Example

``````matlab
[m, v] = fstat(5, 6);
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
