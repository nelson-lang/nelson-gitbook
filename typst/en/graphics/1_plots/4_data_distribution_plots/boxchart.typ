#import "../../nelson_help.typ": *

= boxchart <graphics:1_plots.4_data_distribution_plots.boxchart>

Display box chart for grouped numeric data.

== Syntax

- #raw("boxchart(ydata)");
- #raw("boxchart(xgroupdata, ydata)");
- #raw("boxchart(..., 'GroupByColor', cgroupdata)");
- #raw("boxchart(tbl, yvar)");
- #raw("boxchart(tbl, xvar, yvar)");
- #raw("boxchart(parent, ...)");
- #raw("boxchart(..., propertyName, propertyValue)");
- #raw("h = boxchart(...)");

== Description

#strong[boxchart]; displays box charts for numeric data. The returned value is one or more graphics objects with #strong[Type]; set to #strong[boxchart];.

 The chart computes quartiles, median, whiskers, caps, outliers, and optional notches for each numeric group. NaN values are ignored when statistics are computed.

 See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.boxchart.properties>)[boxchart properties]; for the complete property list.


== Examples

Single box chart.

``````matlab
f = figure();
boxchart([1 2 3 4 12], 'BoxFaceColor', [0.2 0.5 0.8]);

``````


#align(center)[#image("boxchart_1.svg")]
Grouped box chart.

``````matlab
f = figure();
g = categorical({'A', 'A', 'A', 'B', 'B', 'B'});
y = [1 2 8 4 5 15];
boxchart(g, y, 'MarkerStyle', 'x');

``````


#align(center)[#image("boxchart_2.svg")]
Color groups.

``````matlab
f = figure();
x = [1 1 2 2 2 1];
y = [10 20 3 4 100 15];
c = categorical({'red', 'blue', 'red', 'blue', 'red', 'blue'});
boxchart(x, y, 'GroupByColor', c);

``````


#align(center)[#image("boxchart_3.svg")]
Box charts for the columns of a matrix.

``````matlab
f = figure();
Y = magic(10);
boxchart(Y);
xlabel('Column');
ylabel('Value');

``````


#align(center)[#image("boxchart_4.svg")]
Notches and jittered outliers.

``````matlab
f = figure();
x = [ones(1, 8), 2 * ones(1, 8), 3 * ones(1, 8)];
y = [1 2 3 4 5 6 7 30, 4 5 6 7 8 9 10 11, 2 3 4 5 20 21 22 23];
boxchart(x, y, 'Notch', 'on', 'JitterOutliers', 'on');
xlabel('Group');
ylabel('Value');

``````


#align(center)[#image("boxchart_5.svg")]
Outlier marker and box hinges.

``````matlab
f = figure();
boxchart([1 2 3 4 100]);
xlabel('Sample');
ylabel('Value');

``````


#align(center)[#image("boxchart_6.svg")]

== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.boxchart.properties>)[boxchart properties];, #nlink(<graphics:1_plots.4_data_distribution_plots.boxplot>)[boxplot];.
