#import "../nelson_help.typ": *

= lillietest <statistics:3_hypothesis_tests.lillietest>

Lilliefors goodness-of-fit test.

== Syntax

- #raw("h = lillietest(x)");
- #raw("h = lillietest(x, Name, Value)");
- #raw("[h, p] = lillietest(...)");
- #raw("[h, p, kstat, critval] = lillietest(...)");

== Description

#strong[lillietest]; performs a two-sided Lilliefors goodness-of-fit test with parameters estimated from the sample. #strong[NaN]; observations are omitted.

 Name-value arguments include #strong[Alpha];, #strong[Distribution];, and #strong[MCTol];. Supported distributions are normal, exponential, and extreme value. #strong[MCTol]; is accepted for syntax compatibility; this implementation uses a deterministic approximation.


== Example

``````matlab
x = [-1 -0.5 0 0.5 1];
[h, p, kstat, critval] = lillietest(x)
``````


== See also

#nlink(<statistics:3_hypothesis_tests.jbtest>)[jbtest];, #nlink(<statistics:3_hypothesis_tests.kstest>)[kstest];, #nlink(<statistics:3_hypothesis_tests.chi2gof>)[chi2gof];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
