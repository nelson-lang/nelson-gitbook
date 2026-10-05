#import "../../nelson_help.typ": *

= binscatter <graphics:1_plots.4_data_distribution_plots.binscatter>

Display binned scatter plot.

== Syntax

- #raw("binscatter(x, y)");
- #raw("binscatter(x, y, n)");
- #raw("binscatter(..., 'XLimits', limits, 'YLimits', limits)");
- #raw("binscatter(..., Name, Value)");
- #raw("binscatter(parent, ...)");
- #raw("h = binscatter(...)");

== Description

#strong[binscatter]; counts points in two-dimensional bins and displays the counts as a native binscatter chart object.

 #strong[Values];, #strong[XBinEdges];, and #strong[YBinEdges]; are computed read-only properties.

 When the axes are zoomed, the chart recomputes smaller bins so the visible region keeps approximately the requested bin density.

 See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.binscatter.properties>)[binscatter properties]; for the complete property list.


== Examples

Display binned scatter density.

``````matlab
x = randn(1000, 1);
y = x + 0.5 * randn(1000, 1);
h = binscatter(x, y, [30 30]);
h.FaceAlpha = 0.9;
``````


#align(center)[#image("binscatter_1.svg")]
Inspect computed bin values and edges.

``````matlab
x = [0.1 0.2 0.8 1.2 1.8 1.9];
y = [0.1 0.9 0.8 1.2 1.1 1.9];
h = binscatter(x, y, [2 2], 'XLimits', [0 2], 'YLimits', [0 2]);
h.Values
h.XBinEdges
h.YBinEdges
``````


== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.binscatter.properties>)[binscatter properties];, #nlink(<graphics:1_plots.4_data_distribution_plots.scatter>)[scatter];, #nlink(<graphics:1_plots.4_data_distribution_plots.histogram2>)[histogram2];.
