#import "../nelson_help.typ": *

= unifcdf <statistics:2_probability_distributions.unifcdf>

Continuous uniform cumulative distribution function

== Syntax

- #raw("p = unifcdf(x)");
- #raw("p = unifcdf(x, a, b)");
- #raw("p = unifcdf(..., 'upper')");

== Input argument

/ x: real numeric array.
/ a: lower endpoint, default 0.
/ b: upper endpoint, default 1.

== Output argument

/ p: cumulative probabilities or upper-tail probabilities.

== Description

#strong[unifcdf]; computes lower-tail continuous uniform probabilities by default and upper-tail probabilities with #strong['upper'];.


== Example

``````matlab
x = 0:0.25:1;
p = unifcdf(x);
q = unifcdf(x, 'upper');
``````


== See also

#nlink(<statistics:2_probability_distributions.unifpdf>)[unifpdf];, #nlink(<statistics:2_probability_distributions.unifinv>)[unifinv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
