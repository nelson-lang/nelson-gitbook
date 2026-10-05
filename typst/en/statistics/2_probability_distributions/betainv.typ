#import "../nelson_help.typ": *

= betainv <statistics:2_probability_distributions.betainv>

Beta inverse cumulative distribution function

== Syntax

- #raw("x = betainv(p, a, b)");

== Input argument

/ p: real numeric array of probabilities.
/ a: positive first shape parameter.
/ b: positive second shape parameter.

== Output argument

/ x: inverse lower-tail beta values.

== Description

#strong[betainv]; computes inverse lower-tail beta probabilities.


== Example

``````matlab
p = [0.025 0.5 0.975];
x = betainv(p, 2, 5);
``````


== See also

#nlink(<statistics:2_probability_distributions.betacdf>)[betacdf];, #nlink(<statistics:2_probability_distributions.betapdf>)[betapdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
