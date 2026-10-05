#import "../nelson_help.typ": *

= raylinv <statistics:2_probability_distributions.raylinv>

Rayleigh inverse cumulative distribution function

== Syntax

- #raw("x = raylinv(p, b)");

== Input argument

/ p: probabilities in \[0, 1\].
/ b: positive scalar or array: scale parameter.

== Output argument

/ x: array: inverse cumulative values.

== Description

#strong[raylinv]; evaluates Rayleigh inverse cumulative values element by element.


== Example

``````matlab
p = [0 0.3934693402873666 0.8646647167633873];
x = raylinv(p, 2);
``````


== See also

#nlink(<statistics:2_probability_distributions.raylpdf>)[raylpdf];, #nlink(<statistics:2_probability_distributions.raylcdf>)[raylcdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
