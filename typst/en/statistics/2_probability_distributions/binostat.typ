#import "../nelson_help.typ": *

= binostat <statistics:2_probability_distributions.binostat>

Binomial mean and variance

== Syntax

- #raw("[m, v] = binostat(n, p)");

== Input argument

/ n: nonnegative integer scalar or array: number of trials.
/ p: scalar or array in the range \[0, 1\]: probability of success.

== Output argument

/ m: array: mean values.
/ v: array: variance values.

== Description

#strong[binostat]; returns the mean and variance of the binomial distribution.


== Example

``````matlab
[m, v] = binostat([10 20], [0.25 0.5]);
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
