#import "../nelson_help.typ": *

= gamstat <statistics:2_probability_distributions.gamstat>

Gamma mean and variance

== Syntax

- #raw("[m, v] = gamstat(a, b)");

== Input argument

/ a: positive scalar or array: shape parameter.
/ b: positive scalar or array: scale parameter.

== Output argument

/ m: array: mean values.
/ v: array: variance values.

== Description

#strong[gamstat]; returns the mean and variance of the gamma distribution.


== Example

``````matlab
[m, v] = gamstat([1 2 3], [4 5 6]);
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
