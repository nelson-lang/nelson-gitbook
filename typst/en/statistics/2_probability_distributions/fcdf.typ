#import "../nelson_help.typ": *

= fcdf <statistics:2_probability_distributions.fcdf>

F cumulative distribution function

== Syntax

- #raw("p = fcdf(x, v1, v2)");
- #raw("p = fcdf(x, v1, v2, 'upper')");

== Input argument

/ x: real numeric array: values where the distribution is evaluated.
/ v1: positive real numeric array or scalar: numerator degrees of freedom.
/ v2: positive real numeric array or scalar: denominator degrees of freedom.

== Output argument

/ p: cumulative probabilities or upper-tail probabilities.

== Description

#strong[fcdf]; computes lower-tail F distribution probabilities by default and upper-tail probabilities when #strong['upper']; is specified.


== Example

``````matlab
x = [0.5 1 2 5];
p = fcdf(x, 5, 20);
q = fcdf(x, 5, 20, 'upper');
``````


== See also

#nlink(<statistics:2_probability_distributions.fpdf>)[fpdf];, #nlink(<statistics:2_probability_distributions.finv>)[finv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
