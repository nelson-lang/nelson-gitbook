#import "../../nelson_help.typ": *

= axtoolbar <graphics:3_labels_styling.3_interactions_camera_lighting.axtoolbar>

Get or configure the axes toolbar.

== Syntax

- #raw("tb = axtoolbar()");
- #raw("tb = axtoolbar(buttons)");
- #raw("tb = axtoolbar(ax)");
- #raw("tb = axtoolbar(ax, buttons)");
- #raw("tb = axtoolbar(..., name, value, ...)");
- #raw("[tb, btns] = axtoolbar(...)");

== Input argument

/ ax: a scalar graphics object value: an axes. Default: current axes.
/ buttons: a character vector, a string array or a cell array of character vectors: 'default', 'export', 'brush', 'datacursor', 'rotate', 'pan', 'zoom', 'restoreview', 'zoomin' or 'zoomout'. The names are validated only: the figure toolbar of Nelson is shared by all axes.
/ name, value: properties of the axes toolbar, for example 'Visible', 'Tag', 'UserData'.

== Output argument

/ tb: a scalar graphics object value: the axes toolbar.
/ btns: an empty graphics object array: Nelson has no per-axes buttons.

== Description

#strong[axtoolbar]; returns the #strong[Toolbar]; object of an axes and applies the given properties to it.

 Use #strong[axtoolbar('Visible', 'off')]; to hide the toolbar of the current axes.

 When the #strong[Toolbar]; property of the target was set to empty, call #strong[reset]; on the target to restore it before #strong[axtoolbar];.


== Example

``````matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
tb = axtoolbar('Visible', 'off')
``````


== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.axes.properties>)[axes properties];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
