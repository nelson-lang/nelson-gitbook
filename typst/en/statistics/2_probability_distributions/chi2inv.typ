#import "../nelson_help.typ": *

= chi2inv <statistics:2_probability_distributions.chi2inv>

Chi-square inverse cumulative distribution function

== Syntax

- #raw("x = chi2inv(p, v)");

== Input argument

/ p: real numeric array of probabilities in \[0,1\].
/ v: positive real numeric array or scalar: degrees of freedom.

== Output argument

/ x: inverse cumulative values.

== Description

#strong[chi2inv]; computes inverse lower-tail chi-square probabilities.


== Example

``````matlab
p = [0.025 0.5 0.975];
x = chi2inv(p, 4);
``````


== See also

#nlink(<statistics:2_probability_distributions.chi2cdf>)[chi2cdf];, #nlink(<statistics:2_probability_distributions.chi2pdf>)[chi2pdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
