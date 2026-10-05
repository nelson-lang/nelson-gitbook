#import "../nelson_help.typ": *

= ztest <statistics:3_hypothesis_tests.ztest>

Z-test for a mean with known standard deviation

== Syntax

- #raw("h = ztest(x, m, sigma)");
- #raw("h = ztest(x, m, sigma, 'Alpha', alpha)");
- #raw("h = ztest(x, m, sigma, 'Tail', tail)");
- #raw("h = ztest(x, m, sigma, 'Dim', dim)");
- #raw("[h, p, ci, zval] = ztest(...)");

== Input argument

/ x: real numeric array: sample data.
/ m: real scalar: hypothesized mean.
/ sigma: positive real scalar: known standard deviation.
/ alpha: scalar in (0,1), 0.05 by default: significance level.
/ tail: 'both', 'right', or 'left'.
/ dim: positive integer: dimension to operate along.

== Output argument

/ h: logical array: test decision.
/ p: array: p-values.
/ ci: 2-row array: confidence intervals for the mean.
/ zval: array: z statistics.

== Description

#strong[ztest]; performs a z-test along the first non-singleton dimension unless #strong[Dim]; is specified.

 NaN values are omitted from each tested slice.


== Example

``````matlab
x = [72 75 77 70 74 76];
[h, p, ci, zval] = ztest(x, 75, 10);
[h2, p2] = ztest(x, 72, 10, 'Tail', 'right');
``````


== See also

#nlink(<statistics:3_hypothesis_tests.ttest>)[ttest];, #nlink(<statistics:2_probability_distributions.normcdf>)[normcdf];, #nlink(<statistics:2_probability_distributions.norminv>)[norminv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
