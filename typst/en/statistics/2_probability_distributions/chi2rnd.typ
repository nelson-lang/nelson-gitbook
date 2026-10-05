#import "../nelson_help.typ": *

= chi2rnd <statistics:2_probability_distributions.chi2rnd>

Chi-square random numbers

== Syntax

- #raw("r = chi2rnd(nu)");
- #raw("r = chi2rnd(nu, sz)");
- #raw("r = chi2rnd(nu, sz1, ..., szN)");

== Input argument

/ nu: positive scalar or array: degrees of freedom.
/ sz: scalar, vector, or comma-separated dimensions: output size.

== Output argument

/ r: array: random values.

== Description

#strong[chi2rnd]; generates chi-square distributed random values.


== Example

``````matlab
rng(0);
r = chi2rnd(4, 2, 3);
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
