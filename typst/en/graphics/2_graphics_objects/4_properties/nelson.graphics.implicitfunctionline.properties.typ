#import "../../nelson_help.typ": *

= implicitfunctionline properties <graphics:2_graphics_objects.4_properties.nelson.graphics.implicitfunctionline.properties>

implicitfunctionline graphics object properties.

== Description

This page documents the visible properties returned by #strong[properties]; for an #strong[implicitfunctionline]; graphics object.

 

#table(
  columns: 3,
  [Property], [Action], [Type and supported values], 
  [#strong[Annotation];], [updates annotation metadata used by graphics inspection.], [Type: graphics annotation object or empty handle value. Supported values: annotation handle or empty handle.], 
  [#strong[BeingDeleted];], [reports object deletion state.], [Type: text scalar or character row vector. Supported values: 'off', 'on'.], 
  [#strong[BusyAction];], [controls callback queuing while another callback is running.], [Type: text scalar or character row vector. Supported values: 'queue', 'cancel'.], 
  [#strong[ButtonDownFcn];], [runs when the object receives a mouse-button event.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[Children];], [stores child graphics handles.], [Type: graphics object handle vector. Supported values: empty vector or child handles.], 
  [#strong[Clipping];], [controls clipping to the parent axes.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[Color];], [sets the implicit curve color.], [Type: RGB triplet or color name. Supported values: RGB triplet, short color name, or long color name.], 
  [#strong[ColorMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[ContextMenu];], [attaches a context menu to the object.], [Type: graphics object handle scalar. Supported values: \[\] or a uicontextmenu handle.], 
  [#strong[ContourMatrix];], [stores generated contour segment data.], [Type: numeric matrix. Supported values: \[\] or a contour matrix.], 
  [#strong[CreateFcn];], [runs when the object is created.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[DataTipTemplate];], [updates interactive data tip content.], [Type: data tip template object or empty handle value. Supported values: data tip template handle or empty handle.], 
  [#strong[DeleteFcn];], [runs when the object is deleted.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[DisplayName];], [sets the label used by legends and object identification.], [Type: text value. Supported values: character row vector or string scalar.], 
  [#strong[EdgeAlpha];], [sets internal contour line transparency.], [Type: numeric scalar. Supported values: values in \[0, 1\].], 
  [#strong[EdgeColor];], [sets the internal contour line color.], [Type: color value. Supported values: RGB triplet, short or long color name, 'flat', 'interp', or 'none'.], 
  [#strong[FaceAlpha];], [sets internal filled contour transparency.], [Type: numeric scalar or text value. Supported values: values in \[0, 1\], 'flat', or 'interp'.], 
  [#strong[FaceColor];], [sets internal filled contour color.], [Type: color value. Supported values: RGB triplet, short or long color name, 'flat', 'interp', or 'none'.], 
  [#strong[Fill];], [controls internal contour filling.], [Type: text scalar or character row vector. Supported values: 'off', 'on'.], 
  [#strong[Floating];], [controls whether contours use their level as z-coordinate.], [Type: text scalar or character row vector. Supported values: 'off', 'on'.], 
  [#strong[Function];], [sets the function sampled to generate the implicit curve.], [Type: function handle. Supported values: scalar function handle with two inputs.], 
  [#strong[HandleVisibility];], [controls handle discovery.], [Type: text scalar or character row vector. Supported values: 'on', 'off', 'callback'.], 
  [#strong[HitTest];], [controls whether the object can receive pointer events.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[Interruptible];], [controls whether callbacks can be interrupted.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[LabelColor];], [sets internal contour label color.], [Type: color value. Supported values: RGB triplet, short or long color name, 'flat', 'interp', or 'none'.], 
  [#strong[LabelFormat];], [sets internal contour label formatting.], [Type: text value or function handle. Supported values: format text, string scalar, or function handle.], 
  [#strong[LabelSpacing];], [sets spacing between internal contour labels.], [Type: numeric scalar. Supported values: finite nonnegative values.], 
  [#strong[LevelList];], [stores the implicit zero level used for drawing.], [Type: numeric vector. Supported values: real finite level values.], 
  [#strong[LevelListMode];], [stores automatic or manual internal contour levels.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[LevelStep];], [sets internal contour level spacing.], [Type: numeric scalar. Supported values: finite positive values.], 
  [#strong[LevelStepMode];], [stores automatic or manual internal level spacing.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[LineColor];], [sets the internal contour line color.], [Type: color value. Supported values: RGB triplet, short or long color name, 'flat', 'interp', or 'none'.], 
  [#strong[LineStyle];], [sets the implicit curve line style.], [Type: text scalar or character row vector. Supported values: '-', '--', ':', '-.', or 'none'.], 
  [#strong[LineStyleMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[LineWidth];], [sets the implicit curve line width.], [Type: numeric scalar. Supported values: finite positive values.], 
  [#strong[Marker];], [sets the implicit curve marker.], [Type: text scalar or character row vector. Supported values: marker names such as 'none', 'o', '+', '\*', '.', 'x', 'square', or 'diamond'.], 
  [#strong[MarkerEdgeColor];], [sets the marker edge color.], [Type: RGB triplet or color name. Supported values: 'auto', 'none', RGB triplet, or color name.], 
  [#strong[MarkerFaceColor];], [sets the marker fill color.], [Type: RGB triplet or color name. Supported values: 'auto', 'none', RGB triplet, or color name.], 
  [#strong[MarkerMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[MarkerSize];], [sets the marker size.], [Type: numeric scalar. Supported values: finite positive values.], 
  [#strong[MeshDensity];], [sets the number of sample points in each direction.], [Type: positive integer scalar. Supported values: integers greater than one.], 
  [#strong[Parent];], [sets the parent axes.], [Type: graphics object handle scalar. Supported values: axes handle.], 
  [#strong[PickableParts];], [controls which parts can receive pointer events.], [Type: text scalar or character row vector. Supported values: 'visible', 'all', 'none'.], 
  [#strong[Selected];], [sets object selection state.], [Type: text scalar or character row vector. Supported values: 'off', 'on'.], 
  [#strong[SelectionHighlight];], [controls selection highlighting.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[SeriesIndex];], [stores series ordering.], [Type: integer scalar. Supported values: finite integer value.], 
  [#strong[ShowText];], [controls internal contour label display.], [Type: text scalar or character row vector. Supported values: 'off', 'on'.], 
  [#strong[SourceTable];], [binds the object data to a table; the variable properties select columns.], [Type: table. Supported values: empty table or a table providing bound variables.], 
  [#strong[Tag];], [stores user text for object identification.], [Type: text value. Supported values: character row vector or string scalar.], 
  [#strong[TextList];], [sets internal contour levels that receive labels.], [Type: numeric vector. Supported values: real finite level values.], 
  [#strong[TextListMode];], [stores automatic or manual internal labeled levels.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[TextStep];], [sets spacing between internal labeled contour levels.], [Type: numeric scalar. Supported values: finite positive values.], 
  [#strong[TextStepMode];], [stores automatic or manual internal label spacing.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[Type];], [reports the graphics object type.], [Type: read-only text. Supported values: 'implicitfunctionline'.], 
  [#strong[UserData];], [stores user data on the object.], [Type: any Nelson value. Supported values: any value.], 
  [#strong[Visible];], [controls object visibility.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[XData];], [stores sampled x-coordinates.], [Type: numeric matrix. Supported values: real numeric matrix matching YData and ZData.], 
  [#strong[XDataMode];], [stores automatic or manual x-coordinate data.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[XDataSource];], [stores the x-data source expression.], [Type: text value. Supported values: character row vector or string scalar.], 
  [#strong[XRange];], [sets the sampled x-interval.], [Type: two-element numeric vector. Supported values: finite increasing limits.], 
  [#strong[XRangeMode];], [selects automatic or manual x-range limits.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[XVariable];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or a workspace\/table variable name.], 
  [#strong[YData];], [stores sampled y-coordinates.], [Type: numeric matrix. Supported values: real numeric matrix matching XData and ZData.], 
  [#strong[YDataMode];], [stores automatic or manual y-coordinate data.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[YDataSource];], [stores the y-data source expression.], [Type: text value. Supported values: character row vector or string scalar.], 
  [#strong[YRange];], [sets the sampled y-interval.], [Type: two-element numeric vector. Supported values: finite increasing limits.], 
  [#strong[YRangeMode];], [selects automatic or manual y-range limits.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[YVariable];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or a workspace\/table variable name.], 
  [#strong[ZData];], [stores sampled function values.], [Type: numeric matrix. Supported values: real numeric matrix matching XData and YData.], 
  [#strong[ZDataMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[ZDataSource];], [stores the z-data source expression.], [Type: text value. Supported values: character row vector or string scalar.], 
  [#strong[ZLocation];], [sets the z-plane used to draw the internal contour.], [Type: numeric scalar or text value. Supported values: finite scalar, 'zmin', or 'zmax'.], 
  [#strong[ZVariable];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or a workspace\/table variable name.], 
)

== Example

Inspect implicit function line properties.

``````matlab
h = fimplicit(@(x, y) x.^2 + y.^2 - 1);
names = properties(h);
``````


== See also

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.fimplicit>)[fimplicit];, #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.functioncontour.properties>)[functioncontour properties];.
