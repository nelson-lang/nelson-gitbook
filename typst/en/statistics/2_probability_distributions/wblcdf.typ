#import "../nelson_help.typ": *

= wblcdf <statistics:2_probability_distributions.wblcdf>

Weibull cumulative distribution function

== Syntax

- #raw("p = wblcdf(x)");
- #raw("p = wblcdf(x, a)");
- #raw("p = wblcdf(x, a, b)");
- #raw("p = wblcdf(x, a, b, 'upper')");

== Input argument

/ x: real scalar or array: values.
/ a: positive scalar or array: scale parameter. Default is 1.
/ b: positive scalar or array: shape parameter. Default is 1.
/ 'upper': option to return the upper tail probability.

== Output argument

/ p: array: probability values.

== Description

#strong[wblcdf]; evaluates Weibull cumulative probabilities element by element.


== Example

``````matlab
x = [0 2 4];
p = wblcdf(x, 2, 3);
``````


== See also

#nlink(<statistics:2_probability_distributions.wblpdf>)[wblpdf];, #nlink(<statistics:2_probability_distributions.wblinv>)[wblinv];, #nlink(<statistics:2_probability_distributions.wblrnd>)[wblrnd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
