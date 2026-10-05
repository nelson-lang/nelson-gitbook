#import "../../nelson_help.typ": *

= clf <graphics:2_graphics_objects.1_object_management.clf>

Clear figure.

== Syntax

- #raw("clf");
- #raw("clf(f)");
- #raw("F = clf(...)");

== Input argument

/ f: a scalar graphics object on an existing figure.

== Output argument

/ F: a graphics object: used figure graphics object.

== Description

#strong[clf]; clears the current figure.


== Example

``````matlab
f = figure();
x = linspace(0, 2*pi);
y = sin(3 * x);
plot(x, y)
sleep(5)
clf
``````


== See also

#nlink(<graphics:2_graphics_objects.1_object_management.gcf>)[gcf];, #nlink(<graphics:2_graphics_objects.1_object_management.cla>)[cla];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
