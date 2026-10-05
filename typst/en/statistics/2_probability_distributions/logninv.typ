#import "../nelson_help.typ": *

= logninv <statistics:2_probability_distributions.logninv>

Lognormal inverse cumulative distribution function

== Syntax

- #raw("x = logninv(p)");
- #raw("x = logninv(p, mu, sigma)");
- #raw("[x, xLo, xUp] = logninv(p, mu, sigma, pCov)");

== Input argument

/ p: probabilities in \[0, 1\].
/ mu: real scalar or array: mean of logarithmic values.
/ sigma: positive scalar or array: standard deviation of logarithmic values.
/ pCov: 2-by-2 covariance matrix for confidence bounds.

== Output argument

/ x: array: inverse cumulative values.
/ xLo: array: lower confidence bounds.
/ xUp: array: upper confidence bounds.

== Description

#strong[logninv]; evaluates lognormal inverse cumulative values element by element.


== Example

``````matlab
p = [0.15865525393145707 0.5 0.8413447460685429];
x = logninv(p);
``````


== See also

#nlink(<statistics:2_probability_distributions.lognpdf>)[lognpdf];, #nlink(<statistics:2_probability_distributions.logncdf>)[logncdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
