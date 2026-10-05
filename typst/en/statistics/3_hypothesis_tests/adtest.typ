#import "../nelson_help.typ": *

= adtest <statistics:3_hypothesis_tests.adtest>

Anderson-Darling goodness-of-fit test.

== Syntax

- #raw("h = adtest(x)");
- #raw("h = adtest(x, Name, Value)");
- #raw("[h, p] = adtest(...)");
- #raw("[h, p, adstat, cv] = adtest(...)");

== Description

#strong[adtest]; performs an Anderson-Darling goodness-of-fit test. #strong[NaN]; observations are omitted.

 Name-value arguments include #strong[Distribution];, #strong[Alpha];, #strong[MCTol];, and #strong[Asymptotic];. Supported distribution families are norm, exp, ev, logn, and weibull. #strong[MCTol]; is accepted for syntax compatibility; this implementation uses a deterministic approximation.


== Example

``````matlab
x = [1 2 3 4 5];
[h, p, adstat, cv] = adtest(x)
``````


== See also

#nlink(<statistics:3_hypothesis_tests.jbtest>)[jbtest];, #nlink(<statistics:3_hypothesis_tests.lillietest>)[lillietest];, #nlink(<statistics:3_hypothesis_tests.kstest>)[kstest];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
