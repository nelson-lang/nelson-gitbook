#import "../nelson_help.typ": *

= qqplot <statistics:1_descriptive_statistics_visualization.qqplot>

Quantile-quantile plot.

== Syntax

- #raw("qqplot(x)");
- #raw("qqplot(x, y)");
- #raw("qqplot(..., p)");
- #raw("h = qqplot(...)");

== Description

#strong[qqplot]; creates a quantile-quantile plot for sample data.

 With one sample, Nelson compares sample quantiles with standard normal quantiles. With two samples, Nelson compares empirical quantiles from both samples. The returned value contains the line handles for the data, the quartile line, and the extrapolated reference line.


== Example

``````matlab
x = randn(100, 1);
qqplot(x)
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.quantile>)[quantile];, #nlink(<statistics:2_probability_distributions.norminv>)[norminv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
