#import "../nelson_help.typ": *

= raylrnd <statistics:2_probability_distributions.raylrnd>

Rayleigh random numbers

== Syntax

- #raw("r = raylrnd(b)");
- #raw("r = raylrnd(b, sz)");
- #raw("r = raylrnd(b, sz1, ..., szN)");

== Input argument

/ b: positive scalar or array: scale parameter.
/ sz: size vector or size scalars for the output.

== Output argument

/ r: array: random values.

== Description

#strong[raylrnd]; generates Rayleigh random numbers using Nelson's global random generator.


== Example

``````matlab
rng(0);
r = raylrnd(2, [2 3]);
``````


== See also

#nlink(<statistics:2_probability_distributions.raylpdf>)[raylpdf];, #nlink(<statistics:2_probability_distributions.raylstat>)[raylstat];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
