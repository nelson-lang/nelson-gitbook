#import "../nelson_help.typ": *

= betacdf <statistics:2_probability_distributions.betacdf>

Beta cumulative distribution function

== Syntax

- #raw("p = betacdf(x, a, b)");
- #raw("p = betacdf(x, a, b, 'upper')");

== Input argument

/ x: real numeric array.
/ a: positive first shape parameter.
/ b: positive second shape parameter.

== Output argument

/ p: cumulative probabilities or upper-tail probabilities.

== Description

#strong[betacdf]; computes lower-tail beta probabilities by default and upper-tail probabilities with #strong['upper'];.


== Example

``````matlab
x = [0 0.1 0.5 0.9 1];
p = betacdf(x, 2, 5);
q = betacdf(x, 2, 5, 'upper');
``````


== See also

#nlink(<statistics:2_probability_distributions.betapdf>)[betapdf];, #nlink(<statistics:2_probability_distributions.betainv>)[betainv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
