#import "../nelson_help.typ": *

= nbinrnd <statistics:2_probability_distributions.nbinrnd>

Negative binomial random numbers

== Syntax

- #raw("rout = nbinrnd(r, p)");
- #raw("rout = nbinrnd(r, p, sz)");
- #raw("rout = nbinrnd(r, p, sz1, ..., szN)");

== Input argument

/ r: positive scalar or array: number of successes.
/ p: scalar or array in the range \[0, 1\]: success probability.
/ sz: scalar, vector, or comma-separated dimensions: output size.

== Output argument

/ rout: array: random values.

== Description

#strong[nbinrnd]; generates negative binomial distributed random values.


== Example

``````matlab
rng(0);
rout = nbinrnd(3, 0.4, 2, 3);
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
