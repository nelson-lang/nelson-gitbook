#import "../nelson_help.typ": *

= gampdf <statistics:2_probability_distributions.gampdf>

Gamma probability density function

== Syntax

- #raw("y = gampdf(x, a)");
- #raw("y = gampdf(x, a, b)");

== Input argument

/ x: real numeric array.
/ a: positive shape parameter.
/ b: positive scale parameter, default 1.

== Output argument

/ y: probability density values.

== Description

#strong[gampdf]; computes gamma distribution density values. Scalar inputs are expanded to match array inputs.


== Example

``````matlab
x = [0 0.5 1 2 5];
y = gampdf(x, 2, 3);
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
