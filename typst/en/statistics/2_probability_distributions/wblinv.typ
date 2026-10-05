#import "../nelson_help.typ": *

= wblinv <statistics:2_probability_distributions.wblinv>

Weibull inverse cumulative distribution function

== Syntax

- #raw("x = wblinv(p)");
- #raw("x = wblinv(p, a)");
- #raw("x = wblinv(p, a, b)");

== Input argument

/ p: real scalar or array: probability values.
/ a: positive scalar or array: scale parameter. Default is 1.
/ b: positive scalar or array: shape parameter. Default is 1.

== Output argument

/ x: array: inverse probability values.

== Description

#strong[wblinv]; evaluates Weibull inverse cumulative probabilities element by element.


== Example

``````matlab
p = [0 0.5 0.9];
x = wblinv(p, 2, 3);
``````


== See also

#nlink(<statistics:2_probability_distributions.wblpdf>)[wblpdf];, #nlink(<statistics:2_probability_distributions.wblcdf>)[wblcdf];, #nlink(<statistics:2_probability_distributions.wblrnd>)[wblrnd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
