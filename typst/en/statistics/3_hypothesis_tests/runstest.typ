#import "../nelson_help.typ": *

= runstest <statistics:3_hypothesis_tests.runstest>

Runs test for randomness.

== Syntax

- #raw("h = runstest(x)");
- #raw("h = runstest(x, v)");
- #raw("h = runstest(x, 'ud')");
- #raw("h = runstest(..., Name, Value)");
- #raw("[h, p, stats] = runstest(...)");

== Description

#strong[runstest]; tests whether values in a vector appear in random order. The default test counts runs above and below the mean of #strong[x];. A scalar #strong[v]; can be supplied as a reference value. The #strong[ud]; mode counts runs up and down.

 Name-value arguments include #strong[Alpha];, #strong[Method];, and #strong[Tail];. #strong[NaN]; values and values exactly equal to the reference are omitted.


== Example

``````matlab
x = [1 2 3 4 5 0 -1 -2];
[h, p, stats] = runstest(x)
``````


== See also

#nlink(<statistics:3_hypothesis_tests.signtest>)[signtest];, #nlink(<statistics:3_hypothesis_tests.signrank>)[signrank];, #nlink(<statistics:2_probability_distributions.normcdf>)[normcdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
