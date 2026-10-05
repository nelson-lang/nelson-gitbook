#import "../../nelson_help.typ": *

= findall <graphics:2_graphics_objects.1_object_management.findall>

Find graphics objects, including hidden handles.

== Syntax

- #raw("h = findall()");
- #raw("h = findall(prop, value)");
- #raw("h = findall(objhandles, prop, value)");
- #raw("h = findall(objhandles, 'flat', ...)");
- #raw("h = findall(objhandles, '-depth', d, ...)");

== Input argument

/ objhandles: graphics object or array of graphics objects to search from.
/ prop: property name as a character vector or scalar string.
/ value: property value to match.
/ d: nonnegative integer search depth, or Inf.

== Output argument

/ h: column array of matching graphics objects.

== Description

#strong[findall]; searches the graphics object hierarchy like #strong[findobj];, but includes objects whose #strong[HandleVisibility]; is #strong['off']; or #strong['callback'];.

 When the search starts from #strong[groot];, hidden figures are traversed even when #strong[ShowHiddenHandles]; is #strong['off'];.


== Example

``````matlab
close all
f = figure('Visible', 'off', 'HandleVisibility', 'off', 'Tag', 'hiddenFigure');
h = findall(groot(), 'Tag', 'hiddenFigure')
``````


== See also

#nlink(<graphics:2_graphics_objects.1_object_management.findobj>)[findobj];, #nlink(<graphics:2_graphics_objects.1_object_management.allchild>)[allchild];, #nlink(<graphics:2_graphics_objects.1_object_management.groot>)[groot];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [initial version],
)

// Author: Allan CORNET
