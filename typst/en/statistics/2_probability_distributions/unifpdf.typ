#import "../nelson_help.typ": *

= unifpdf <statistics:2_probability_distributions.unifpdf>

Continuous uniform probability density function

== Syntax

- #raw("y = unifpdf(x)");
- #raw("y = unifpdf(x, a, b)");

== Input argument

/ x: real numeric array.
/ a: lower endpoint, default 0.
/ b: upper endpoint, default 1.

== Output argument

/ y: probability density values.

== Description

#strong[unifpdf]; computes continuous uniform density values. Scalar inputs are expanded to match array inputs.


== Example

``````matlab
x = 0:0.25:1;
y = unifpdf(x);
``````


== See also

#nlink(<statistics:2_probability_distributions.unifcdf>)[unifcdf];, #nlink(<statistics:2_probability_distributions.unifinv>)[unifinv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
