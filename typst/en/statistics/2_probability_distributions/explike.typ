#import "../nelson_help.typ": *

= explike <statistics:2_probability_distributions.explike>

Exponential negative log-likelihood

== Syntax

- #raw("nlogL = explike(mu, x)");
- #raw("[nlogL, avar] = explike(mu, x)");
- #raw("[nlogL, avar] = explike(mu, x, censoring, freq)");

== Input argument

/ mu: positive scalar: exponential mean parameter.
/ x: nonnegative finite real nonempty array: sample data.
/ censoring: array containing 0 or 1 values: right-censoring flags.
/ freq: array of nonnegative finite values: observation frequencies.

== Output argument

/ nlogL: scalar: negative log-likelihood.
/ avar: scalar: asymptotic variance estimate.

== Description

#strong[explike]; returns the negative log-likelihood for exponential distribution data and the asymptotic variance estimate.


== Example

``````matlab
x = [0.5 1 2 3 5 8];
[nlogL, avar] = explike(3.25, x);
``````


== See also

#nlink(<statistics:2_probability_distributions.expfit>)[expfit];, #nlink(<statistics:2_probability_distributions.exppdf>)[exppdf];, #nlink(<statistics:2_probability_distributions.expcdf>)[expcdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
