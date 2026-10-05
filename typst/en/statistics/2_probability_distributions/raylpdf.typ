#import "../nelson_help.typ": *

= raylpdf <statistics:2_probability_distributions.raylpdf>

Rayleigh probability density function

== Syntax

- #raw("y = raylpdf(x, b)");

== Input argument

/ x: real scalar or array: values.
/ b: positive scalar or array: scale parameter.

== Output argument

/ y: array: density values.

== Description

#strong[raylpdf]; evaluates Rayleigh probability density values element by element.


== Example

``````matlab
x = [0 2 4];
y = raylpdf(x, 2);
``````


== See also

#nlink(<statistics:2_probability_distributions.raylcdf>)[raylcdf];, #nlink(<statistics:2_probability_distributions.raylinv>)[raylinv];, #nlink(<statistics:2_probability_distributions.raylrnd>)[raylrnd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
