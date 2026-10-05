#import "../nelson_help.typ": *

= normfit <statistics:2_probability_distributions.normfit>

Normal mean and standard deviation estimates

== Syntax

- #raw("[muhat, sigmahat] = normfit(x)");
- #raw("[muhat, sigmahat, muci, sigmaci] = normfit(x, alpha)");
- #raw("[muhat, sigmahat, muci, sigmaci] = normfit(x, alpha, censoring, freq)");
- #raw("[muhat, sigmahat, muci, sigmaci] = normfit(x, alpha, censoring, freq, options)");

== Input argument

/ x: finite real nonempty vector or matrix: sample data.
/ alpha: scalar in the range \[0, 1\]: significance level. Default is 0.05.
/ censoring: array containing 0 or 1 values: right-censoring flags.
/ freq: array of nonnegative finite values: observation frequencies.
/ options: structure created by statset. MaxIter and TolX control censored-data optimization.

== Output argument

/ muhat: array: mean estimates.
/ sigmahat: array: standard deviation estimates.
/ muci: array: confidence intervals for mean estimates.
/ sigmaci: array: confidence intervals for standard deviation estimates.

== Description

#strong[normfit]; estimates normal distribution mean and standard deviation parameters.


== Example

``````matlab
x = [-2 -1 0 1 3 5];
[muhat, sigmahat] = normfit(x);
``````


== See also

#nlink(<statistics:2_probability_distributions.normlike>)[normlike];, #nlink(<statistics:2_probability_distributions.normpdf>)[normpdf];, #nlink(<statistics:2_probability_distributions.normcdf>)[normcdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
