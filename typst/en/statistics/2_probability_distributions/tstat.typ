#import "../nelson_help.typ": *

= tstat <statistics:2_probability_distributions.tstat>

Student t mean and variance

== Syntax

- #raw("[m, v] = tstat(nu)");

== Input argument

/ nu: positive scalar or array: degrees of freedom.

== Output argument

/ m: array: mean values.
/ v: array: variance values.

== Description

#strong[tstat]; returns the mean and variance of the Student t distribution.


== Example

``````matlab
[m, v] = tstat([1.5 3 Inf]);
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
