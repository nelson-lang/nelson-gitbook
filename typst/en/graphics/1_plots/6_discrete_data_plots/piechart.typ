#import "../../nelson_help.typ": *

= piechart <graphics:1_plots.6_discrete_data_plots.piechart>

Pie chart object.

== Syntax

- #raw("piechart(data)");
- #raw("piechart(data, names)");
- #raw("piechart(fig, ...)");
- #raw("piechart(..., propertyName, propertyValue)");
- #raw("p = piechart(...)");

== Input argument

/ data: Numeric vector of wedge values. Negative, infinite, and NaN values are ignored for display.
/ names: String array, character vector, or cell array of character vectors used as wedge names.
/ fig: Figure parent.
/ propertyName: Pie chart property name.
/ propertyValue: Value assigned to the named property.

== Output argument

/ p: Pie chart graphics object.

== Description

#strong[piechart(data)]; creates one pie chart object in the current figure.

 #strong[FaceColor]; can be #strong[flat];, #strong[none];, or an RGB color. #strong[FaceAlpha];, #strong[EdgeColor];, and #strong[LineWidth]; affect the rendered wedges. #strong[Proportions];, #strong[CategoryCounts];, #strong[WedgeDisplayData];, and #strong[WedgeDisplayNames]; are read-only derived properties.

 See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.piechart.properties>)[piechart properties]; for the complete property list.


== Examples

Pie chart with default percent labels.

``````matlab
figure('Color', [1 1 1]);
p = piechart([1 2 3 4]);
``````


#align(center)[#image("piechart_1.svg")]
Named wedges with a legend.

``````matlab
figure('Color', [1 1 1]);
p = piechart([4 3 2], ["A", "B", "C"], 'LegendVisible', 'on', ...
  'LegendTitle', 'Names', 'FaceAlpha', 0.7);
``````


#align(center)[#image("piechart_2.svg")]
Wireframe wedges.

``````matlab
figure('Color', [1 1 1]);
p = piechart([3 2 1], 'FaceColor', 'none', 'EdgeColor', [0 0 0], ...
  'LineWidth', 2);
``````


#align(center)[#image("piechart_3.svg")]

== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.piechart.properties>)[piechart properties];, #nlink(<graphics:1_plots.6_discrete_data_plots.donutchart>)[donutchart];, #nlink(<graphics:1_plots.6_discrete_data_plots.pie>)[pie];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
