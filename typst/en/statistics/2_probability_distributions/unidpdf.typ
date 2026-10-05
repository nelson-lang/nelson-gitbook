#import "../nelson_help.typ": *

= unidpdf <statistics:2_probability_distributions.unidpdf>

Discrete uniform probability density function

== Syntax

- #raw("y = unidpdf(x, n)");

== Input argument

/ x: real numeric array.
/ n: positive integer scalar or array: maximum value.

== Output argument

/ y: probability values.

== Description

#strong[unidpdf]; computes probabilities for the discrete uniform distribution on integers from 1 to #strong[n];.


== Example

``````matlab
x = 0:6;
y = unidpdf(x, 5);
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
