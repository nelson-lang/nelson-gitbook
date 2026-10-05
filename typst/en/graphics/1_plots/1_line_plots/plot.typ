#import "../../nelson_help.typ": *

= plot <graphics:1_plots.1_line_plots.plot>

Linear 2-D plot.

== Syntax

- #raw("plot(Y)");
- #raw("plot(X1, Y1, ...)");
- #raw("plot(X1, Y1, LineSpec, ...)");
- #raw("plot(..., propertyName, propertyValue, ...)");
- #raw("plot(ax, ...)");
- #raw("go = plot(...)");

== Input argument

/ X1: x-coordinates: vector or matrix.
/ Y1: y-coordinates: vector or matrix.
/ LineSpec: Line style, marker, and\/or color: character vector or scalar string.
/ ax: a scalar graphics object value: parent container, specified as a axes.
/ propertyName: a scalar string or row vector character. See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.line.properties>)[line properties]; for the property list.
/ propertyValue: a value.

== Output argument

/ go: a graphics object: line type.

== Description

#strong[plot(Y)]; plots the columns of #strong[Y]; versus their index.

 #strong[plot(X, Y)]; plots line defined by #strong[X]; versus#strong[Y]; pair.

 #strong[go \= plot(...)]; returns a column vector of line graphics objects.

 

 #strong[LineSpec]; is a string used to change the characteristics of the line and is composed of three optional parts in any order:

 

 The SymbolSpec specifies the symbol to be drawn at each data point:

 

#table(
  columns: 2,
  [Symbol], [Description], 
  [#strong['o'];], [Circle symbol], 
  [#strong['x'];], [Times symbol], 
  [#strong['+'];], [Plus symbol], 
  [#strong['\*'];], [Asterisk symbol], 
  [#strong['.'];], [Dot symbol], 
  [#strong['s'];], [Square symbol], 
  [#strong['d'];], [Diamond symbol], 
  [#strong['v'];], [Downward-pointing triangle symbol], 
  [#strong['^'];], [Upward-pointing triangle symbol], 
  [#strong[' \> '];], [Left-pointing triangle symbol], 
  [#strong[' \< '];], [Right-pointing triangle symbol], 
)
 

 The LineStyleSpec specifies the line style to use for each data series:

 

#table(
  columns: 2,
  [Style], [Description], 
  [#strong['-'];], [Solid line style], 
  [#strong['--'];], [Dashed line style], 
  [#strong['-.'];], [Dot-Dash-Dot-Dash line style], 
  [#strong[':'];], [Dotted line style], 
)
 

 The ColorSpec specifies the line color to use for each data series:

 

#table(
  columns: 2,
  [Color], [Description], 
  [#strong['k'];], [Color Black], 
  [#strong['y'];], [Color Yellow], 
  [#strong['m'];], [Color Magenta], 
  [#strong['c'];], [Color Cyan], 
  [#strong['r'];], [Color Red], 
  [#strong['b'];], [Color Blue], 
  [#strong['g'];], [Color Green], 
)
 

 see #strong[line]; for more information about properties


== Examples

Default abscissae using indices:

``````matlab
f = figure()
plot(sin(0:0.1:2*pi))
``````


#align(center)[#image("plot_y.svg")]
Using explicit abscissae:

``````matlab
f = figure()
x = [0:0.1:2*pi]';
plot(x, sin(x))
``````


#align(center)[#image("plot_xy.svg")]
Multiple curves with shared abscissae:

``````matlab
f = figure()
x = [0:0.1:2*pi]';
plot(x, [cos(x), cos(2*x), cos(3*x)])
``````


#align(center)[#image("plot_multiple.svg")]
Color and Size of Markers:

``````matlab
f = figure();
x = -pi:pi/10:pi;
y = tan(sin(x)) - sin(tan(x));
plot(x ,y, '--rs', LineWidth=2, MarkerEdgeColor='k', MarkerFaceColor='g', MarkerSize=11)
``````


#align(center)[#image("plot_markers.svg")]
Adding Title and Axis Labels:

``````matlab
f = figure();
x = linspace(0, 10, 150);
y = sin(5*x);
plot(x,y,'Color',[0,0.7,0.9])
title('2-D Line Plot')
xlabel('x')
ylabel('sin(5x)')
``````


#align(center)[#image("plot_title.svg")]

== See also

#nlink(<graphics:1_plots.1_line_plots.line>)[line];, #nlink(<graphics:1_plots.1_line_plots.plot3>)[plot3];, #nlink(<interpreter:name_value_syntax>)[name\=value syntax];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
