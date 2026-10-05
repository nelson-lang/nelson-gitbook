#import "../nelson_help.typ": *

= poissstat <statistics:2_probability_distributions.poissstat>

Poisson mean and variance

== Syntax

- #raw("[m, v] = poissstat(lambda)");

== Input argument

/ lambda: nonnegative scalar or array: rate parameter.

== Output argument

/ m: array: mean values.
/ v: array: variance values.

== Description

#strong[poissstat]; returns the mean and variance of the Poisson distribution.


== Example

``````matlab
[m, v] = poissstat([0 1 5]);
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
