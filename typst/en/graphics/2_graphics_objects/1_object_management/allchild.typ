#import "../../nelson_help.typ": *

= allchild <graphics:2_graphics_objects.1_object_management.allchild>

Return all direct children of graphics objects.

== Syntax

- #raw("h = allchild(objhandles)");

== Input argument

/ objhandles: graphics object or array of graphics objects.

== Output argument

/ h: column array containing all direct child graphics objects.

== Description

#strong[allchild]; returns direct children regardless of their #strong[HandleVisibility]; value.

 For #strong[groot];, it returns all figures in root child order, including figures hidden from the #strong[Children]; property while #strong[ShowHiddenHandles]; is #strong['off'];.


== Example

``````matlab
close all
f = figure('Visible', 'off');
ax = axes('Parent', f, 'HandleVisibility', 'off');
h = allchild(f)
``````


== See also

#nlink(<graphics:2_graphics_objects.1_object_management.findall>)[findall];, #nlink(<graphics:2_graphics_objects.1_object_management.findobj>)[findobj];, #nlink(<graphics:2_graphics_objects.1_object_management.groot>)[groot];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [initial version],
)

// Author: Allan CORNET
