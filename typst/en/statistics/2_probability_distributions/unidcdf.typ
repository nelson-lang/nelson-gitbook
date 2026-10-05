#import "../nelson_help.typ": *

= unidcdf <statistics:2_probability_distributions.unidcdf>

Discrete uniform cumulative distribution function

== Syntax

- #raw("p = unidcdf(x, n)");

== Input argument

/ x: real numeric array.
/ n: positive integer scalar or array: maximum value.

== Output argument

/ p: cumulative probabilities.

== Description

#strong[unidcdf]; computes cumulative probabilities for the discrete uniform distribution on integers from 1 to #strong[n];.


== Example

``````matlab
x = 0:6;
p = unidcdf(x, 5);
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
