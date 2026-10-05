#import "../../nelson_help.typ": *

= parameterizedfunctionline properties <graphics:2_graphics_objects.4_properties.nelson.graphics.parameterizedfunctionline.properties>

parameterizedfunctionline graphics object properties.

== Description

This page documents the visible properties returned by #strong[properties]; for a #strong[parameterizedfunctionline]; graphics object.

 

#table(
  columns: 3,
  [Property], [Action], [Type and supported values], 
  [#strong[AffectAutoLimits];], [updates automatic axes limits.], [Type: finite numeric vector. Supported values: two finite values \[min max\].], 
  [#strong[AlignVertexCenters];], [updates rendered output on refresh.], [Type: on\/off value. Supported values: 'on', 'off', true, or false.], 
  [#strong[Annotation];], [updates annotation metadata.], [Type: graphics annotation object. Supported values: annotation handle or empty handle.], 
  [#strong[BeingDeleted];], [reports object deletion state.], [Type: text scalar. Supported values: 'off' or 'on'.], 
  [#strong[BusyAction];], [controls callback queuing.], [Type: text scalar. Supported values: 'queue' or 'cancel'.], 
  [#strong[ButtonDownFcn];], [runs on mouse-button events.], [Type: callback value. Supported values: \[\], function handle, text, or callback cell array.], 
  [#strong[Children];], [updates with object parenting.], [Type: graphics handle vector. Supported values: empty vector or child handles.], 
  [#strong[Clipping];], [controls clipping to axes limits.], [Type: text scalar. Supported values: 'on' or 'off'.], 
  [#strong[Color];], [changes line color.], [Type: color value. Supported values: color names, short color names, RGB triplet, hexadecimal color, or 'none'.], 
  [#strong[ColorMode];], [selects automatic or manual color.], [Type: text scalar. Supported values: 'auto' or 'manual'.], 
  [#strong[ContextMenu];], [attaches a context menu.], [Type: graphics handle scalar. Supported values: \[\] or uicontextmenu handle.], 
  [#strong[CreateFcn];], [runs when the object is created.], [Type: callback value. Supported values: \[\], function handle, text, or callback cell array.], 
  [#strong[DataTipTemplate];], [updates the data tip content shown by interactive data tips.], [Type: data tip template object or empty value. Supported values: a data tip template object or an empty value.], 
  [#strong[DeleteFcn];], [runs when the object is deleted.], [Type: callback value. Supported values: \[\], function handle, text, or callback cell array.], 
  [#strong[DisplayName];], [sets the legend label.], [Type: text value. Supported values: character row vector or string scalar.], 
  [#strong[HandleVisibility];], [controls handle discovery.], [Type: text scalar. Supported values: 'on', 'off', or 'callback'.], 
  [#strong[HitTest];], [controls mouse hit testing.], [Type: text scalar. Supported values: 'on' or 'off'.], 
  [#strong[Interruptible];], [controls callback interruption.], [Type: text scalar. Supported values: 'on' or 'off'.], 
  [#strong[LineJoin];], [changes joins between segments.], [Type: text scalar. Supported values: 'miter', 'round', or 'chamfer'.], 
  [#strong[LineStyle];], [changes line style.], [Type: text scalar. Supported values: '-', '--', ':', '-.', or 'none'.], 
  [#strong[LineStyleMode];], [selects automatic or manual style.], [Type: text scalar. Supported values: 'auto' or 'manual'.], 
  [#strong[LineWidth];], [changes line width.], [Type: finite numeric scalar. Supported values: values greater than or equal to 0.], 
  [#strong[Marker];], [changes marker symbol.], [Type: text scalar. Supported values: marker names, marker characters, or 'none'.], 
  [#strong[MarkerEdgeColor];], [changes marker edge color.], [Type: color value. Supported values: color values, 'auto', 'none', or 'flat'.], 
  [#strong[MarkerFaceColor];], [changes marker face color.], [Type: color value. Supported values: color values, 'auto', 'none', or 'flat'.], 
  [#strong[MarkerIndices];], [selects marked data points.], [Type: positive integer vector. Supported values: indices into plotted data or empty value.], 
  [#strong[MarkerMode];], [selects automatic or manual markers.], [Type: text scalar. Supported values: 'auto' or 'manual'.], 
  [#strong[MarkerSize];], [changes marker size.], [Type: finite numeric scalar. Supported values: finite scalar value.], 
  [#strong[MeshDensity];], [controls function sampling density.], [Type: positive integer scalar. Supported values: integer greater than 1.], 
  [#strong[Parent];], [reparents the object.], [Type: graphics handle scalar. Supported values: axes or hggroup handle.], 
  [#strong[PickableParts];], [selects parts that receive mouse hits.], [Type: text scalar. Supported values: 'visible', 'all', or 'none'.], 
  [#strong[RData];], [updates polar radius data.], [Type: numeric vector. Supported values: \[\] or finite\/infinite numeric data.], 
  [#strong[RDataMode];], [selects automatic or manual radius data.], [Type: text scalar. Supported values: 'auto' or 'manual'.], 
  [#strong[RDataSource];], [stores radius data source text.], [Type: text value. Supported values: empty text or variable name.], 
  [#strong[RVariable];], [stores radius variable text.], [Type: text value. Supported values: empty text or variable name.], 
  [#strong[Selected];], [changes selection state.], [Type: text scalar. Supported values: 'on' or 'off'.], 
  [#strong[SelectionHighlight];], [controls selection highlighting.], [Type: text scalar. Supported values: 'on' or 'off'.], 
  [#strong[SeriesIndex];], [stores series ordering.], [Type: integer scalar. Supported values: finite integer value.], 
  [#strong[SourceTable];], [binds the object data to a table; the variable properties select columns.], [Type: table. Supported values: empty table or a table providing bound variables.], 
  [#strong[TRange];], [sets the parameter sampling interval.], [Type: two-element numeric row vector. Supported values: increasing finite interval \[tmin tmax\].], 
  [#strong[TRangeMode];], [selects automatic or manual parameter range.], [Type: text scalar. Supported values: 'auto' or 'manual'.], 
  [#strong[Tag];], [stores an object identifier.], [Type: text value. Supported values: empty text or identifier text.], 
  [#strong[ThetaData];], [updates polar angle data.], [Type: numeric vector. Supported values: \[\] or finite\/infinite numeric data.], 
  [#strong[ThetaDataMode];], [selects automatic or manual angle data.], [Type: text scalar. Supported values: 'auto' or 'manual'.], 
  [#strong[ThetaDataSource];], [stores angle data source text.], [Type: text value. Supported values: empty text or variable name.], 
  [#strong[ThetaVariable];], [stores angle variable text.], [Type: text value. Supported values: empty text or variable name.], 
  [#strong[Type];], [reports the object type.], [Type: read-only text. Supported values: 'parameterizedfunctionline'.], 
  [#strong[UserData];], [stores user data.], [Type: Nelson array. Supported values: any Nelson value.], 
  [#strong[Visible];], [controls object visibility.], [Type: text scalar. Supported values: 'on' or 'off'.], 
  [#strong[XData];], [stores sampled x data.], [Type: numeric vector. Supported values: \[\] or numeric row\/column vector.], 
  [#strong[XDataMode];], [selects automatic or manual x data.], [Type: text scalar. Supported values: 'auto' or 'manual'.], 
  [#strong[XDataSource];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or a workspace\/table variable name.], 
  [#strong[XFunction];], [stores the function sampled for x data.], [Type: function value. Supported values: function handle or empty value.], 
  [#strong[XVariable];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or a workspace\/table variable name.], 
  [#strong[YData];], [stores sampled y data.], [Type: numeric vector. Supported values: \[\] or numeric row\/column vector.], 
  [#strong[YDataMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[YDataSource];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or a workspace\/table variable name.], 
  [#strong[YFunction];], [stores the function sampled for y data.], [Type: function value. Supported values: function handle or empty value.], 
  [#strong[YVariable];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or a workspace\/table variable name.], 
  [#strong[ZData];], [stores sampled z data.], [Type: numeric vector. Supported values: \[\] or numeric row\/column vector.], 
  [#strong[ZDataMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[ZDataSource];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or a workspace\/table variable name.], 
  [#strong[ZFunction];], [stores the function sampled for z data.], [Type: function value. Supported values: function handle or empty value.], 
  [#strong[ZVariable];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or a workspace\/table variable name.], 
)

== Example

Inspect parameterizedfunctionline properties.

``````matlab
h = fplot(@cos, @sin); properties(h)
``````


== See also

#nlink(<graphics:1_plots.1_line_plots.fplot>)[fplot];, #nlink(<graphics:1_plots.1_line_plots.fplot3>)[fplot3];, #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.functionline.properties>)[functionline properties];.
