#import "../../nelson_help.typ": *

= donutchart <graphics:1_plots.6_discrete_data_plots.donutchart>

Donut chart object.

== Syntax

- #raw("donutchart(data)");
- #raw("donutchart(data, names)");
- #raw("donutchart(fig, ...)");
- #raw("donutchart(..., propertyName, propertyValue)");
- #raw("d = donutchart(...)");

== Input argument

/ data: Numeric vector of wedge values.
/ names: String array, character vector, or cell array of character vectors used as wedge names.
/ fig: Figure parent.
/ propertyName: Donut chart property name.
/ propertyValue: Value assigned to the named property.

== Output argument

/ d: Donut chart graphics object.

== Description

#strong[donutchart(data)]; creates one donut chart object in the current figure.

 #strong[InnerRadius]; controls the hole radius as a fraction of the outer radius. #strong[CenterLabel]; draws text in the center of the hole.

 See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.donutchart.properties>)[donutchart properties]; for the complete property list.


== Examples

Donut chart with a center label.

``````matlab
figure('Color', [1 1 1]);
d = donutchart([4 3 2], ["A", "B", "C"], 'CenterLabel', '9');
``````


#align(center)[#image("donutchart_1.svg")]
Custom inner radius and colors.

``````matlab
figure('Color', [1 1 1]);
d = donutchart([5 4 3 2], 'InnerRadius', 0.35, 'FaceAlpha', 0.75, ...
  'ColorOrder', [0.8 0.2 0.2; 0.2 0.7 0.3; 0.2 0.4 0.8]);
``````


#align(center)[#image("donutchart_2.svg")]

== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.donutchart.properties>)[donutchart properties];, #nlink(<graphics:1_plots.6_discrete_data_plots.piechart>)[piechart];, #nlink(<graphics:1_plots.6_discrete_data_plots.pie>)[pie];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
