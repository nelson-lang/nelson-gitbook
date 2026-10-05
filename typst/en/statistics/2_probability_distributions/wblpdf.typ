#import "../nelson_help.typ": *

= wblpdf <statistics:2_probability_distributions.wblpdf>

Weibull probability density function

== Syntax

- #raw("y = wblpdf(x)");
- #raw("y = wblpdf(x, a)");
- #raw("y = wblpdf(x, a, b)");

== Input argument

/ x: real scalar or array: values.
/ a: positive scalar or array: scale parameter. Default is 1.
/ b: positive scalar or array: shape parameter. Default is 1.

== Output argument

/ y: array: density values.

== Description

#strong[wblpdf]; evaluates Weibull probability density values element by element.


== Example

``````matlab
x = [0 2 4];
y = wblpdf(x, 2, 3);
``````


== See also

#nlink(<statistics:2_probability_distributions.wblcdf>)[wblcdf];, #nlink(<statistics:2_probability_distributions.wblinv>)[wblinv];, #nlink(<statistics:2_probability_distributions.wblrnd>)[wblrnd];, #nlink(<statistics:2_probability_distributions.wblstat>)[wblstat];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
