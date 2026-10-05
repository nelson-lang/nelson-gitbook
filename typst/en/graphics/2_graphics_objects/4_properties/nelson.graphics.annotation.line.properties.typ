#import "../../nelson_help.typ": *

= line annotation properties <graphics:2_graphics_objects.4_properties.nelson.graphics.annotation.line.properties>

line annotation graphics object properties.

== Description

This page documents the visible properties returned by #strong[properties]; for a #strong[line]; annotation.

 

#table(
  columns: 3,
  [Property], [Action], [Type and supported values], 
  [#strong[BeingDeleted];], [Nelson computes this value; graphics operations update it.], [Type: text scalar or character row vector. Supported values: 'off', 'on'.], 
  [#strong[BusyAction];], [controls whether an interrupting callback is queued or canceled.], [Type: text scalar or character row vector. Supported values: 'queue', 'cancel'.], 
  [#strong[ButtonDownFcn];], [runs when you click the object.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[Children];], [parenting operations update the vector.], [Type: graphics object handle vector. Supported values: empty vector or child handles.], 
  [#strong[Color];], [updates rendered output on the next graphics refresh.], [Type: color value. Supported values: 'red'\/'r', 'green'\/'g', 'blue'\/'b', 'cyan'\/'c', 'magenta'\/'m', 'yellow'\/'y', 'black'\/'k', 'white'\/'w', RGB triplet \[r g b\] with values in \[0,1\], or hexadecimal color '\#RRGGBB'\/'\#RGB'.], 
  [#strong[ContextMenu];], [assigns the context menu displayed on right-click.], [Type: graphics object handle scalar. Supported values: empty handle or a context menu object handle.], 
  [#strong[CreateFcn];], [runs when the object is created.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[DeleteFcn];], [runs when the object is deleted.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[HandleVisibility];], [controls whether the object handle is listed by handle searches.], [Type: text scalar or character row vector. Supported values: 'on', 'callback', 'off'.], 
  [#strong[HitTest];], [controls whether the object can capture mouse clicks.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[Interruptible];], [controls whether a running callback can be interrupted.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[LineStyle];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: '-', '--', ':', '-.', 'none'.], 
  [#strong[LineWidth];], [updates rendered output on the next graphics refresh.], [Type: finite numeric scalar. Supported values: value greater than or equal to 0.], 
  [#strong[Parent];], [reparents the object and updates Children on the old and new parents.], [Type: graphics object handle scalar. Supported values: a valid parent handle for the object class.], 
  [#strong[PickableParts];], [controls which parts of the object can capture mouse clicks.], [Type: text scalar or character row vector. Supported values: 'visible', 'all', 'none'.], 
  [#strong[Position];], [updates annotation location and size; line-like annotations also update X and Y endpoints.], [Type: four-element numeric vector. Supported values: \[x y width height\] for shape and textbox annotations, or \[xstart ystart dx dy\] for line-like annotations.], 
  [#strong[Selected];], [indicates whether the object is currently selected.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[SelectionHighlight];], [controls whether selection handles are drawn when the object is selected.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[Tag];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or an object identifier.], 
  [#strong[Type];], [Nelson computes this value; graphics operations update it.], [Type: text scalar or character row vector. Supported values: read-only object type name, for example 'figure', 'axes', 'line', or 'scatter'.], 
  [#strong[Units];], [changes how annotation position values are interpreted and converts Position, X, and Y.], [Type: text keyword. Supported values: 'normalized', 'inches', 'centimeters', 'characters', 'points', or 'pixels'.], 
  [#strong[UserData];], [updates the stored object state.], [Type: Nelson array. Supported values: any Nelson value, including \[\], numeric arrays, text, cells, structures, or handles.], 
  [#strong[Visible];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[X];], [updates annotation horizontal endpoints and recomputes the annotation position.], [Type: two-element numeric vector. Supported values: finite normalized or unit-specific x coordinates \[xstart xend\] for line-like annotations.], 
  [#strong[Y];], [updates annotation vertical endpoints and recomputes the annotation position.], [Type: two-element numeric vector. Supported values: finite normalized or unit-specific y coordinates \[ystart yend\] for line-like annotations.], 
)

== Example

Create the annotation and list its properties.

``````matlab
f = figure('Visible', 'off');
h = annotation(f, 'line');
names = properties(h);
close(f)
``````


== See also

#nlink(<graphics:3_labels_styling.4_labels_annotations.annotation>)[annotation];, #nlink(<handle:properties>)[properties];, #nlink(<handle:get>)[get];, #nlink(<handle:set>)[set];.
