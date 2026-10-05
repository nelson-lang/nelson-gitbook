#import "../nelson_help.typ": *

= chi2gof <statistics:3_hypothesis_tests.chi2gof>

Chi-square goodness-of-fit test.

== Syntax

- #raw("h = chi2gof(x)");
- #raw("h = chi2gof(x, Name, Value)");
- #raw("[h, p, stats] = chi2gof(...)");

== Description

#strong[chi2gof]; performs a chi-square goodness-of-fit test for a real numeric vector. Non-finite observations and nonpositive or non-finite frequencies are omitted.

 Name-value arguments include #strong[Alpha];, #strong[NBins];, #strong[Ctrs];, #strong[Edges];, #strong[CDF];, #strong[Expected];, #strong[Frequency];, #strong[NParams];, and #strong[EMin];. #strong[CDF]; can be a two-column matrix or a function handle.

 The #strong[stats]; output contains #strong[chi2stat];, #strong[df];, #strong[edges];, #strong[O];, and #strong[E];.


== Example

``````matlab
x = norminv(((1:100) - 0.5) / 100);
[h, p, stats] = chi2gof(x)
``````


== See also

#nlink(<statistics:2_probability_distributions.chi2cdf>)[chi2cdf];, #nlink(<statistics:3_hypothesis_tests.kstest>)[kstest];, #nlink(<statistics:1_descriptive_statistics_visualization.crosstab>)[crosstab];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
