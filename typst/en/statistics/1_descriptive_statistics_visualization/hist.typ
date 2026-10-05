#import "../nelson_help.typ": *

= hist <statistics:1_descriptive_statistics_visualization.hist>

Histogram bin counts.

== Syntax

- #raw("hist(Y)");
- #raw("hist(Y, nbins)");
- #raw("hist(Y, centers)");
- #raw("n = hist(...)");
- #raw("[n, c] = hist(...)");

== Input argument

/ Y: a numeric vector.
/ nbins: a scalar: number of equally spaced bins (default 10).
/ centers: a vector of bin centers.

== Output argument

/ n: the number of elements in each bin.
/ c: the bin centers.

== Description

#strong[hist]; distributes the elements of #strong[Y]; into bins and returns the bin counts.

 Two modules carry a #strong[hist];: this one and the one in the #strong[graphics]; module. Both count their bins the same way, so the same call answers the same counts either way. The graphics one takes over as soon as that module is loaded: it is the one that draws, and the only one that accepts a designated axes. This one is what answers where graphics is not loaded, as in #strong[nelson-cli];, and it only counts: asking it to draw reports that the graphics module is needed.

 This is a legacy function; #strong[histogram]; and #strong[histcounts]; are preferred for new code.


== Example

``````matlab
[n, c] = hist([2 4 4 4 5 5 7 9], 3)
``````


== See also

#nlink(<graphics:1_plots.4_data_distribution_plots.hist>)[hist (graphics)];, #nlink(<elementary_functions:7_indexing_dimensions.histc>)[histc];, #nlink(<statistics:1_descriptive_statistics_visualization.tabulate>)[tabulate];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.14.0], [initial version],
)

// Author: Allan CORNET
