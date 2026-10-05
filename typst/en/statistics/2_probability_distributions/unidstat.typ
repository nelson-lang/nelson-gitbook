#import "../nelson_help.typ": *

= unidstat <statistics:2_probability_distributions.unidstat>

Discrete uniform mean and variance

== Syntax

- #raw("m = unidstat(n)");
- #raw("[m, v] = unidstat(n)");

== Input argument

/ n: positive integer scalar or array: maximum value.

== Output argument

/ m: mean values.
/ v: variance values.

== Description

#strong[unidstat]; computes mean and variance for the discrete uniform distribution on integers from 1 to #strong[n];.


== Example

``````matlab
[m, v] = unidstat([1 5 10]);
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
