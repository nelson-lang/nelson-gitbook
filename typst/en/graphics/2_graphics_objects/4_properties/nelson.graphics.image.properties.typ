#import "../../nelson_help.typ": *

= image properties <graphics:2_graphics_objects.4_properties.nelson.graphics.image.properties>

image graphics object properties.

== Description

This page documents the visible properties returned by #strong[properties]; for a #strong[image]; graphics object.

 

#table(
  columns: 3,
  [Property], [Action], [Type and supported values], 
  [#strong[AlphaData];], [replaces data and recomputes automatic limits that depend on it.], [Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: \[\] or data with dimensions compatible with the rendered object.], 
  [#strong[AlphaDataMapping];], [replaces data and recomputes automatic limits that depend on it.], [Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: \[\] or data with dimensions compatible with the rendered object.], 
  [#strong[Annotation];], [updates the annotation metadata used by interactive tools and object inspection.], [Type: graphics annotation object or empty handle value. Supported values: an annotation object associated with the graphics item, or an empty graphics handle when no annotation is attached.], 
  [#strong[BeingDeleted];], [Nelson computes this value; graphics operations update it.], [Type: text scalar or character row vector. Supported values: 'off', 'on'.], 
  [#strong[BusyAction];], [controls whether an interrupting callback is queued or canceled.], [Type: text scalar or character row vector. Supported values: 'queue', 'cancel'.], 
  [#strong[ButtonDownFcn];], [runs when the object receives a mouse-button event.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[CData];], [replaces data and recomputes automatic limits that depend on it.], [Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: \[\] or data with dimensions compatible with the rendered object.], 
  [#strong[CDataMapping];], [replaces data and recomputes automatic limits that depend on it.], [Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: \[\] or data with dimensions compatible with the rendered object.], 
  [#strong[Children];], [parenting operations update the vector.], [Type: graphics object handle vector. Supported values: empty vector or child handles.], 
  [#strong[Clipping];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[ContextMenu];], [attaches the menu used for context-click actions.], [Type: graphics object handle scalar. Supported values: \[\] or a uicontextmenu handle.], 
  [#strong[CreateFcn];], [runs when the object is created.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[DeleteFcn];], [runs when the object is deleted.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[HandleVisibility];], [controls whether handle-search functions can find the object.], [Type: text scalar or character row vector. Supported values: 'on', 'off', 'callback'.], 
  [#strong[HitTest];], [includes or excludes the object from mouse hit testing.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[Interpolation];], [changes how colors or samples are interpolated between stored data values.], [Type: text keyword. Supported values: 'nearest', 'linear', or 'none'.], 
  [#strong[Interruptible];], [controls whether a running callback can be interrupted.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[MaxRenderedResolution];], [updates the stored object state.], [Type: integer scalar or numeric vector. Supported values: finite integer value, finite numeric value, or vector required by the property.], 
  [#strong[Parent];], [reparents the object and updates Children on the old and new parents.], [Type: graphics object handle scalar. Supported values: a valid parent handle for the object class.], 
  [#strong[PickableParts];], [selects which visible or invisible parts can receive mouse hits.], [Type: text scalar or character row vector. Supported values: 'visible', 'all', 'none'.], 
  [#strong[Selected];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[SelectionHighlight];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[Tag];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or an object identifier.], 
  [#strong[Type];], [Nelson computes this value; graphics operations update it.], [Type: text scalar or character row vector. Supported values: read-only object type name, for example 'figure', 'axes', 'line', or 'scatter'.], 
  [#strong[UserData];], [updates the stored object state.], [Type: Nelson array. Supported values: any Nelson value, including \[\], numeric arrays, text, cells, structures, or handles.], 
  [#strong[Visible];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[XData];], [replaces data and recomputes automatic limits that depend on it.], [Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: \[\] or data with dimensions compatible with the rendered object.], 
  [#strong[YData];], [replaces data and recomputes automatic limits that depend on it.], [Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: \[\] or data with dimensions compatible with the rendered object.], 
)

== Example

Create the graphics object and list its properties.

``````matlab
f = figure('Visible', 'off');
ax = axes('Parent', f);
h = image('Parent', ax, 'CData', magic(3));
names = properties(h);
close(f)
``````


== See also

#nlink(<graphics:4_images.image>)[image];, #nlink(<graphics:4_images.imagesc>)[imagesc];, #nlink(<graphics:4_images.imshow>)[imshow];, #nlink(<handle:properties>)[properties];, #nlink(<handle:get>)[get];, #nlink(<handle:set>)[set];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [--], [Property page added.],
)

// Author: Allan CORNET
