#import "../../nelson_help.typ": *

= findobj <graphics:2_graphics_objects.1_object_management.findobj>

Find graphics objects with specific properties.

== Syntax

- #raw("h = findobj()");
- #raw("h = findobj(prop, value)");
- #raw("h = findobj(objhandles, prop, value)");
- #raw("h = findobj(objhandles, 'flat', ...)");
- #raw("h = findobj(objhandles, '-depth', d, ...)");
- #raw("h = findobj(..., '-property', prop)");
- #raw("h = findobj(..., '-regexp', prop, expr)");

== Input argument

/ objhandles: graphics object or array of graphics objects to search from.
/ prop: property name as a character vector or scalar string.
/ value: property value to match.
/ d: nonnegative integer search depth, or Inf.
/ expr: regular expression used to match a character property value.

== Output argument

/ h: column array of matching graphics objects.

== Description

#strong[findobj]; searches the graphics object hierarchy from the root object or from the supplied graphics objects. Objects whose #strong[HandleVisibility]; property is #strong['off'];, and their descendants, are not returned.

 Property predicates can be combined with #strong['-and'];, #strong['-or'];, #strong['-xor'];, and #strong['-not'];. Use cell arrays to group expressions.


== Examples

``````matlab
close all
plot(rand(5))
h = findobj('Type', 'line')
``````

``````matlab
close all
plot(1:10, 'Tag', 'linear')
h = findobj('-regexp', 'Tag', 'lin')
``````

``````matlab
close all
plot(1:10, 'Tag', 'linear')
hold on
plot((1:10).^2, 'Tag', 'quadratic')
h = findobj('Type', 'line', '-and', '-not', {'Tag', 'linear'})
``````


== See also

#nlink(<graphics:2_graphics_objects.1_object_management.groot>)[groot];, #nlink(<graphics:2_graphics_objects.1_object_management.gcf>)[gcf];, #nlink(<graphics:2_graphics_objects.1_object_management.gca>)[gca];, #nlink(<graphics:2_graphics_objects.1_object_management.isgraphics>)[isgraphics];, #nlink(<handle:get>)[get];, #nlink(<handle:set>)[set];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [initial version],
)

// Author: Allan CORNET
