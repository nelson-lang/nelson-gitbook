#import "../nelson_help.typ": *

= norminv <statistics:2_probability_distributions.norminv>

Normal inverse cumulative distribution function

== Syntax

- #raw("x = norminv(p)");
- #raw("x = norminv(p, mu, sigma)");
- #raw("[x, xLo, xUp] = norminv(p, mu, sigma, pCov)");
- #raw("[x, xLo, xUp] = norminv(p, mu, sigma, pCov, alpha)");

== Input argument

/ p: real scalar or array: probabilities.
/ mu: real scalar or array, 0 by default: mean.
/ sigma: positive real scalar or array, 1 by default: standard deviation.
/ pCov: 2-by-2 covariance matrix for the estimated parameters.
/ alpha: scalar in (0,1), 0.05 by default: significance level for confidence bounds.

== Output argument

/ x: scalar or array: quantiles.
/ xLo: lower confidence bound.
/ xUp: upper confidence bound.

== Description

#strong[norminv]; evaluates quantiles of the normal distribution.

 Probabilities outside \[0,1\] return NaN. Probabilities 0 and 1 return infinite endpoints.


== Example

``````matlab
p = [0.025 0.5 0.975];
x = norminv(p);
[x, xLo, xUp] = norminv(0.5, 0, 1, [0.04 0; 0 0.01]);
``````


== See also

#nlink(<statistics:2_probability_distributions.normcdf>)[normcdf];, #nlink(<statistics:2_probability_distributions.normrnd>)[normrnd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
