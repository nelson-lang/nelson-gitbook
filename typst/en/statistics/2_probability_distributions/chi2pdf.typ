#import "../nelson_help.typ": *

= chi2pdf <statistics:2_probability_distributions.chi2pdf>

Chi-square probability density function

== Syntax

- #raw("y = chi2pdf(x, v)");

== Input argument

/ x: real numeric array: values where the density is evaluated.
/ v: positive real numeric array or scalar: degrees of freedom.

== Output argument

/ y: density values.

== Description

#strong[chi2pdf]; computes the chi-square probability density. Scalar inputs are expanded to match array inputs.


== Example

``````matlab
x = [0.5 1 2 5];
y = chi2pdf(x, 4);
``````


== See also

#nlink(<statistics:2_probability_distributions.chi2cdf>)[chi2cdf];, #nlink(<statistics:2_probability_distributions.chi2inv>)[chi2inv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
