#import "../nelson_help.typ": *

= gamcdf <statistics:2_probability_distributions.gamcdf>

Gamma cumulative distribution function

== Syntax

- #raw("p = gamcdf(x, a)");
- #raw("p = gamcdf(x, a, b)");
- #raw("p = gamcdf(x, a, b, 'upper')");

== Input argument

/ x: real numeric array.
/ a: positive shape parameter.
/ b: positive scale parameter, default 1.

== Output argument

/ p: cumulative probabilities or upper-tail probabilities.

== Description

#strong[gamcdf]; computes lower-tail gamma probabilities by default and upper-tail probabilities with #strong['upper'];.


== Example

``````matlab
x = [0 0.5 1 2 5];
p = gamcdf(x, 2, 3);
q = gamcdf(x, 2, 3, 'upper');
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
