#import "../nelson_help.typ": *

= jbtest <statistics:3_hypothesis_tests.jbtest>

Jarque-Bera normality test.

== Syntax

- #raw("h = jbtest(x)");
- #raw("h = jbtest(x, alpha)");
- #raw("h = jbtest(x, alpha, mctol)");
- #raw("[h, p, jbstat, critval] = jbtest(...)");

== Description

#strong[jbtest]; performs a Jarque-Bera test for normality with unknown mean and variance. #strong[NaN]; observations are omitted.

 The optional #strong[alpha]; argument sets the significance level. The optional #strong[mctol]; argument is accepted for syntax compatibility; this implementation uses the deterministic chi-square approximation.


== Example

``````matlab
x = [1 2 3 4 5];
[h, p, jbstat, critval] = jbtest(x)
``````


== See also

#nlink(<statistics:3_hypothesis_tests.chi2gof>)[chi2gof];, #nlink(<statistics:3_hypothesis_tests.kstest>)[kstest];, #nlink(<statistics:2_probability_distributions.normcdf>)[normcdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
