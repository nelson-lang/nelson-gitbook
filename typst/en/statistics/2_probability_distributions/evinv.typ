#import "../nelson_help.typ": *

= evinv <statistics:2_probability_distributions.evinv>

Extreme value inverse cumulative distribution function

== Syntax

- #raw("x = evinv(p)");
- #raw("x = evinv(p, mu)");
- #raw("x = evinv(p, mu, sigma)");

== Input argument

/ p: scalar or array: probabilities.
/ mu: real scalar or array: location parameter. Default is 0.
/ sigma: positive scalar or array: scale parameter. Default is 1.

== Output argument

/ x: array: inverse probability values.

== Description

#strong[evinv]; evaluates inverse extreme value cumulative probabilities element by element.


== Example

``````matlab
p = [0.1 0.5 0.9];
x = evinv(p, 0, 1);
``````


== See also

#nlink(<statistics:2_probability_distributions.evpdf>)[evpdf];, #nlink(<statistics:2_probability_distributions.evcdf>)[evcdf];, #nlink(<statistics:2_probability_distributions.evrnd>)[evrnd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
