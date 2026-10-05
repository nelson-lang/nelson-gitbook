#import "../../nelson_help.typ": *

= figure properties <graphics:2_graphics_objects.4_properties.nelson.graphics.figure.properties>

figure graphics object properties.

== Description

This page documents the visible properties returned by #strong[properties]; for a #strong[figure]; graphics object.

 

#table(
  columns: 3,
  [Property], [Action], [Type and supported values], 
  [#strong[Alphamap];], [updates rendered output on the next graphics refresh.], [Type: finite numeric vector. Supported values: numeric alpha values in \[0,1\].], 
  [#strong[AutoResizeChildren];], [updates rendered output on the next graphics refresh.], [Type: on\/off value. Supported values: 'on', 'off', true, or false.], 
  [#strong[BeingDeleted];], [Nelson computes this value; graphics operations update it.], [Type: text scalar or character row vector. Supported values: 'off', 'on'.], 
  [#strong[BusyAction];], [controls whether an interrupting callback is queued or canceled.], [Type: text scalar or character row vector. Supported values: 'queue', 'cancel'.], 
  [#strong[ButtonDownFcn];], [runs when the object receives a mouse-button event.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[Children];], [parenting operations update the vector.], [Type: graphics object handle vector. Supported values: empty vector or child handles.], 
  [#strong[Clipping];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[CloseRequestFcn];], [the graphics event system invokes it for the associated event.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[Color];], [background color of the figure. Default: light gray \[0.94 0.94 0.94\] (light theme). Exports (saveas) use a white background instead while InvertHardcopy is 'on'.], [Type: color value. Supported values: 'red'\/'r', 'green'\/'g', 'blue'\/'b', 'cyan'\/'c', 'magenta'\/'m', 'yellow'\/'y', 'black'\/'k', 'white'\/'w', RGB triplet \[r g b\] with values in \[0,1\], or hexadecimal color '\#RRGGBB'\/'\#RGB'.], 
  [#strong[Colormap];], [updates rendered output on the next graphics refresh.], [Type: finite numeric matrix. Supported values: m-by-3 RGB matrix with values in \[0,1\].], 
  [#strong[ContextMenu];], [attaches the menu used for context-click actions.], [Type: graphics object handle scalar. Supported values: \[\] or a uicontextmenu handle.], 
  [#strong[CreateFcn];], [runs when the object is created.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[CurrentAxes];], [changes the figure target used by plotting commands that operate on the current axes.], [Type: axes graphics handle. Supported values: an axes or polar axes child of the figure, or an empty graphics handle.], 
  [#strong[CurrentCharacter];], [reports keyboard input state for the current figure.], [Type: single-character text value. Supported values: character row vector or string scalar containing the most recent character, or empty text.], 
  [#strong[CurrentObject];], [reports the object currently targeted by figure interaction.], [Type: graphics handle. Supported values: child object handle under the pointer or current interaction target, or empty graphics handle.], 
  [#strong[CurrentPoint];], [position of the last mouse press or release in the figure, and of the pointer motion while WindowButtonMotionFcn is set. Updated before WindowButtonDownFcn, WindowButtonMotionFcn, WindowButtonUpFcn and ButtonDownFcn run.], [Type: two-element vector \[x y\]. Supported values: coordinates in the figure Units from the bottom-left corner of the drawing area (pixels by default, logical pixels on scaled displays).], 
  [#strong[DeleteFcn];], [runs when the object is deleted.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[DevicePixelRatio];], [recomputes geometry, limits, or layout.], [Type: finite numeric scalar. Supported values: finite scalar value.], 
  [#strong[DockControls];], [updates rendered output on the next graphics refresh.], [Type: on\/off value. Supported values: 'on', 'off', true, or false.], 
  [#strong[DrawLater];], [updates rendered output on the next graphics refresh.], [Type: on\/off value. Supported values: 'on', 'off', true, or false.], 
  [#strong[FileName];], [stores the file path associated with a persisted or loaded figure.], [Type: text value. Supported values: character row vector, string scalar, or empty text.], 
  [#strong[GraphicsSmoothing];], [updates rendered output on the next graphics refresh.], [Type: on\/off value. Supported values: 'on', 'off', true, or false.], 
  [#strong[HandleVisibility];], [controls whether handle-search functions can find the object.], [Type: text scalar or character row vector. Supported values: 'on', 'off', 'callback'.], 
  [#strong[Icon];], [updates rendered output on the next graphics refresh.], [Type: text scalar, image array, or empty array. Supported values: \[\] , image path, or image data.], 
  [#strong[InnerPosition];], [recomputes geometry, limits, or layout.], [Type: finite numeric vector. Supported values: finite vector with the documented size, such as \[left bottom width height\], \[x y z\], \[azimuth elevation\], or \[minor major\].], 
  [#strong[IntegerHandle];], [updates the stored object state.], [Type: integer scalar or numeric vector. Supported values: finite integer value, finite numeric value, or vector required by the property.], 
  [#strong[Interruptible];], [controls whether a running callback can be interrupted.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[InvertHardcopy];], ['on' (default): saveas exports the figure with a white background whatever its Color. 'off': the export keeps the on-screen figure Color.], [Type: on\/off value. Supported values: 'on', 'off', true, or false.], 
  [#strong[KeyPressFcn];], [the graphics event system invokes it for the associated event.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[KeyReleaseFcn];], [the graphics event system invokes it for the associated event.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[MenuBar];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'none', 'figure', 'auto'.], 
  [#strong[Name];], [updates the object name displayed by windows, managers, or object inspection.], [Type: text value. Supported values: character row vector, string scalar, or empty text.], 
  [#strong[NextPlot];], [selects how the next plotting command reuses or resets existing children.], [Type: text scalar or character row vector. Supported values: 'add', 'replace', 'replacechildren', 'replaceall', 'new'.], 
  [#strong[Number];], [updates the stored object state.], [Type: integer scalar or numeric vector. Supported values: finite integer value, finite numeric value, or vector required by the property.], 
  [#strong[NumberTitle];], [updates rendered output on the next graphics refresh.], [Type: on\/off value. Supported values: 'on', 'off', true, or false.], 
  [#strong[OuterPosition];], [recomputes geometry, limits, or layout.], [Type: finite numeric vector. Supported values: finite vector with the documented size, such as \[left bottom width height\], \[x y z\], \[azimuth elevation\], or \[minor major\].], 
  [#strong[PaperOrientation];], [recomputes geometry, limits, or layout.], [Type: text scalar or character row vector. Supported values: 'vertical', 'horizontal'.], 
  [#strong[PaperPosition];], [recomputes geometry, limits, or layout.], [Type: finite numeric vector. Supported values: finite vector with the documented size, such as \[left bottom width height\], \[x y z\], \[azimuth elevation\], or \[minor major\].], 
  [#strong[PaperPositionMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[PaperSize];], [recomputes geometry, limits, or layout.], [Type: finite numeric vector. Supported values: finite vector with the documented size, such as \[left bottom width height\], \[x y z\], \[azimuth elevation\], or \[minor major\].], 
  [#strong[PaperType];], [recomputes geometry, limits, or layout.], [Type: text scalar or character row vector. Supported values: 'usletter', 'a4', 'a3', 'a5', 'b4', 'b5', 'tabloid', or 'legal'.], 
  [#strong[PaperUnits];], [recomputes geometry, limits, or layout.], [Type: text scalar or character row vector. Supported values: 'pixels', 'normalized', 'inches', 'centimeters', 'points', 'characters', 'data'.], 
  [#strong[Parent];], [reparents the object and updates Children on the old and new parents.], [Type: graphics object handle scalar. Supported values: a valid parent handle for the object class.], 
  [#strong[Pointer];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'arrow', 'crosshair', 'ibeam', 'watch', 'topl', 'topr', 'botl', 'botr', 'circle', 'cross', 'fleur', 'left', 'right', 'top', 'bottom', 'custom'.], 
  [#strong[PointerShapeCData];], [replaces data and recomputes automatic limits that depend on it.], [Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: \[\] or data with dimensions compatible with the rendered object.], 
  [#strong[PointerShapeHotSpot];], [recomputes geometry, limits, or layout.], [Type: finite numeric vector. Supported values: finite vector with the documented size, such as \[left bottom width height\], \[x y z\], \[azimuth elevation\], or \[minor major\].], 
  [#strong[Position];], [recomputes geometry, limits, or layout.], [Type: finite numeric vector. Supported values: finite vector with the documented size, such as \[left bottom width height\], \[x y z\], \[azimuth elevation\], or \[minor major\].], 
  [#strong[Renderer];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'opengl', 'painters'.], 
  [#strong[RendererMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[Resize];], [updates rendered output on the next graphics refresh.], [Type: on\/off value. Supported values: 'on', 'off', true, or false.], 
  [#strong[Scrollable];], [updates rendered output on the next graphics refresh.], [Type: on\/off value. Supported values: 'on', 'off', true, or false.], 
  [#strong[SelectionType];], [Nelson computes this value; graphics operations update it.], [Type: text scalar or character row vector. Supported values: 'normal', 'extend', 'alt', 'open'.], 
  [#strong[SizeChangedFcn];], [the graphics event system invokes it for the associated event.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[Tag];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or an object identifier.], 
  [#strong[Theme];], [returns the active graphics theme object; assigning 'light' or 'dark' updates rendered output on the next graphics refresh.], [Type: graphics theme object for reads, text scalar or character row vector for writes. Supported assigned values: 'light', 'dark'.], 
  [#strong[ThemeChangedFcn];], [the graphics event system invokes it for the associated event.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[ThemeMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[ToolBar];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'none', 'figure', 'auto'.], 
  [#strong[Type];], [Nelson computes this value; graphics operations update it.], [Type: text scalar or character row vector. Supported values: read-only object type name, for example 'figure', 'axes', 'line', or 'scatter'.], 
  [#strong[Units];], [recomputes geometry, limits, or layout.], [Type: text scalar or character row vector. Supported values: 'pixels', 'normalized', 'inches', 'centimeters', 'points', 'characters', 'data'.], 
  [#strong[UserData];], [updates the stored object state.], [Type: Nelson array. Supported values: any Nelson value, including \[\], numeric arrays, text, cells, structures, or handles.], 
  [#strong[Visible];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[WindowButtonDownFcn];], [the graphics event system invokes it for the associated event.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[WindowButtonMotionFcn];], [the graphics event system invokes it for the associated event.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[WindowButtonUpFcn];], [the graphics event system invokes it for the associated event.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[WindowKeyPressFcn];], [the graphics event system invokes it for the associated event.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[WindowKeyReleaseFcn];], [the graphics event system invokes it for the associated event.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[WindowScrollWheelFcn];], [the graphics event system invokes it for the associated event.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[WindowState];], [recomputes geometry, limits, or layout.], [Type: text scalar or character row vector. Supported values: 'normal', 'minimized', 'maximized', 'fullscreen'.], 
  [#strong[WindowStyle];], ['docked' hosts the figure inside the Nelson desktop (GUI mode); 'alwaysontop' keeps the window above the other windows; 'normal' makes it a regular separate window again.], [Type: text scalar or character row vector. Supported values: 'normal', 'modal', 'docked', 'alwaysontop'.], 
)

== Example

Create the graphics object and list its properties.

``````matlab
h = figure('Visible', 'off');
names = properties(h);
close(h)
``````


== See also

#nlink(<graphics:2_graphics_objects.1_object_management.figure>)[figure];, #nlink(<handle:properties>)[properties];, #nlink(<handle:get>)[get];, #nlink(<handle:set>)[set];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Property page added.],
)

// Author: Allan CORNET
