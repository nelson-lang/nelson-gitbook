#import "../nelson_help.typ": *

= tinv <statistics:2_probability_distributions.tinv>

Student t inverse cumulative distribution function

== Syntax

- #raw("x = tinv(p, v)");

== Input argument

/ p: real numeric array: probabilities.
/ v: positive real numeric array or scalar: degrees of freedom.

== Output argument

/ x: inverse lower-tail Student t values.

== Description

#strong[tinv]; computes inverse lower-tail Student t probabilities.


== Example

``````matlab
p = [0.025 0.5 0.975];
x = tinv(p, 5);
``````


== See also

#nlink(<statistics:2_probability_distributions.tcdf>)[tcdf];, #nlink(<statistics:2_probability_distributions.tpdf>)[tpdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
