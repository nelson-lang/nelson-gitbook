#import "../nelson_help.typ": *

= logncdf <statistics:2_probability_distributions.logncdf>

Lognormal cumulative distribution function

== Syntax

- #raw("p = logncdf(x)");
- #raw("p = logncdf(x, mu, sigma)");
- #raw("[p, pLo, pUp] = logncdf(x, mu, sigma, pCov)");
- #raw("p = logncdf(..., 'upper')");

== Input argument

/ x: real scalar or array: values.
/ mu: real scalar or array: mean of logarithmic values.
/ sigma: positive scalar or array: standard deviation of logarithmic values.
/ pCov: 2-by-2 covariance matrix for confidence bounds.

== Output argument

/ p: array: cumulative probabilities.
/ pLo: array: lower confidence bounds.
/ pUp: array: upper confidence bounds.

== Description

#strong[logncdf]; evaluates lognormal cumulative probabilities element by element.


== Example

``````matlab
p = logncdf([0 1 exp(1)]);
q = logncdf(exp(10), 'upper');
``````


== See also

#nlink(<statistics:2_probability_distributions.lognpdf>)[lognpdf];, #nlink(<statistics:2_probability_distributions.logninv>)[logninv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
