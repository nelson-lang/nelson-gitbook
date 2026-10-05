#import "../nelson_help.typ": *

= ecdf <statistics:1_descriptive_statistics_visualization.ecdf>

Empirical cumulative distribution function.

== Syntax

- #raw("[f, x] = ecdf(y)");
- #raw("[f, x] = ecdf(y, Name, Value)");
- #raw("[f, x, flo, fup] = ecdf(...)");
- #raw("ecdf(...)");
- #raw("ecdf(ax, ...)");

== Description

#strong[ecdf]; computes empirical distribution values from sample data.

 Name-value arguments include Function, Censoring, Frequency, Alpha, and Bounds. Supported function types are cdf, survivor, and cumhazard. Bounds can be on or off for plotting.


== Example

``````matlab
y = [3 1 2 2];
[f, x] = ecdf(y)
``````


== See also

#nlink(<statistics:3_hypothesis_tests.kstest>)[kstest];, #nlink(<statistics:1_descriptive_statistics_visualization.ksdensity>)[ksdensity];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
