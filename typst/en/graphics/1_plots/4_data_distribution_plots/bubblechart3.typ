#import "../../nelson_help.typ": *

= bubblechart3 <graphics:1_plots.4_data_distribution_plots.bubblechart3>

Display 3-D bubble chart.

== Syntax

- #raw("bubblechart3(x, y, z, sz)");
- #raw("bubblechart3(x, y, z, sz, c)");
- #raw("bubblechart3(tbl, xvar, yvar, zvar, szvar)");
- #raw("bubblechart3(tbl, xvar, yvar, zvar, szvar, cvar)");
- #raw("bubblechart3(parent, ...)");
- #raw("bubblechart3(..., propertyName, propertyValue)");
- #raw("h = bubblechart3(...)");

== Description

#strong[bubblechart3]; displays a 3-D scatter plot whose marker sizes are controlled by #strong[sz];.

 #strong[c]; specifies bubble colors. It can be a color name, short color name, RGB triplet, color vector, or RGB matrix.

 Table input selects data from variables in #strong[tbl];. Each variable selector can be a variable name, string, index, logical selector, or a cell\/string vector of names. Multiple selected variables create multiple #strong[bubblechart]; objects.

 The returned handle is a #strong[bubblechart]; object with #strong[XData];, #strong[YData];, #strong[ZData];, and #strong[SizeData];.

 See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.bubblechart.properties>)[bubblechart properties]; for the complete property list.


== Examples

Display a 3-D bubble chart.

``````matlab
t = 0:0.4:2*pi;
bubblechart3(cos(t), sin(t), t, 30 + 20 * t, 'b');
``````


#align(center)[#image("bubblechart3_1.svg")]
Create a 3-D bubble chart from a table.

``````matlab
t = table((1:4)', [4; 2; 6; 3], [7; 8; 9; 10], [20; 60; 30; 80], [1; 2; 3; 4], ...
  'VariableNames', {'x', 'y', 'z', 's', 'c'});
h = bubblechart3(t, 'x', 'y', 'z', 's', 'c');
``````


#align(center)[#image("bubblechart3_2.svg")]

== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.bubblechart.properties>)[bubblechart properties];, #nlink(<graphics:1_plots.4_data_distribution_plots.scatter3>)[scatter3];, #nlink(<graphics:1_plots.4_data_distribution_plots.bubblechart>)[bubblechart];.
