#import "../../nelson_help.typ": *

= bar3 <graphics:1_plots.6_discrete_data_plots.bar3>

Display a 3-D vertical bar chart.

== Syntax

- #raw("bar3(Y)");
- #raw("bar3(Z, Y)");
- #raw("bar3(..., width)");
- #raw("bar3(..., 'detached')");
- #raw("bar3(..., 'grouped')");
- #raw("bar3(..., 'stacked')");
- #raw("bar3(..., color)");
- #raw("bar3(parent, ...)");
- #raw("h = bar3(...)");

== Input argument

/ Y: Numeric vector or matrix of bar heights.
/ Z: row positions for the bars.
/ width: Relative bar width. The default value is 0.8.
/ color: color name or short color name for the bar faces.

== Output argument

/ h: surface graphics object or vector of surface graphics objects.

== Description

#strong[bar3]; displays columns as 3-D cuboids. Matrix columns are shown along the x direction and matrix rows along the y direction.

 Use #strong['grouped']; to group matrix columns at each row position and #strong['stacked']; to stack matrix columns at each row position.


== Examples

Detached 3-D bars from a matrix.

``````matlab
f = figure();
Y = [1 2 3; 4 5 6];
bar3(Y);

``````


#align(center)[#image("bar3_1.svg")]
3-D bars from a vector.

``````matlab
f = figure();
z = [50 40 30 20 10];
bar3(z);

``````


#align(center)[#image("bar3_2.svg")]
3-D bars with explicit row positions.

``````matlab
f = figure();
z = [1950 1960 1970 1980 1990];
y = [16 8 4 2 1];
bar3(z, y);

``````


#align(center)[#image("bar3_3.svg")]
Grouped 3-D bars.

``````matlab
f = figure();
y = [1 2; 3 4; 5 6];
bar3(y, 'grouped');

``````


#align(center)[#image("bar3_4.svg")]
Stacked 3-D bars with positive and negative values.

``````matlab
f = figure();
y = [1 -2; -3 4];
bar3(y, 'stacked');

``````


#align(center)[#image("bar3_5.svg")]
Set color and transparency.

``````matlab
f = figure();
h = bar3(peaks(5), 0.6);
set(h, 'FaceColor', [0.2 0.5 0.8], 'FaceAlpha', 0.8);

``````


#align(center)[#image("bar3_6.svg")]

== See also

#nlink(<graphics:1_plots.6_discrete_data_plots.bar>)[bar];, #nlink(<graphics:1_plots.6_discrete_data_plots.bar3h>)[bar3h];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surface>)[surface];.
