#import "../nelson_help.typ": *

= betastat <statistics:2_probability_distributions.betastat>

Beta mean and variance

== Syntax

- #raw("[m, v] = betastat(a, b)");

== Input argument

/ a: positive scalar or array: first shape parameter.
/ b: positive scalar or array: second shape parameter.

== Output argument

/ m: array: mean values.
/ v: array: variance values.

== Description

#strong[betastat]; returns the mean and variance of the beta distribution.


== Example

``````matlab
[m, v] = betastat([1 2], [3 4]);
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
