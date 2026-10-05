#import "../../nelson_help.typ": *

= cla <graphics:2_graphics_objects.1_object_management.cla>

Clear axes.

== Syntax

- #raw("cla");
- #raw("cla(ax)");
- #raw("ca = cla(...)");

== Input argument

/ ax: a scalar graphics object on an existing axes.

== Output argument

/ ca: a graphics object: used axes graphics object.

== Description

#strong[cla]; clears the current axes.


== Example

``````matlab
f = figure();
x = linspace(0, 2*pi);
y = sin(3 * x);
plot(x, y)
sleep(5)
cla
``````


== See also

#nlink(<graphics:2_graphics_objects.1_object_management.gca>)[gca];, #nlink(<graphics:2_graphics_objects.1_object_management.clf>)[clf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
