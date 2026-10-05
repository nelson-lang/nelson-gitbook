#import "../nelson_help.typ": *

= unidrnd <statistics:2_probability_distributions.unidrnd>

Discrete uniform random numbers

== Syntax

- #raw("r = unidrnd(n)");
- #raw("r = unidrnd(n, sz)");
- #raw("r = unidrnd(n, sz1, ..., szN)");

== Input argument

/ n: positive integer scalar or array: maximum value.
/ sz: scalar, vector, or comma-separated dimensions: output size.

== Output argument

/ r: array: random integer values.

== Description

#strong[unidrnd]; generates discrete uniform random integers from 1 to #strong[n];.


== Example

``````matlab
rng(0);
r = unidrnd(5, 2, 3);
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
