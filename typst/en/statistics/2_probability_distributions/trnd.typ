#import "../nelson_help.typ": *

= trnd <statistics:2_probability_distributions.trnd>

Student t random numbers

== Syntax

- #raw("r = trnd(nu)");
- #raw("r = trnd(nu, sz)");
- #raw("r = trnd(nu, sz1, ..., szN)");

== Input argument

/ nu: positive scalar or array: degrees of freedom.
/ sz: scalar, vector, or comma-separated dimensions: output size.

== Output argument

/ r: array: random values.

== Description

#strong[trnd]; generates Student t distributed random values.


== Example

``````matlab
rng(0);
r = trnd(5, 2, 3);
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
