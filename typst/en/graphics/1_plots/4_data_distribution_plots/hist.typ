#import "../../nelson_help.typ": *

= hist <graphics:1_plots.4_data_distribution_plots.hist>

Histogram plot.

== Syntax

- #raw("hist(x)");
- #raw("hist(x, nbins)");
- #raw("hist(ax, ...)");
- #raw("counts = hist(...)");
- #raw("[counts, centers] = hist(...)");

== Input argument

/ x: vector or matrix
/ nbins: vector.
/ ax: Axes object.

== Output argument

/ counts: Counts of the number of elements in each bin: row vector for a vector input, one column of counts per column of a matrix input.
/ centers: Bin centers: vector.

== Description

A histogram is a graphical representation that illustrates the distribution of data values.

 When you use the #strong[hist]; function, it organizes the elements in the vector#strong[Y]; into 10 equally spaced containers and provides the count of elements in each container as a row vector.

 #strong[hist(Y, x)]; with a vector#strong[x];, the function will return the distribution of values in#strong[Y]; among bins determined by the length of #strong[x];, with centers specified by the values in #strong[x];.

 For instance, if #strong[x]; is a 5-element vector,#strong[hist]; will categorize the elements of #strong[Y]; into five bins, each centered on the x-axis at the values specified in#strong[x];.

 A matrix #strong[Y]; is a set of samples, one per column: #strong[hist]; counts each column on its own and returns one column of counts per column of #strong[Y];, and draws one bar series per column. The bins are read on the whole matrix, so every column is counted against the same bins.

 When you use #strong[hist(...)]; without specifying any output arguments, it generates a histogram plot. The bins are distributed along the x-axis between the minimum and maximum values found in the input vector#strong[Y];.

 The #strong[statistics]; module carries a #strong[hist]; of its own, which this one takes over from as soon as the graphics module is loaded. Both count their bins the same way, so the same call answers the same counts either way; the one here is the only one that draws and the only one that accepts a designated axes.


== Example

``````matlab
f = figure();
for i = 1:4
  subplot(2, 2, i)
  hist(randn(1000, 1), 50)
end

``````


#align(center)[#image("hist_1.svg")]

== See also

#nlink(<graphics:1_plots.6_discrete_data_plots.bar>)[bar];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.patch>)[patch];, #nlink(<statistics:1_descriptive_statistics_visualization.hist>)[hist (statistics)];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
