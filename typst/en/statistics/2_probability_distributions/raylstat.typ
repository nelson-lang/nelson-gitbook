#import "../nelson_help.typ": *

= raylstat <statistics:2_probability_distributions.raylstat>

Rayleigh mean and variance

== Syntax

- #raw("[m, v] = raylstat(b)");

== Input argument

/ b: positive scalar or array: scale parameter.

== Output argument

/ m: array: means.
/ v: array: variances.

== Description

#strong[raylstat]; returns the element-wise mean and variance of Rayleigh distributions.


== Example

``````matlab
[m, v] = raylstat(2);
``````


== See also

#nlink(<statistics:2_probability_distributions.raylpdf>)[raylpdf];, #nlink(<statistics:2_probability_distributions.raylrnd>)[raylrnd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
