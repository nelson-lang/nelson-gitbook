#import "../../nelson_help.typ": *

= histogram <graphics:1_plots.4_data_distribution_plots.histogram>

Create histogram plot.

== Syntax

- #raw("histogram(X)");
- #raw("histogram(X, nbins)");
- #raw("histogram(X, edges)");
- #raw("histogram(C)");
- #raw("histogram(C, categories)");
- #raw("histogram(..., propertyName, propertyValue)");
- #raw("histogram(ax, ...)");
- #raw("h = histogram(...)");

== Input argument

/ X: numeric input data.
/ nbins: number of bins.
/ edges: strictly increasing bin edges.
/ C: categorical input data.
/ categories: cell array of character vectors or string array selecting the categories to display and their order.
/ propertyName: histogram object property name.
/ propertyValue: histogram object property value.
/ ax: target axes object.

== Output argument

/ h: histogram graphics object.

== Description

#strong[histogram]; bins numeric data and displays the bin values as bars or stairs.

 When #strong[C]; is a categorical array, #strong[histogram]; draws one bar per category, with a bar height equal to the number of elements in that category. The bars are displayed in category order (as returned by #strong[categories];), and the category names are used as tick labels. A second argument may list the categories to display and their order.

 See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.histogram.properties>)[histogram properties]; for the complete property list.


== Examples

``````matlab
x = [1 1 2 2 2 3 4 4 5];
histogram(x);

``````


#align(center)[#image("histogram_1.svg")]
``````matlab
x = randn(200, 1);
histogram(x, 12, 'Normalization', 'probability', 'FaceAlpha', 0.5);

``````


#align(center)[#image("histogram_2.svg")]
``````matlab
x = [1 1 2 3 3 4 5];
h = histogram(x, [0 2 4 6], 'DisplayStyle', 'stairs');
h.LineWidth = 1.5;

``````


#align(center)[#image("histogram_3.svg")]
Categorical histogram: one bar per category, counts in category order.

``````matlab
C = categorical({'small', 'medium', 'large', 'small', 'medium', 'small'});
histogram(C);

``````


#align(center)[#image("histogram_4.svg")]

== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.histogram.properties>)[histogram properties];, #nlink(<graphics:1_plots.4_data_distribution_plots.hist>)[hist];, #nlink(<graphics:1_plots.6_discrete_data_plots.bar>)[bar];.

// Author: Allan CORNET
