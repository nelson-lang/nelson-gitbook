#import "../../nelson_help.typ": *

= uicontextmenu <graphics:2_graphics_objects.3_ui_controls.uicontextmenu>

Create a context menu graphics object.

== Syntax

- #raw("cm = uicontextmenu()");
- #raw("cm = uicontextmenu(parent)");
- #raw("cm = uicontextmenu(propertyName, propertyValue, ...)");
- #raw("cm = uicontextmenu(parent, propertyName, propertyValue, ...)");

== Input argument

/ parent: Figure graphics object. When omitted, the current figure is used.
/ propertyName: Property name: a scalar string or row vector character.
/ propertyValue: Property value compatible with the property name.

== Output argument

/ cm: Context menu graphics object.

== Description

#strong[uicontextmenu]; creates a context menu that can be assigned to the #strong[ContextMenu]; property of figures, axes, controls, and other graphics objects.

 Menu items are created with #strong[uimenu]; using the context menu as parent.

 See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.uicontextmenu.properties>)[uicontextmenu properties]; for the complete property list.


== Example

Attach a context menu to axes.

``````matlab

f = figure();
ax = axes('Parent', f);
cm = uicontextmenu(f);
uimenu(cm, 'Text', 'Reset view', 'MenuSelectedFcn', 'disp(''reset'')');
ax.ContextMenu = cm;

``````


== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.uicontextmenu.properties>)[uicontextmenu properties];.
