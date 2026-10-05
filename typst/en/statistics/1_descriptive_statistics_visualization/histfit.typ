#import "../nelson_help.typ": *

= histfit <statistics:1_descriptive_statistics_visualization.histfit>

Histogram with fitted distribution curve.

== Syntax

- #raw("histfit(data)");
- #raw("histfit(data, nbins)");
- #raw("histfit(data, nbins, dist)");
- #raw("histfit(ax, ...)");
- #raw("h = histfit(...)");

== Description

#strong[histfit]; displays a histogram and overlays a fitted probability density curve scaled to the histogram counts.

 The default distribution is normal. Supported distribution names include normal, kernel, exponential, gamma, beta, extreme value, half normal, lognormal, logistic, loglogistic, rayleigh, and weibull.


== Example

``````matlab
x = randn(100, 1);
histfit(x, 12)
``````


== See also

#nlink(<graphics:1_plots.4_data_distribution_plots.histogram>)[histogram];, #nlink(<statistics:1_descriptive_statistics_visualization.ksdensity>)[ksdensity];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
