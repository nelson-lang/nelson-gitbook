#import "../../nelson_help.typ": *

= pie <graphics:1_plots.6_discrete_data_plots.pie>

Legacy pie chart.

== Syntax

- #raw("pie(X)");
- #raw("pie(X, explode)");
- #raw("pie(X, labels)");
- #raw("pie(X, explode, labels)");
- #raw("pie(ax, ...)");
- #raw("p = pie(...)");

== Input argument

/ X: vector or matrix.
/ explode: Offset slices: numeric vector or matrix, logical vector and matrix, string array or cell array of character vectors.
/ labels: '%.0f%%' (default) or array of text labels
/ ax: Axes object.

== Output argument

/ p: vector of patch and text objects.

== Description

#strong[pie(X)]; generates a pie chart based on the data in the array variable #strong[X];.

 In cases where the sum of the elements in#strong[X]; is less than or equal to 1, the values in#strong[X]; directly represent the proportional areas of the pie slices.

 If the sum of #strong[X]; is less than 1, the pie chart displays only a partial pie.

 Alternatively, if the sum of #strong[X]; exceeds 1, the function normalizes the values by dividing each element by the sum of #strong[X];.

 This normalization ensures that the pie chart accurately reflects the relative proportions of the data.

 In situations where #strong[X]; is a categorical variable, each slice of the pie corresponds to a category, and the area of each slice is determined by the ratio of the number of elements in the category to the total number of elements in#strong[X];.


== Examples

``````matlab
f = figure();
p = pie ([3, 2, 1], [0, 0, 1]);
``````


#align(center)[#image("pie_1.svg")]
``````matlab
f = figure();
p = pie([5 9 4 6 3],[0 1 0 1 0]);

``````


#align(center)[#image("pie_2.svg")]
``````matlab
f = figure();
p = pie([3 4 6 2],[0 1 0 0],["part1", "part2", "part3", "part4"]);

``````


#align(center)[#image("pie_3.svg")]
``````matlab
f = figure();
y2010 = [50 0 100 95];
y2011 = [65 22 97 120];
ax1 = subplot(1, 2, 1);
p1 = pie(ax1, y2010)
title('2010')
ax2 = subplot(1, 2, 2);
p2 = pie(ax2, y2011)
title('2011')

``````


#align(center)[#image("pie_4.svg")]

== See also

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.patch>)[patch];, #nlink(<graphics:3_labels_styling.4_labels_annotations.text>)[text];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
