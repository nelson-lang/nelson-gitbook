#import "../nelson_help.typ": *

= evlike <statistics:2_probability_distributions.evlike>

Extreme value negative log-likelihood

== Syntax

- #raw("nlogL = evlike(params, x)");
- #raw("[nlogL, avar] = evlike(params, x, censoring, freq)");

== Input argument

/ params: two-element vector: location and scale parameters.
/ x: real nonempty array: sample data.
/ censoring: array containing 0 or 1 values: right-censoring flags.
/ freq: array of nonnegative finite values: observation frequencies.

== Output argument

/ nlogL: scalar: negative log-likelihood.
/ avar: 2-by-2 array: approximate covariance matrix.

== Description

#strong[evlike]; evaluates the negative log-likelihood of the extreme value distribution.


== Example

``````matlab
x = [-2 -1 0 1 2 3];
phat = evfit(x);
nlogL = evlike(phat, x);
``````


== See also

#nlink(<statistics:2_probability_distributions.evfit>)[evfit];, #nlink(<statistics:2_probability_distributions.evpdf>)[evpdf];, #nlink(<statistics:2_probability_distributions.evcdf>)[evcdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
