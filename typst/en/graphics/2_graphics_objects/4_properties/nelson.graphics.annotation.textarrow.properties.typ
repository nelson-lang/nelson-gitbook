#import "../../nelson_help.typ": *

= annotation textarrow properties <graphics:2_graphics_objects.4_properties.nelson.graphics.annotation.textarrow.properties>

textarrow annotation graphics object properties.

== Description

This page documents the visible properties returned by #strong[properties]; for a #strong[textarrow]; annotation.

 

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
  [#strong[FontAngle];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'normal', 'italic'.], 
  [#strong[FontName];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: a system font name or 'FixedWidth'.], 
  [#strong[FontSize];], [recomputes geometry, limits, or layout.], [Type: finite numeric scalar. Supported values: finite scalar value.], 
  [#strong[FontUnits];], [changes how FontSize is converted for rendered text.], [Type: text keyword. Supported values: 'points', 'inches', 'centimeters', 'normalized', or 'pixels'.], 
  [#strong[FontWeight];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'normal', 'bold'.], 
  [#strong[HandleVisibility];], [controls whether the object handle is listed by handle searches.], [Type: text scalar or character row vector. Supported values: 'on', 'callback', 'off'.], 
  [#strong[HeadLength];], [changes annotation arrow head length.], [Type: numeric scalar. Supported values: positive finite scalar in points.], 
  [#strong[HeadStyle];], [changes the annotation arrow head shape.], [Type: text keyword. Supported values: 'plain', 'ellipse', 'vback1', 'vback2', 'vback3', 'cback1', 'cback2', 'cback3', 'fourstar', 'rectangle', 'diamond', 'rose', 'hypocycloid', 'astroid', 'deltoid', or 'none'.], 
  [#strong[HeadWidth];], [changes annotation arrow head width.], [Type: numeric scalar. Supported values: positive finite scalar in points.], 
  [#strong[HitTest];], [controls whether the object can capture mouse clicks.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[HorizontalAlignment];], [aligns annotation text horizontally.], [Type: text keyword. Supported values: 'left', 'center', or 'right'.], 
  [#strong[Interpreter];], [changes how annotation text markup is interpreted.], [Type: text keyword. Supported values: 'tex', 'latex', or 'none'.], 
  [#strong[Interruptible];], [controls whether a running callback can be interrupted.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[LineStyle];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: '-', '--', ':', '-.', 'none'.], 
  [#strong[LineWidth];], [updates rendered output on the next graphics refresh.], [Type: finite numeric scalar. Supported values: value greater than or equal to 0.], 
  [#strong[Parent];], [reparents the object and updates Children on the old and new parents.], [Type: graphics object handle scalar. Supported values: a valid parent handle for the object class.], 
  [#strong[PickableParts];], [controls which parts of the object can capture mouse clicks.], [Type: text scalar or character row vector. Supported values: 'visible', 'all', 'none'.], 
  [#strong[Position];], [updates annotation location and size; line-like annotations also update X and Y endpoints.], [Type: four-element numeric vector. Supported values: \[x y width height\] for shape and textbox annotations, or \[xstart ystart dx dy\] for line-like annotations.], 
  [#strong[Selected];], [indicates whether the object is currently selected.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[SelectionHighlight];], [controls whether selection handles are drawn when the object is selected.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[String];], [updates displayed text content.], [Type: text value. Supported values: character row vector, string scalar, string array, or cell array of character row vectors.], 
  [#strong[Tag];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or an object identifier.], 
  [#strong[TextBackgroundColor];], [updates the text box background behind the text arrow label.], [Type: color value. Supported values: 'none', named colors and short names, RGB triplet \[r g b\] with values in \[0,1\], or hexadecimal color '\#RRGGBB'\/'\#RGB'.], 
  [#strong[TextColor];], [updates rendered output on the next graphics refresh.], [Type: color value. Supported values: 'red'\/'r', 'green'\/'g', 'blue'\/'b', 'cyan'\/'c', 'magenta'\/'m', 'yellow'\/'y', 'black'\/'k', 'white'\/'w', RGB triplet \[r g b\] with values in \[0,1\], or hexadecimal color '\#RRGGBB'\/'\#RGB'.], 
  [#strong[TextEdgeColor];], [updates the text box outline around the text arrow label.], [Type: color value. Supported values: 'none', named colors and short names, RGB triplet \[r g b\] with values in \[0,1\], or hexadecimal color '\#RRGGBB'\/'\#RGB'.], 
  [#strong[TextLineWidth];], [changes the text box outline width around the text arrow label.], [Type: positive finite numeric scalar. Supported values: value greater than 0 in points.], 
  [#strong[TextMargin];], [changes the spacing between the text arrow label and its text box outline.], [Type: nonnegative finite numeric scalar. Supported values: value greater than or equal to 0 in pixels.], 
  [#strong[TextRotation];], [rotates the text arrow label.], [Type: finite numeric scalar. Supported values: rotation angle in degrees.], 
  [#strong[Type];], [Nelson computes this value; graphics operations update it.], [Type: text scalar or character row vector. Supported values: read-only object type name, for example 'figure', 'axes', 'line', or 'scatter'.], 
  [#strong[Units];], [changes how annotation position values are interpreted and converts Position, X, and Y.], [Type: text keyword. Supported values: 'normalized', 'inches', 'centimeters', 'characters', 'points', or 'pixels'.], 
  [#strong[UserData];], [updates the stored object state.], [Type: Nelson array. Supported values: any Nelson value, including \[\], numeric arrays, text, cells, structures, or handles.], 
  [#strong[VerticalAlignment];], [aligns annotation text vertically.], [Type: text keyword. Supported values: 'top', 'cap', 'middle', 'baseline', or 'bottom'.], 
  [#strong[Visible];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[X];], [updates annotation horizontal endpoints and recomputes the annotation position.], [Type: two-element numeric vector. Supported values: finite normalized or unit-specific x coordinates \[xstart xend\] for line-like annotations.], 
  [#strong[Y];], [updates annotation vertical endpoints and recomputes the annotation position.], [Type: two-element numeric vector. Supported values: finite normalized or unit-specific y coordinates \[ystart yend\] for line-like annotations.], 
)

== Example

Create the annotation and list its properties.

``````matlab
f = figure('Visible', 'off');
h = annotation(f, 'textarrow');
names = properties(h);
close(f)
``````


== See also

#nlink(<graphics:3_labels_styling.4_labels_annotations.annotation>)[annotation];, #nlink(<handle:properties>)[properties];, #nlink(<handle:get>)[get];, #nlink(<handle:set>)[set];.
