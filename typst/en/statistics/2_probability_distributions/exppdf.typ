#import "../nelson_help.typ": *

= exppdf <statistics:2_probability_distributions.exppdf>

Exponential probability density function

== Syntax

- #raw("y = exppdf(x)");
- #raw("y = exppdf(x, mu)");

== Input argument

/ x: real numeric array.
/ mu: positive mean parameter, default 1.

== Output argument

/ y: probability density values.

== Description

#strong[exppdf]; computes exponential distribution density values.


== Example

``````matlab
x = [0 0.5 1 2];
y = exppdf(x, 3);
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
