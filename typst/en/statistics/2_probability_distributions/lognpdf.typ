#import "../nelson_help.typ": *

= lognpdf <statistics:2_probability_distributions.lognpdf>

Lognormal probability density function

== Syntax

- #raw("y = lognpdf(x)");
- #raw("y = lognpdf(x, mu)");
- #raw("y = lognpdf(x, mu, sigma)");

== Input argument

/ x: real scalar or array: values.
/ mu: real scalar or array: mean of logarithmic values. The default is 0.
/ sigma: positive scalar or array: standard deviation of logarithmic values. The default is 1.

== Output argument

/ y: array: density values.

== Description

#strong[lognpdf]; evaluates lognormal probability density values element by element.

 Scalar parameters are expanded to match array inputs.


== Example

``````matlab
x = [0 1 exp(1)];
y = lognpdf(x, 0, 1);
``````


== See also

#nlink(<statistics:2_probability_distributions.logncdf>)[logncdf];, #nlink(<statistics:2_probability_distributions.logninv>)[logninv];, #nlink(<statistics:2_probability_distributions.lognrnd>)[lognrnd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
