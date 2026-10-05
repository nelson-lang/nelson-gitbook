#import "../nelson_help.typ": *

= poisslike <statistics:2_probability_distributions.poisslike>

Poisson negative log-likelihood

== Syntax

- #raw("nlogL = poisslike(lambda, x)");
- #raw("[nlogL, avar] = poisslike(lambda, x)");

== Input argument

/ lambda: nonnegative scalar: Poisson rate parameter.
/ x: nonnegative integer finite real nonempty array: sample counts.

== Output argument

/ nlogL: scalar: negative log-likelihood.
/ avar: scalar: asymptotic variance estimate.

== Description

#strong[poisslike]; returns the negative log-likelihood for Poisson distribution data and the asymptotic variance estimate.


== Example

``````matlab
x = [0 1 2 3 5 8];
[nlogL, avar] = poisslike(3, x);
``````


== See also

#nlink(<statistics:2_probability_distributions.poissfit>)[poissfit];, #nlink(<statistics:2_probability_distributions.poisspdf>)[poisspdf];, #nlink(<statistics:2_probability_distributions.poisscdf>)[poisscdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
