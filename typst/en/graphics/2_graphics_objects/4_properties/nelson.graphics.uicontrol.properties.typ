#import "../../nelson_help.typ": *

= uicontrol properties <graphics:2_graphics_objects.4_properties.nelson.graphics.uicontrol.properties>

uicontrol graphics object properties.

== Description

This page documents the visible properties returned by #strong[properties]; for a #strong[uicontrol]; graphics object.

 

#table(
  columns: 3,
  [Property], [Action], [Type and supported values], 
  [#strong[BackgroundColor];], [updates rendered output on the next graphics refresh.], [Type: color value. Supported values: 'red'\/'r', 'green'\/'g', 'blue'\/'b', 'cyan'\/'c', 'magenta'\/'m', 'yellow'\/'y', 'black'\/'k', 'white'\/'w', RGB triplet \[r g b\] with values in \[0,1\], or hexadecimal color '\#RRGGBB'\/'\#RGB'.], 
  [#strong[BeingDeleted];], [Nelson computes this value; graphics operations update it.], [Type: text scalar or character row vector. Supported values: 'off', 'on'.], 
  [#strong[BusyAction];], [controls whether an interrupting callback is queued or canceled.], [Type: text scalar or character row vector. Supported values: 'queue', 'cancel'.], 
  [#strong[ButtonDownFcn];], [runs when the object receives a mouse-button event.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[CData];], [replaces data and recomputes automatic limits that depend on it.], [Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: \[\] or data with dimensions compatible with the rendered object.], 
  [#strong[Callback];], [the graphics event system invokes it for the associated event.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[Children];], [parenting operations update the vector.], [Type: graphics object handle vector. Supported values: empty vector or child handles.], 
  [#strong[ContextMenu];], [attaches the menu used for context-click actions.], [Type: graphics object handle scalar. Supported values: \[\] or a uicontextmenu handle.], 
  [#strong[CreateFcn];], [runs when the object is created.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[DeleteFcn];], [runs when the object is deleted.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[Enable];], [updates rendered output on the next graphics refresh.], [Type: on\/off value. Supported values: 'on', 'off', true, or false.], 
  [#strong[Extent];], [recomputes geometry, limits, or layout.], [Type: finite numeric vector. Supported values: finite vector with the documented size, such as \[left bottom width height\], \[x y z\], \[azimuth elevation\], or \[minor major\].], 
  [#strong[FontAngle];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'normal', 'italic'.], 
  [#strong[FontName];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: a system font name or 'FixedWidth'.], 
  [#strong[FontSize];], [recomputes geometry, limits, or layout.], [Type: finite numeric scalar. Supported values: finite scalar value.], 
  [#strong[FontUnits];], [recomputes geometry, limits, or layout.], [Type: text scalar or character row vector. Supported values: 'pixels', 'normalized', 'inches', 'centimeters', 'points', 'characters', 'data'.], 
  [#strong[FontWeight];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'normal', 'bold'.], 
  [#strong[ForegroundColor];], [updates rendered output on the next graphics refresh.], [Type: color value. Supported values: 'red'\/'r', 'green'\/'g', 'blue'\/'b', 'cyan'\/'c', 'magenta'\/'m', 'yellow'\/'y', 'black'\/'k', 'white'\/'w', RGB triplet \[r g b\] with values in \[0,1\], or hexadecimal color '\#RRGGBB'\/'\#RGB'.], 
  [#strong[HandleVisibility];], [controls whether handle-search functions can find the object.], [Type: text scalar or character row vector. Supported values: 'on', 'off', 'callback'.], 
  [#strong[HorizontalAlignment];], [updates rendered output on the next graphics refresh.], [Type: on\/off value. Supported values: 'on', 'off', true, or false.], 
  [#strong[InnerPosition];], [recomputes geometry, limits, or layout.], [Type: finite numeric vector. Supported values: finite vector with the documented size, such as \[left bottom width height\], \[x y z\], \[azimuth elevation\], or \[minor major\].], 
  [#strong[Interruptible];], [controls whether a running callback can be interrupted.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[KeyPressFcn];], [the graphics event system invokes it for the associated event.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[KeyReleaseFcn];], [the graphics event system invokes it for the associated event.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[ListboxTop];], [updates the stored object state.], [Type: integer scalar or numeric vector. Supported values: finite integer value, finite numeric value, or vector required by the property.], 
  [#strong[Max];], [updates the stored object state.], [Type: integer scalar or numeric vector. Supported values: finite integer value, finite numeric value, or vector required by the property.], 
  [#strong[Min];], [updates the stored object state.], [Type: integer scalar or numeric vector. Supported values: finite integer value, finite numeric value, or vector required by the property.], 
  [#strong[OuterPosition];], [recomputes geometry, limits, or layout.], [Type: finite numeric vector. Supported values: finite vector with the documented size, such as \[left bottom width height\], \[x y z\], \[azimuth elevation\], or \[minor major\].], 
  [#strong[Parent];], [reparents the object and updates Children on the old and new parents.], [Type: graphics object handle scalar. Supported values: a valid parent handle for the object class.], 
  [#strong[Position];], [recomputes geometry, limits, or layout.], [Type: finite numeric vector. Supported values: finite vector with the documented size, such as \[left bottom width height\], \[x y z\], \[azimuth elevation\], or \[minor major\].], 
  [#strong[SliderStep];], [recomputes geometry, limits, or layout.], [Type: finite numeric vector. Supported values: finite vector with the documented size, such as \[left bottom width height\], \[x y z\], \[azimuth elevation\], or \[minor major\].], 
  [#strong[String];], [updates displayed text content.], [Type: text value. Supported values: character row vector, string scalar, string array, or cell array of character row vectors.], 
  [#strong[Style];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: style names defined by this object, such as UI styles, light styles, chart styles, or line styles.], 
  [#strong[Tag];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or an object identifier.], 
  [#strong[Tooltip];], [updates the tooltip text shown by interactive user interface elements.], [Type: text value. Supported values: character row vector, string scalar, string array, cell array of character row vectors, or empty text.], 
  [#strong[Type];], [Nelson computes this value; graphics operations update it.], [Type: text scalar or character row vector. Supported values: read-only object type name, for example 'figure', 'axes', 'line', or 'scatter'.], 
  [#strong[Units];], [recomputes geometry, limits, or layout.], [Type: text scalar or character row vector. Supported values: 'pixels', 'normalized', 'inches', 'centimeters', 'points', 'characters', 'data'.], 
  [#strong[UserData];], [updates the stored object state.], [Type: Nelson array. Supported values: any Nelson value, including \[\], numeric arrays, text, cells, structures, or handles.], 
  [#strong[Value];], [updates the stored object state.], [Type: integer scalar or numeric vector. Supported values: finite integer value, finite numeric value, or vector required by the property.], 
  [#strong[Visible];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
)

== Example

Create the graphics object and list its properties.

``````matlab
f = figure('Visible', 'off');
h = uicontrol('Parent', f, 'Style', 'pushbutton', 'String', 'OK');
names = properties(h);
close(f)
``````


== See also

#nlink(<graphics:2_graphics_objects.3_ui_controls.uicontrol>)[uicontrol];, #nlink(<handle:properties>)[properties];, #nlink(<handle:get>)[get];, #nlink(<handle:set>)[set];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [--], [Property page added.],
)

// Author: Allan CORNET
