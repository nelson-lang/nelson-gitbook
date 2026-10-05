#import "../nelson_help.typ": *

= tcdf <statistics:2_probability_distributions.tcdf>

Student t cumulative distribution function

== Syntax

- #raw("p = tcdf(x, v)");
- #raw("p = tcdf(x, v, 'upper')");

== Input argument

/ x: real numeric array: values where the distribution is evaluated.
/ v: positive real numeric array or scalar: degrees of freedom.

== Output argument

/ p: cumulative probabilities or upper-tail probabilities.

== Description

#strong[tcdf]; computes lower-tail Student t probabilities by default and upper-tail probabilities when #strong['upper']; is specified.


== Example

``````matlab
x = [-3 -1 0 1 3];
p = tcdf(x, 5);
q = tcdf(x, 5, 'upper');
``````


== See also

#nlink(<statistics:2_probability_distributions.tpdf>)[tpdf];, #nlink(<statistics:2_probability_distributions.tinv>)[tinv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
