#import "../nelson_help.typ": *

= evstat <statistics:2_probability_distributions.evstat>

Extreme value mean and variance

== Syntax

- #raw("[m, v] = evstat(mu, sigma)");

== Input argument

/ mu: real scalar or array: location parameter.
/ sigma: positive scalar or array: scale parameter.

== Output argument

/ m: array: mean values.
/ v: array: variance values.

== Description

#strong[evstat]; returns the mean and variance of the extreme value distribution.


== Example

``````matlab
[m, v] = evstat(0, 1);
``````


== See also

#nlink(<statistics:2_probability_distributions.evpdf>)[evpdf];, #nlink(<statistics:2_probability_distributions.evcdf>)[evcdf];, #nlink(<statistics:2_probability_distributions.evinv>)[evinv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
