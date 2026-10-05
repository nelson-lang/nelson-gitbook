#import "../../nelson_help.typ": *

= bubblechart <graphics:1_plots.4_data_distribution_plots.bubblechart>

Display bubble chart.

== Syntax

- #raw("bubblechart(x, y, sz)");
- #raw("bubblechart(x, y, sz, c)");
- #raw("bubblechart(tbl, xvar, yvar, sizevar)");
- #raw("bubblechart(tbl, xvar, yvar, sizevar, cvar)");
- #raw("bubblechart(parent, ...)");
- #raw("bubblechart(..., propertyName, propertyValue)");
- #raw("h = bubblechart(...)");

== Description

#strong[bubblechart]; displays a chart whose circular marker sizes are controlled by #strong[sz];.

 #strong[x];, #strong[y];, and #strong[sz]; can be vectors or matrices. Vector #strong[x]; and #strong[y]; with scalar #strong[sz]; create one bubblechart object per point. Matrix inputs create one object per data series.

 #strong[c]; specifies bubble colors. It can be a color name, short color name, RGB triplet, color vector, or RGB matrix.

 Table syntax reads variables from #strong[tbl];. Variable selectors can be names, string arrays, cell arrays of names, numeric indices, or logical vectors.

 See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.bubblechart.properties>)[bubblechart properties]; for the complete property list.


== Examples

Display a bubble chart.

``````matlab
bubblechart(1:5, [3 5 2 8 4], [20 50 30 80 40], 'BubbleColor', 'r');
``````


#align(center)[#image("bubblechart_1.svg")]
Display several series from matrix data.

``````matlab
x = [1 2 3; 4 5 6];
y = [2 4 3; 5 6 4];
sz = [20 40 60; 50 30 70];
bubblechart(x, y, sz);
``````


#align(center)[#image("bubblechart_2.svg")]
Use table variables.

``````matlab
t = table((1:4)', [4; 2; 6; 3], [20; 60; 30; 80], [1; 2; 3; 4], ...
  'VariableNames', {'x', 'y', 's', 'c'});
bubblechart(t, 'x', 'y', 's', 'c');
``````


#align(center)[#image("bubblechart_3.svg")]

== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.bubblechart.properties>)[bubblechart properties];, #nlink(<graphics:1_plots.4_data_distribution_plots.scatter>)[scatter];, #nlink(<graphics:1_plots.4_data_distribution_plots.bubblechart3>)[bubblechart3];.
