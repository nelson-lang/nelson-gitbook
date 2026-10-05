#import "../../nelson_help.typ": *

= line <graphics:1_plots.1_line_plots.line>

Create primitive line.

== Syntax

- #raw("go = line()");
- #raw("po = line(x, y)");
- #raw("go = line(x, y, z)");
- #raw("go = line(ax, x, y, z)");
- #raw("go = line(ax, x, y, z, propertyName, propertyValue)");

== Input argument

/ x, y , z: a scalar graphics object value: parent container, specified as a figure.
/ ax: Target axes: axes object.
/ propertyName: a scalar string or row vector character.
/ propertyValue: a value.

== Output argument

/ go: a graphics object: line type.

== Description

#strong[line(x, y)]; creates a line in the current axes with vectors#strong[x]; and #strong[y];.

 #strong[line(x, y, z)]; creates a line in three-dimensional coordinates.

 See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.line.properties>)[line properties]; for the complete property list.



 #strong[BeingDeleted]; Flag indicating that the object is being deleted.


== Examples

``````matlab
f = figure();
x = linspace(0,10)';
y1 = sin(x);
y2 = cos(x);
line(x, y1, 'Color', [0 1 0])
line(x, y2, 'Color', [1 0 0])

``````


#align(center)[#image("line_xy.svg")]
``````matlab
f = figure();
x = [1 9];
y = [2 12];
line(x,y,'Color','red','LineStyle','--')
``````


#align(center)[#image("line_linestyle.svg")]
``````matlab
f = figure();
t = linspace(0,10*pi,400);
x = sin(t);
y = cos(t);
z = t;
line(x,y,z)
view(3)
``````


#align(center)[#image("line_xyz.svg")]

== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.line.properties>)[line properties];, #nlink(<graphics:1_plots.1_line_plots.plot>)[plot];, #nlink(<graphics:1_plots.1_line_plots.plot3>)[plot3];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.7.0], [CreateFcn, DeleteFcn callback added.],
  [--], [BeingDeleted property added.],
  [--], [Polar line properties added.],
)

// Author: Allan CORNET
