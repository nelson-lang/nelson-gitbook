#import "../nelson_help.typ": *

= ksdensity <statistics:1_descriptive_statistics_visualization.ksdensity>

Kernel smoothing function estimate.

== Syntax

- #raw("[f, xi] = ksdensity(x)");
- #raw("[f, xi] = ksdensity(x, pts)");
- #raw("[f, xi, bw] = ksdensity(...)");
- #raw("[...] = ksdensity(..., Name, Value)");
- #raw("ksdensity(...)");

== Description

#strong[ksdensity]; estimates a smoothed distribution function from univariate sample data using a normal kernel.

 Name-value arguments include Bandwidth, Width, Function, NumPoints, Support, Weights, Frequency, Censoring, Kernel, and BoundaryCorrection. Supported function types are pdf, cdf, survivor, cumhazard, and icdf.


== Example

``````matlab
x = [0 1 2];
[f, xi, bw] = ksdensity(x)
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.ecdf>)[ecdf];, #nlink(<statistics:2_probability_distributions.normpdf>)[normpdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
