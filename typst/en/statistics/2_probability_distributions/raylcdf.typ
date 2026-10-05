#import "../nelson_help.typ": *

= raylcdf <statistics:2_probability_distributions.raylcdf>

Rayleigh cumulative distribution function

== Syntax

- #raw("p = raylcdf(x, b)");
- #raw("p = raylcdf(x, b, 'upper')");

== Input argument

/ x: real scalar or array: values.
/ b: positive scalar or array: scale parameter.

== Output argument

/ p: array: cumulative probabilities.

== Description

#strong[raylcdf]; evaluates Rayleigh cumulative probabilities element by element.


== Example

``````matlab
p = raylcdf([0 2 4], 2);
q = raylcdf([0 2 4], 2, 'upper');
``````


== See also

#nlink(<statistics:2_probability_distributions.raylpdf>)[raylpdf];, #nlink(<statistics:2_probability_distributions.raylinv>)[raylinv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
