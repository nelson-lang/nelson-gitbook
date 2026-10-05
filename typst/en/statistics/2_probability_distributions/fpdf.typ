#import "../nelson_help.typ": *

= fpdf <statistics:2_probability_distributions.fpdf>

F probability density function

== Syntax

- #raw("y = fpdf(x, v1, v2)");

== Input argument

/ x: real numeric array: values where the distribution is evaluated.
/ v1: positive real numeric array or scalar: numerator degrees of freedom.
/ v2: positive real numeric array or scalar: denominator degrees of freedom.

== Output argument

/ y: probability density values.

== Description

#strong[fpdf]; computes F distribution probability density values. Scalar inputs are expanded to match array inputs.


== Example

``````matlab
x = [0.5 1 2 5];
y = fpdf(x, 5, 20);
``````


== See also

#nlink(<statistics:2_probability_distributions.fcdf>)[fcdf];, #nlink(<statistics:2_probability_distributions.finv>)[finv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
