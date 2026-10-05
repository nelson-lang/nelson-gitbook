#import "../nelson_help.typ": *

= unidinv <statistics:2_probability_distributions.unidinv>

Discrete uniform inverse cumulative distribution function

== Syntax

- #raw("x = unidinv(p, n)");

== Input argument

/ p: probabilities in the range \[0, 1\].
/ n: positive integer scalar or array: maximum value.

== Output argument

/ x: inverse values.

== Description

#strong[unidinv]; computes inverse cumulative probabilities for the discrete uniform distribution on integers from 1 to #strong[n];.


== Example

``````matlab
p = [0 0.1 0.5 1];
x = unidinv(p, 5);
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
