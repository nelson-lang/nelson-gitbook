#import "../../nelson_help.typ": *

= scatterhistogram <graphics:1_plots.4_data_distribution_plots.scatterhistogram>

Display a scatter plot with marginal histograms.

== Syntax

- #raw("scatterhistogram(x, y)");
- #raw("scatterhistogram(..., 'NumBins', n)");
- #raw("scatterhistogram(..., 'MarkerStyle', marker)");
- #raw("h = scatterhistogram(...)");

== Description

#strong[scatterhistogram]; creates a scatter plot and displays histograms for the x and y data distributions.

 The returned object has type #strong[scatterhistogram];. See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.scatterhistogram.properties>)[scatterhistogram properties]; for the complete property list.


== Example

Create a scatter histogram.

``````matlab
x = randn(200, 1);
y = 0.5 * x + randn(200, 1);
scatterhistogram(x, y, 'NumBins', 20);
``````


#align(center)[#image("scatterhistogram_1.svg")]

== See also

#nlink(<graphics:1_plots.4_data_distribution_plots.scatter>)[scatter];, #nlink(<graphics:1_plots.4_data_distribution_plots.histogram>)[histogram];, #nlink(<graphics:1_plots.4_data_distribution_plots.binscatter>)[binscatter];, #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.scatterhistogram.properties>)[scatterhistogram properties];.
