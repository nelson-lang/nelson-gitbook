#import "../nelson_help.typ": *

= frnd <statistics:2_probability_distributions.frnd>

F random numbers

== Syntax

- #raw("r = frnd(v1, v2)");
- #raw("r = frnd(v1, v2, sz)");
- #raw("r = frnd(v1, v2, sz1, ..., szN)");

== Input argument

/ v1: positive scalar or array: numerator degrees of freedom.
/ v2: positive scalar or array: denominator degrees of freedom.
/ sz: scalar, vector, or comma-separated dimensions: output size.

== Output argument

/ r: array: random values.

== Description

#strong[frnd]; generates F distributed random values.


== Example

``````matlab
rng(0);
r = frnd(5, 7, 2, 3);
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
