#import "../nelson_help.typ": *

= betalike <statistics:2_probability_distributions.betalike>

Beta negative log-likelihood

== Syntax

- #raw("nlogL = betalike(params, x)");
- #raw("[nlogL, avar] = betalike(params, x)");

== Input argument

/ params: two-element positive real vector: beta distribution shape parameters.
/ x: finite real nonempty array with values in the open interval (0, 1): sample data.

== Output argument

/ nlogL: scalar: negative log-likelihood.
/ avar: 2-by-2 array: asymptotic covariance estimate.

== Description

#strong[betalike]; returns the negative log-likelihood for beta distribution data and the asymptotic covariance estimate.


== Example

``````matlab
x = [0.12 0.2 0.35 0.5 0.7 0.85];
[nlogL, avar] = betalike([1.5 1.8], x);
``````


== See also

#nlink(<statistics:2_probability_distributions.betafit>)[betafit];, #nlink(<statistics:2_probability_distributions.betapdf>)[betapdf];, #nlink(<statistics:2_probability_distributions.betacdf>)[betacdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
