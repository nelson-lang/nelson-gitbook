#import "../nelson_help.typ": *

= evpdf <statistics:2_probability_distributions.evpdf>

Extreme value probability density function

== Syntax

- #raw("y = evpdf(x)");
- #raw("y = evpdf(x, mu)");
- #raw("y = evpdf(x, mu, sigma)");

== Input argument

/ x: real scalar or array: values.
/ mu: real scalar or array: location parameter. Default is 0.
/ sigma: positive scalar or array: scale parameter. Default is 1.

== Output argument

/ y: array: density values.

== Description

#strong[evpdf]; evaluates extreme value probability density values element by element.


== Example

``````matlab
x = [-2 -1 0 1 2];
y = evpdf(x, 0, 1);
``````


== See also

#nlink(<statistics:2_probability_distributions.evcdf>)[evcdf];, #nlink(<statistics:2_probability_distributions.evinv>)[evinv];, #nlink(<statistics:2_probability_distributions.evrnd>)[evrnd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
