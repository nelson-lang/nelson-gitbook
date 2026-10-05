#import "../nelson_help.typ": *

= finv <statistics:2_probability_distributions.finv>

F inverse cumulative distribution function

== Syntax

- #raw("x = finv(p, v1, v2)");

== Input argument

/ p: real numeric array: probabilities.
/ v1: positive real numeric array or scalar: numerator degrees of freedom.
/ v2: positive real numeric array or scalar: denominator degrees of freedom.

== Output argument

/ x: inverse lower-tail F distribution values.

== Description

#strong[finv]; computes inverse lower-tail F distribution probabilities.


== Example

``````matlab
p = [0.025 0.5 0.975];
x = finv(p, 5, 20);
``````


== See also

#nlink(<statistics:2_probability_distributions.fcdf>)[fcdf];, #nlink(<statistics:2_probability_distributions.fpdf>)[fpdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
