#import "../../nelson_help.typ": *

= compassplot properties <graphics:2_graphics_objects.4_properties.nelson.graphics.compassplot.properties>

compassplot graphics object properties.

== Description

This page documents the visible properties returned by #strong[properties]; for a #strong[compassplot]; graphics object.

 

#table(
  columns: 3,
  [Property], [Action], [Type and supported values], 
  [#strong[AffectAutoLimits];], [controls whether the object contributes to automatic axes limits.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[AlignVertexCenters];], [updates line rendering alignment on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[Annotation];], [updates annotation metadata used by graphics tools.], [Type: graphics annotation object or empty handle value. Supported values: an annotation object associated with the graphics item, or an empty graphics handle.], 
  [#strong[BeingDeleted];], [reports whether deletion is in progress.], [Type: text scalar or character row vector. Supported values: 'off', 'on'.], 
  [#strong[BusyAction];], [controls callback queuing while another callback runs.], [Type: text scalar or character row vector. Supported values: 'queue', 'cancel'.], 
  [#strong[ButtonDownFcn];], [runs when the object receives a mouse-button event.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[Children];], [lists child graphics primitives owned by the object.], [Type: graphics object handle vector. Supported values: empty vector.], 
  [#strong[Clipping];], [controls clipping to the parent axes.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[Color];], [sets the vector line color.], [Type: color value. Supported values: short color names, RGB triplet with values in \[0,1\], or hexadecimal color.], 
  [#strong[ColorMode];], [selects automatic or manual color selection.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[ContextMenu];], [attaches the menu used for context-click actions.], [Type: graphics object handle scalar. Supported values: \[\] or a uicontextmenu handle.], 
  [#strong[CreateFcn];], [runs when the object is created.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[DataTipTemplate];], [updates the data tip content shown by interactive data tips.], [Type: data tip template object or empty value. Supported values: a data tip template object or an empty value.], 
  [#strong[DeleteFcn];], [runs when the object is deleted.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[DisplayName];], [stores the label used by legends and object identification.], [Type: text value. Supported values: character row vector or string scalar.], 
  [#strong[HandleVisibility];], [controls handle discovery through graphics queries.], [Type: text scalar or character row vector. Supported values: 'on', 'off', 'callback'.], 
  [#strong[HitTest];], [includes or excludes the object from mouse hit testing.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[Interruptible];], [controls interruption of running callbacks.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[LineJoin];], [sets the join style used for connected line segments.], [Type: text scalar or character row vector. Supported values: 'miter', 'round', 'chamfer'.], 
  [#strong[LineStyle];], [sets the vector line style.], [Type: text scalar or character row vector. Supported values: '-', '--', ':', '-.', 'none'.], 
  [#strong[LineStyleMode];], [selects automatic or manual line style selection.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[LineWidth];], [sets vector line width.], [Type: finite numeric scalar. Supported values: value greater than or equal to 0.], 
  [#strong[Marker];], [sets the marker symbol.], [Type: text scalar or character row vector. Supported values: marker symbols such as 'none', 'o', '+', '\*', '.', 'x', and other marker names.], 
  [#strong[MarkerEdgeColor];], [sets marker edge color.], [Type: color value or marker color keyword. Supported values: short color names, RGB triplet with values in \[0,1\], hexadecimal color, 'auto', 'none', or 'flat'.], 
  [#strong[MarkerFaceColor];], [sets marker fill color.], [Type: color value or marker color keyword. Supported values: short color names, RGB triplet with values in \[0,1\], hexadecimal color, 'auto', 'none', or 'flat'.], 
  [#strong[MarkerIndices];], [selects data points that show markers.], [Type: numeric vector. Supported values: positive integer indices or empty value.], 
  [#strong[MarkerMode];], [selects automatic or manual marker selection.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[MarkerSize];], [sets marker size.], [Type: finite numeric scalar. Supported values: positive finite scalar values.], 
  [#strong[Parent];], [stores the parent polar axes.], [Type: graphics object handle scalar. Supported values: polaraxes handle.], 
  [#strong[PickableParts];], [controls which visible parts can be picked.], [Type: text scalar or character row vector. Supported values: 'visible', 'all', 'none'.], 
  [#strong[RData];], [stores polar radius data.], [Type: numeric vector. Supported values: finite real values with one element per vector.], 
  [#strong[RDataMode];], [selects automatic or manual radius data.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[RDataSource];], [stores the workspace variable name used to refresh radius data.], [Type: text value. Supported values: empty text or a workspace variable name.], 
  [#strong[RVariable];], [stores the table variable used for radius data.], [Type: text value. Supported values: empty text or a source-table variable name.], 
  [#strong[Selected];], [controls selection state.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[SelectionHighlight];], [controls selection highlight display.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[SeriesIndex];], [stores the color order series index.], [Type: finite numeric scalar. Supported values: finite integer values.], 
  [#strong[SourceTable];], [stores the table used to create the chart.], [Type: table or empty array. Supported values: \[\] or a table supplied to compassplot.], 
  [#strong[Tag];], [stores user-defined text for identifying the object.], [Type: text value. Supported values: character row vector or string scalar.], 
  [#strong[ThetaData];], [stores polar angle data in radians.], [Type: numeric vector. Supported values: finite real values with one element per vector.], 
  [#strong[ThetaDataMode];], [selects automatic or manual angle data.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[ThetaDataSource];], [stores the workspace variable name used to refresh angle data.], [Type: text value. Supported values: empty text or a workspace variable name.], 
  [#strong[ThetaVariable];], [stores the table variable used for angle data.], [Type: text value. Supported values: empty text or a source-table variable name.], 
  [#strong[Type];], [identifies the graphics object type.], [Type: text scalar or character row vector. Supported values: 'compassplot'.], 
  [#strong[UserData];], [stores user data attached to the object.], [Type: any Nelson value. Supported values: any value.], 
  [#strong[Visible];], [controls object visibility.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[XData];], [stores internal cartesian x-coordinate data.], [Type: numeric vector. Supported values: \[\] or numeric data managed by the object.], 
  [#strong[XDataMode];], [selects automatic or manual x-coordinate data.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[XDataSource];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or a workspace\/table variable name.], 
  [#strong[XVariable];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or a workspace\/table variable name.], 
  [#strong[YData];], [stores internal cartesian y-coordinate data.], [Type: numeric vector. Supported values: \[\] or numeric data managed by the object.], 
  [#strong[YDataMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[YDataSource];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or a workspace\/table variable name.], 
  [#strong[YVariable];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or a workspace\/table variable name.], 
  [#strong[ZData];], [stores internal cartesian z-coordinate data.], [Type: numeric vector. Supported values: \[\] or numeric data managed by the object.], 
  [#strong[ZDataMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[ZDataSource];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or a workspace\/table variable name.], 
  [#strong[ZVariable];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or a workspace\/table variable name.], 
)

== Example

Inspect compassplot properties.

``````matlab
h = compassplot([1 + 1i, 1 - 1i]);
props = properties(h)
``````


== See also

#nlink(<graphics:1_plots.5_vector_fields.compassplot>)[compassplot];, #nlink(<handle:properties>)[properties];.
