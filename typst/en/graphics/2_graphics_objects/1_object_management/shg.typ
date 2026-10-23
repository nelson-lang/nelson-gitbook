#import "../../nelson_help.typ": *

= shg <graphics:2_graphics_objects.1_object_management.shg>

Show the current graph window.

== Syntax

- #raw("shg");
- #raw("shg()");

== Description

#strong[shg]; brings the current figure forward, creating one if none exists. It is equivalent to #strong[figure(gcf)];.


== Example

``````matlab
f = figure();
plot(1:10);
shg
``````


== See also

#nlink(<graphics:2_graphics_objects.1_object_management.gcf>)[gcf];, #nlink(<graphics:2_graphics_objects.1_object_management.figure>)[figure];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Initial version.],
)

// Author: Allan CORNET
