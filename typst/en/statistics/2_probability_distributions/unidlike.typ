#import "../nelson_help.typ": *

= unidlike <statistics:2_probability_distributions.unidlike>

Discrete uniform negative log-likelihood

== Syntax

- #raw("nlogL = unidlike(n, x)");
- #raw("[nlogL, avar] = unidlike(n, x)");

== Input argument

/ n: positive integer scalar: maximum value.
/ x: positive integer finite real nonempty array: sample data.

== Output argument

/ nlogL: scalar: negative log-likelihood.
/ avar: scalar: asymptotic variance estimate.

== Description

#strong[unidlike]; returns the negative log-likelihood for discrete uniform distribution data.


== Example

``````matlab
x = [1 2 4 5 5];
[nlogL, avar] = unidlike(5, x);
``````


== See also

#nlink(<statistics:2_probability_distributions.unidfit>)[unidfit];, #nlink(<statistics:2_probability_distributions.unidpdf>)[unidpdf];, #nlink(<statistics:2_probability_distributions.unidcdf>)[unidcdf];, #nlink(<statistics:2_probability_distributions.unidrnd>)[unidrnd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
