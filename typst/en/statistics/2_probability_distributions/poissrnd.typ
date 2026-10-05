#import "../nelson_help.typ": *

= poissrnd <statistics:2_probability_distributions.poissrnd>

Poisson random numbers

== Syntax

- #raw("r = poissrnd(lambda)");
- #raw("r = poissrnd(lambda, sz)");
- #raw("r = poissrnd(lambda, sz1, ..., szN)");

== Input argument

/ lambda: nonnegative scalar or array: rate parameter.
/ sz: scalar, vector, or comma-separated dimensions: output size.

== Output argument

/ r: array: random values.

== Description

#strong[poissrnd]; generates Poisson distributed random values. Scalar parameters are expanded to match the requested output size.


== Example

``````matlab
rng(0);
r = poissrnd(4, 2, 3);
``````


== See also

#nlink(<statistics:2_probability_distributions.poisspdf>)[poisspdf];, #nlink(<statistics:2_probability_distributions.poisscdf>)[poisscdf];, #nlink(<statistics:2_probability_distributions.poissinv>)[poissinv];, #nlink(<statistics:2_probability_distributions.poissstat>)[poissstat];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
