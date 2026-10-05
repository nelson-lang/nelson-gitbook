#import "../../nelson_help.typ": *

= functioncontour properties <graphics:2_graphics_objects.4_properties.nelson.graphics.functioncontour.properties>

functioncontour graphics object properties.

== Description

This page documents the visible properties returned by #strong[properties]; for a #strong[functioncontour]; graphics object.

 

#table(
  columns: 3,
  [Property], [Action], [Type and supported values], 
  [#strong[Annotation];], [updates annotation metadata used by graphics inspection.], [Type: graphics annotation object or empty handle value. Supported values: annotation handle or empty handle.], 
  [#strong[BeingDeleted];], [reports object deletion state.], [Type: text scalar or character row vector. Supported values: 'off', 'on'.], 
  [#strong[BusyAction];], [controls callback queuing while another callback is running.], [Type: text scalar or character row vector. Supported values: 'queue', 'cancel'.], 
  [#strong[ButtonDownFcn];], [runs when the object receives a mouse-button event.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[Children];], [stores child graphics handles.], [Type: graphics object handle vector. Supported values: empty vector or child handles.], 
  [#strong[Clipping];], [controls clipping to the parent axes.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[ContextMenu];], [attaches a context menu to the object.], [Type: graphics object handle scalar. Supported values: \[\] or a uicontextmenu handle.], 
  [#strong[ContourMatrix];], [stores generated contour segment data.], [Type: numeric matrix. Supported values: \[\] or a contour matrix.], 
  [#strong[CreateFcn];], [runs when the object is created.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[DataTipTemplate];], [updates interactive data tip content.], [Type: data tip template object or empty handle value. Supported values: data tip template handle or empty handle.], 
  [#strong[DeleteFcn];], [runs when the object is deleted.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[DisplayName];], [sets the label used by legends and object identification.], [Type: text value. Supported values: character row vector or string scalar.], 
  [#strong[EdgeAlpha];], [sets contour line transparency.], [Type: numeric scalar. Supported values: values in \[0, 1\].], 
  [#strong[EdgeColor];], [sets the internal contour line color.], [Type: color value. Supported values: RGB triplet, short or long color name, 'flat', 'interp', or 'none'.], 
  [#strong[FaceAlpha];], [sets filled contour transparency.], [Type: numeric scalar or text value. Supported values: values in \[0, 1\], 'flat', or 'interp'.], 
  [#strong[FaceColor];], [sets filled contour color.], [Type: color value. Supported values: RGB triplet, short or long color name, 'flat', 'interp', or 'none'.], 
  [#strong[Fill];], [controls whether contour bands are filled.], [Type: text scalar or character row vector. Supported values: 'off', 'on'.], 
  [#strong[Floating];], [controls whether contours use their level as z-coordinate.], [Type: text scalar or character row vector. Supported values: 'off', 'on'.], 
  [#strong[Function];], [sets the function sampled to generate contours.], [Type: function handle. Supported values: scalar function handle with two inputs.], 
  [#strong[HandleVisibility];], [controls handle discovery.], [Type: text scalar or character row vector. Supported values: 'on', 'off', 'callback'.], 
  [#strong[HitTest];], [controls whether the object can receive pointer events.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[Interruptible];], [controls whether callbacks can be interrupted.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[LabelColor];], [sets contour label color.], [Type: color value. Supported values: RGB triplet, short or long color name, 'flat', 'interp', or 'none'.], 
  [#strong[LabelFormat];], [sets contour label formatting.], [Type: text value or function handle. Supported values: format text, string scalar, or function handle.], 
  [#strong[LabelSpacing];], [sets spacing between contour labels.], [Type: numeric scalar. Supported values: finite nonnegative values.], 
  [#strong[LevelList];], [sets contour levels.], [Type: numeric vector. Supported values: real finite level values.], 
  [#strong[LevelListMode];], [selects automatic or manual contour levels.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[LevelStep];], [sets spacing between generated contour levels.], [Type: numeric scalar. Supported values: finite positive values.], 
  [#strong[LevelStepMode];], [selects automatic or manual level spacing.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[LineColor];], [sets contour line color.], [Type: color value. Supported values: RGB triplet, short or long color name, 'flat', 'interp', or 'none'.], 
  [#strong[LineStyle];], [sets contour line style.], [Type: text scalar or character row vector. Supported values: '-', '--', ':', '-.', or 'none'.], 
  [#strong[LineWidth];], [sets contour line width.], [Type: numeric scalar. Supported values: finite positive values.], 
  [#strong[MeshDensity];], [sets the number of sample points in each direction.], [Type: positive integer scalar. Supported values: integers greater than one.], 
  [#strong[Parent];], [sets the parent axes.], [Type: graphics object handle scalar. Supported values: axes handle.], 
  [#strong[PickableParts];], [controls which parts can receive pointer events.], [Type: text scalar or character row vector. Supported values: 'visible', 'all', 'none'.], 
  [#strong[Selected];], [sets object selection state.], [Type: text scalar or character row vector. Supported values: 'off', 'on'.], 
  [#strong[SelectionHighlight];], [controls selection highlighting.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[ShowText];], [controls contour label display.], [Type: text scalar or character row vector. Supported values: 'off', 'on'.], 
  [#strong[Tag];], [stores user text for object identification.], [Type: text value. Supported values: character row vector or string scalar.], 
  [#strong[TextList];], [sets contour levels that receive labels.], [Type: numeric vector. Supported values: real finite level values.], 
  [#strong[TextListMode];], [selects automatic or manual labeled levels.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[TextStep];], [sets spacing between labeled contour levels.], [Type: numeric scalar. Supported values: finite positive values.], 
  [#strong[TextStepMode];], [selects automatic or manual label spacing.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[Type];], [reports the graphics object type.], [Type: read-only text. Supported values: 'functioncontour'.], 
  [#strong[UserData];], [stores user data on the object.], [Type: any Nelson value. Supported values: any value.], 
  [#strong[Visible];], [controls object visibility.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[XData];], [stores sampled x-coordinates.], [Type: numeric matrix. Supported values: real numeric matrix matching YData and ZData.], 
  [#strong[XDataMode];], [selects automatic or manual x-coordinate data.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[XDataSource];], [stores the x-data source expression.], [Type: text value. Supported values: character row vector or string scalar.], 
  [#strong[XRange];], [sets the sampled x-interval.], [Type: two-element numeric vector. Supported values: finite increasing limits.], 
  [#strong[XRangeMode];], [selects automatic or manual x-range limits.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[YData];], [stores sampled y-coordinates.], [Type: numeric matrix. Supported values: real numeric matrix matching XData and ZData.], 
  [#strong[YDataMode];], [selects automatic or manual y-coordinate data.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[YDataSource];], [stores the y-data source expression.], [Type: text value. Supported values: character row vector or string scalar.], 
  [#strong[YRange];], [sets the sampled y-interval.], [Type: two-element numeric vector. Supported values: finite increasing limits.], 
  [#strong[YRangeMode];], [selects automatic or manual y-range limits.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[ZData];], [stores sampled function values.], [Type: numeric matrix. Supported values: real numeric matrix matching XData and YData.], 
  [#strong[ZDataSource];], [stores the z-data source expression.], [Type: text value. Supported values: character row vector or string scalar.], 
  [#strong[ZLocation];], [sets the z-plane used to draw the contours.], [Type: numeric scalar or text value. Supported values: finite scalar, 'zmin', or 'zmax'.], 
)

== Example

Inspect function contour properties.

``````matlab
h = fcontour(@(x, y) x.^2 - y.^2);
names = properties(h);
``````


== See also

#nlink(<graphics:1_plots.3_contour_plots.fcontour>)[fcontour];, #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.contour.properties>)[contour properties];.
