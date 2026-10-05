#import "../../nelson_help.typ": *

= uimenu properties <graphics:2_graphics_objects.4_properties.nelson.graphics.uimenu.properties>

uimenu graphics object properties.

== Description

This page documents the visible properties returned by #strong[properties]; for a #strong[uimenu]; graphics object.

 

#table(
  columns: 3,
  [Property], [Action], [Type and supported values], 
  [#strong[Accelerator];], [changes the keyboard accelerator associated with a menu item.], [Type: single-character text value. Supported values: character row vector or string scalar containing one accelerator key, or empty text.], 
  [#strong[BeingDeleted];], [Nelson computes this value; graphics operations update it.], [Type: text scalar or character row vector. Supported values: 'off', 'on'.], 
  [#strong[BusyAction];], [controls whether an interrupting callback is queued or canceled.], [Type: text scalar or character row vector. Supported values: 'queue', 'cancel'.], 
  [#strong[ButtonDownFcn];], [runs when the object receives a mouse-button event.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[Checked];], [updates rendered output on the next graphics refresh.], [Type: on\/off value. Supported values: 'on', 'off', true, or false.], 
  [#strong[Children];], [parenting operations update the vector.], [Type: graphics object handle vector. Supported values: empty vector or child handles.], 
  [#strong[Clipping];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[ContextMenu];], [attaches the menu used for context-click actions.], [Type: graphics object handle scalar. Supported values: \[\] or a uicontextmenu handle.], 
  [#strong[CreateFcn];], [runs when the object is created.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[DeleteFcn];], [runs when the object is deleted.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[Enable];], [updates rendered output on the next graphics refresh.], [Type: on\/off value. Supported values: 'on', 'off', true, or false.], 
  [#strong[ForegroundColor];], [updates rendered output on the next graphics refresh.], [Type: color value. Supported values: 'red'\/'r', 'green'\/'g', 'blue'\/'b', 'cyan'\/'c', 'magenta'\/'m', 'yellow'\/'y', 'black'\/'k', 'white'\/'w', RGB triplet \[r g b\] with values in \[0,1\], or hexadecimal color '\#RRGGBB'\/'\#RGB'.], 
  [#strong[HandleVisibility];], [controls whether handle-search functions can find the object.], [Type: text scalar or character row vector. Supported values: 'on', 'off', 'callback'.], 
  [#strong[Interruptible];], [controls whether a running callback can be interrupted.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[MenuSelectedFcn];], [the graphics event system invokes it for the associated event.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[Parent];], [reparents the object and updates Children on the old and new parents.], [Type: graphics object handle scalar. Supported values: a valid parent handle for the object class.], 
  [#strong[Position];], [recomputes geometry, limits, or layout.], [Type: finite numeric vector. Supported values: finite vector with the documented size, such as \[left bottom width height\], \[x y z\], \[azimuth elevation\], or \[minor major\].], 
  [#strong[Separator];], [updates rendered output on the next graphics refresh.], [Type: on\/off value. Supported values: 'on', 'off', true, or false.], 
  [#strong[Tag];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or an object identifier.], 
  [#strong[Text];], [updates text displayed by the graphics object.], [Type: text value. Supported values: character row vector, string scalar, string array, cell array of character row vectors, or empty text.], 
  [#strong[Tooltip];], [updates the tooltip text shown by interactive user interface elements.], [Type: text value. Supported values: character row vector, string scalar, string array, cell array of character row vectors, or empty text.], 
  [#strong[Type];], [Nelson computes this value; graphics operations update it.], [Type: text scalar or character row vector. Supported values: read-only object type name, for example 'figure', 'axes', 'line', or 'scatter'.], 
  [#strong[UserData];], [updates the stored object state.], [Type: Nelson array. Supported values: any Nelson value, including \[\], numeric arrays, text, cells, structures, or handles.], 
  [#strong[Visible];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
)

== Example

Create the graphics object and list its properties.

``````matlab
f = figure('Visible', 'off');
h = uimenu(f, 'Text', 'File');
names = properties(h);
close(f)
``````


== See also

#nlink(<graphics:2_graphics_objects.3_ui_controls.uimenu>)[uimenu];, #nlink(<handle:properties>)[properties];, #nlink(<handle:get>)[get];, #nlink(<handle:set>)[set];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [--], [Property page added.],
)

// Author: Allan CORNET
