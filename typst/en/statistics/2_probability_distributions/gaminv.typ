#import "../nelson_help.typ": *

= gaminv <statistics:2_probability_distributions.gaminv>

Gamma inverse cumulative distribution function

== Syntax

- #raw("x = gaminv(p, a)");
- #raw("x = gaminv(p, a, b)");

== Input argument

/ p: real numeric array of probabilities.
/ a: positive shape parameter.
/ b: positive scale parameter, default 1.

== Output argument

/ x: inverse lower-tail gamma values.

== Description

#strong[gaminv]; computes inverse lower-tail gamma probabilities.


== Example

``````matlab
p = [0.025 0.5 0.975];
x = gaminv(p, 2, 3);
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
