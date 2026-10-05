#import "../nelson_help.typ": *

= evcdf <statistics:2_probability_distributions.evcdf>

Extreme value cumulative distribution function

== Syntax

- #raw("p = evcdf(x)");
- #raw("p = evcdf(x, mu)");
- #raw("p = evcdf(x, mu, sigma)");
- #raw("p = evcdf(x, mu, sigma, 'upper')");

== Input argument

/ x: real scalar or array: values.
/ mu: real scalar or array: location parameter. Default is 0.
/ sigma: positive scalar or array: scale parameter. Default is 1.
/ 'upper': option to return the upper tail probability.

== Output argument

/ p: array: probability values.

== Description

#strong[evcdf]; evaluates extreme value cumulative probabilities element by element.


== Example

``````matlab
x = [-2 -1 0 1 2];
p = evcdf(x, 0, 1);
``````


== See also

#nlink(<statistics:2_probability_distributions.evpdf>)[evpdf];, #nlink(<statistics:2_probability_distributions.evinv>)[evinv];, #nlink(<statistics:2_probability_distributions.evrnd>)[evrnd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
