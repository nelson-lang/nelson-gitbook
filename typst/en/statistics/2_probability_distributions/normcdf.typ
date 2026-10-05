#import "../nelson_help.typ": *

= normcdf <statistics:2_probability_distributions.normcdf>

Normal cumulative distribution function

== Syntax

- #raw("p = normcdf(x)");
- #raw("p = normcdf(x, mu, sigma)");
- #raw("p = normcdf(..., 'upper')");
- #raw("[p, pLo, pUp] = normcdf(x, mu, sigma, pCov)");
- #raw("[p, pLo, pUp] = normcdf(x, mu, sigma, pCov, alpha)");

== Input argument

/ x: real scalar or array: values where the distribution is evaluated.
/ mu: real scalar or array, 0 by default: mean.
/ sigma: positive real scalar or array, 1 by default: standard deviation.
/ pCov: 2-by-2 covariance matrix for the estimated parameters.
/ alpha: scalar in (0,1), 0.05 by default: significance level for confidence bounds.

== Output argument

/ p: scalar or array: cumulative probabilities.
/ pLo: lower confidence bound.
/ pUp: upper confidence bound.

== Description

#strong[normcdf]; evaluates the cumulative distribution function of the normal distribution.

 Scalar inputs are expanded to match array inputs. If any distribution input uses single precision, the result uses single precision.


== Example

``````matlab
x = [-2 -1 0 1 2];
p = normcdf(x);
upperTail = normcdf(x, 0, 1, 'upper');
[p, pLo, pUp] = normcdf(0, 0, 1, [0.04 0; 0 0.01]);
``````


== See also

#nlink(<statistics:2_probability_distributions.normpdf>)[normpdf];, #nlink(<statistics:2_probability_distributions.norminv>)[norminv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
