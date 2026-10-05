#import "../../nelson_help.typ": *

= area <graphics:1_plots.7_surfaces_volumes_polygons.area>

Create area plots.

== Syntax

- #raw("area(Y)");
- #raw("area(X, Y)");
- #raw("area(..., basevalue)");
- #raw("area(..., propertyName, propertyValue)");
- #raw("area(ax, ...)");
- #raw("go = area(...)");

== Input argument

/ X: x-coordinates.
/ Y: area data. Matrix columns create stacked area objects.
/ basevalue: baseline value. Default is 0.

== Output argument

/ go: graphics object handles of area type.

== Description

#strong[area]; creates one native area graphics object per data column. Area objects use filled polygon rendering and support face, edge, line, alpha, base value, and interaction properties.

 See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.area.properties>)[area properties]; for the complete property list.


== Example

``````matlab
y = [1 2; 3 1; 2 4];
area(y);
``````


#align(center)[#image("area_1.svg")]

== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.area.properties>)[area properties];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.fill>)[fill];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.patch>)[patch];.

// Author: Allan CORNET
