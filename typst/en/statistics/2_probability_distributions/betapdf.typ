#import "../nelson_help.typ": *

= betapdf <statistics:2_probability_distributions.betapdf>

Beta probability density function

== Syntax

- #raw("y = betapdf(x, a, b)");

== Input argument

/ x: real numeric array.
/ a: positive first shape parameter.
/ b: positive second shape parameter.

== Output argument

/ y: probability density values.

== Description

#strong[betapdf]; computes beta distribution density values. Scalar inputs are expanded to match array inputs.


== Example

``````matlab
x = [0 0.1 0.5 0.9 1];
y = betapdf(x, 2, 5);
``````


== See also

#nlink(<statistics:2_probability_distributions.betacdf>)[betacdf];, #nlink(<statistics:2_probability_distributions.betainv>)[betainv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
