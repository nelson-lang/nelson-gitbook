#import "../nelson_help.typ": *

= chi2stat <statistics:2_probability_distributions.chi2stat>

Chi-square mean and variance

== Syntax

- #raw("[m, v] = chi2stat(nu)");

== Input argument

/ nu: positive scalar or array: degrees of freedom.

== Output argument

/ m: array: mean values.
/ v: array: variance values.

== Description

#strong[chi2stat]; returns the mean and variance of the chi-square distribution.


== Example

``````matlab
[m, v] = chi2stat([1 2 3]);
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
