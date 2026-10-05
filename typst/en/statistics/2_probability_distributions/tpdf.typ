#import "../nelson_help.typ": *

= tpdf <statistics:2_probability_distributions.tpdf>

Student t probability density function

== Syntax

- #raw("y = tpdf(x, v)");

== Input argument

/ x: real numeric array: values where the distribution is evaluated.
/ v: positive real numeric array or scalar: degrees of freedom.

== Output argument

/ y: probability density values.

== Description

#strong[tpdf]; computes Student t probability density values. Scalar inputs are expanded to match array inputs.


== Example

``````matlab
x = [-3 -1 0 1 3];
y = tpdf(x, 5);
``````


== See also

#nlink(<statistics:2_probability_distributions.tcdf>)[tcdf];, #nlink(<statistics:2_probability_distributions.tinv>)[tinv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
