#import "../nelson_help.typ": *

= chi2cdf <statistics:2_probability_distributions.chi2cdf>

Chi-square cumulative distribution function

== Syntax

- #raw("p = chi2cdf(x, v)");
- #raw("p = chi2cdf(x, v, 'upper')");

== Input argument

/ x: real numeric array: values where the distribution is evaluated.
/ v: positive real numeric array or scalar: degrees of freedom.

== Output argument

/ p: cumulative probabilities or upper-tail probabilities.

== Description

#strong[chi2cdf]; computes lower-tail chi-square probabilities by default and upper-tail probabilities when #strong['upper']; is specified.


== Example

``````matlab
x = [0.5 1 2 5];
p = chi2cdf(x, 4);
q = chi2cdf(x, 4, 'upper');
``````


== See also

#nlink(<statistics:2_probability_distributions.chi2pdf>)[chi2pdf];, #nlink(<statistics:2_probability_distributions.chi2inv>)[chi2inv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
