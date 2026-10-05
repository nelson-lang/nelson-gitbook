#import "../../nelson_help.typ": *

= bar3h <graphics:1_plots.6_discrete_data_plots.bar3h>

Display a 3-D horizontal bar chart.

== Syntax

- #raw("bar3h(Y)");
- #raw("bar3h(Z, Y)");
- #raw("bar3h(..., width)");
- #raw("bar3h(..., 'detached')");
- #raw("bar3h(..., 'grouped')");
- #raw("bar3h(..., 'stacked')");
- #raw("bar3h(..., color)");
- #raw("bar3h(parent, ...)");
- #raw("h = bar3h(...)");

== Input argument

/ Y: Numeric vector or matrix of bar lengths.
/ Z: row positions for the bars.
/ width: Relative bar width. The default value is 0.8.
/ color: color name or short color name for the bar faces.

== Output argument

/ h: surface graphics object or vector of surface graphics objects.

== Description

#strong[bar3h]; displays horizontal 3-D bars extending from x \= 0.

 Use #strong['grouped']; to group matrix columns at each row position and #strong['stacked']; to stack matrix columns at each row position.


== Examples

Detached horizontal 3-D bars from a matrix.

``````matlab
f = figure();
Y = [1 3; 2 4; 5 2];
bar3h(Y);

``````


#align(center)[#image("bar3h_1.svg")]
Horizontal 3-D bars from a vector.

``````matlab
f = figure();
y = [50 40 30 20 10];
bar3h(y);

``````


#align(center)[#image("bar3h_2.svg")]
Horizontal 3-D bars with explicit row positions.

``````matlab
f = figure();
z = [1950 1960 1970 1980 1990];
y = [16 8 4 2 1];
bar3h(z, y);

``````


#align(center)[#image("bar3h_3.svg")]
Horizontal 3-D bars from a matrix.

``````matlab
f = figure();
y = [1 4 7; 2 5 8; 3 6 9; 4 7 10];
bar3h(y);

``````


#align(center)[#image("bar3h_4.svg")]
Horizontal 3-D bars from a matrix with explicit row positions.

``````matlab
f = figure();
z = [1 2 3 4];
y = [1 5 9; 2 6 10; 3 7 11; 4 8 12];
bar3h(z, y);

``````


#align(center)[#image("bar3h_5.svg")]
Horizontal 3-D bars with width and a color.

``````matlab
f = figure();
z = 0:pi/16:pi;
y = [sin(z') / 4, sin(z') / 2, sin(z')];
bar3h(z, y, 1, "r");

``````


#align(center)[#image("bar3h_6.svg")]
Grouped horizontal 3-D bars.

``````matlab
f = figure();
y = [1 2; 3 4; 5 6];
bar3h(y, 'grouped');

``````


#align(center)[#image("bar3h_7.svg")]
Stacked horizontal 3-D bars with positive and negative values.

``````matlab
f = figure();
y = [1 -2; -3 4];
bar3h(y, 'stacked');

``````


#align(center)[#image("bar3h_8.svg")]

== See also

#nlink(<graphics:1_plots.6_discrete_data_plots.barh>)[barh];, #nlink(<graphics:1_plots.6_discrete_data_plots.bar3>)[bar3];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surface>)[surface];.
