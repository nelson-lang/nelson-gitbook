#import "../nelson_help.typ": *

= probplot <statistics:1_descriptive_statistics_visualization.probplot>

Probability plot.

== Syntax

- #raw("probplot(y)");
- #raw("probplot(y, cens)");
- #raw("probplot(y, cens, freq)");
- #raw("probplot(dist, ...)");
- #raw("probplot(..., 'noref')");
- #raw("h = probplot(...)");

== Description

#strong[probplot]; creates a probability plot for sample data.

 The default distribution is normal. Supported distribution names include normal, exponential, extreme value, half normal, lognormal, logistic, loglogistic, rayleigh, and weibull. The returned value contains line handles for data points and, unless noref is specified, reference lines.


== Example

``````matlab
x = randn(100, 1);
probplot(x)
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.qqplot>)[qqplot];, #nlink(<statistics:1_descriptive_statistics_visualization.ecdf>)[ecdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
