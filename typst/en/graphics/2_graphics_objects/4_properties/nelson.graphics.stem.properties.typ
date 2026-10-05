#import "../../nelson_help.typ": *

= stem properties <graphics:2_graphics_objects.4_properties.nelson.graphics.stem.properties>

stem graphics object properties.

== Description

This page documents the visible properties returned by properties for a stem graphics object.

 

#table(
  columns: 3,
  [Property], [Action], [Type and supported values], 
  [#strong[Annotation];], [updates the annotation metadata used by object inspection.], [Type: graphics annotation object or empty handle value. Supported values: an annotation object associated with the graphics item, or an empty graphics handle.], 
  [#strong[BaseLine];], [stores the baseline graphics object when one is associated with the stem chart.], [Type: graphics object handle. Supported values: empty vector or a baseline handle.], 
  [#strong[BaseValue];], [sets the z value where stems start.], [Type: numeric scalar. Supported values: finite scalar.], 
  [#strong[BeingDeleted];], [Nelson computes this value; graphics operations update it.], [Type: text scalar or character row vector. Supported values: 'off' or 'on'.], 
  [#strong[BusyAction];], [controls whether an interrupting callback is queued or canceled.], [Type: text scalar or character row vector. Supported values: 'queue' or 'cancel'.], 
  [#strong[ButtonDownFcn];], [runs when the object receives a mouse-button event.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[Children];], [parenting operations update the vector.], [Type: graphics object handle vector. Supported values: empty vector or child handles.], 
  [#strong[Clipping];], [controls clipping at the axes limits.], [Type: text scalar or character row vector. Supported values: 'on' or 'off'.], 
  [#strong[Color];], [sets the stem line and default marker color.], [Type: color value. Supported values: color short name, RGB triplet with values in \[0,1\], or hexadecimal color.], 
  [#strong[ColorMode];], ['auto' lets Nelson choose the color from the axes color order; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto' or 'manual'.], 
  [#strong[ContextMenu];], [attaches the menu used for context-click actions.], [Type: graphics object handle scalar. Supported values: \[\] or a uicontextmenu handle.], 
  [#strong[CreateFcn];], [runs when the object is created.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[DataTipTemplate];], [updates the content used for interactive data tips.], [Type: data tip template object or empty handle value. Supported values: a data tip template object owned by the graphics item, or an empty graphics handle.], 
  [#strong[DeleteFcn];], [runs when the object is deleted.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[DisplayName];], [sets the label used by legends and object inspectors.], [Type: text scalar or character row vector. Supported values: any text value.], 
  [#strong[HandleVisibility];], [controls whether the handle is returned by handle-finding functions.], [Type: text scalar or character row vector. Supported values: 'on' or 'off'.], 
  [#strong[HitTest];], [controls whether the object can receive mouse events.], [Type: text scalar or character row vector. Supported values: 'on' or 'off'.], 
  [#strong[Interruptible];], [controls whether callbacks can be interrupted.], [Type: text scalar or character row vector. Supported values: 'on' or 'off'.], 
  [#strong[LineStyle];], [sets the style of stem lines.], [Type: text scalar or character row vector. Supported values: '-', '--', ':', '-.', or 'none'.], 
  [#strong[LineStyleMode];], ['auto' lets Nelson choose the line style; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto' or 'manual'.], 
  [#strong[LineWidth];], [sets the stem line width.], [Type: numeric scalar. Supported values: nonnegative finite scalar in points.], 
  [#strong[Marker];], [sets the marker drawn at each data point.], [Type: text scalar or character row vector. Supported values: line marker symbols such as 'o', '+', '\*', '.', 'x', 's', 'd', '^', 'v', '\>', '\<', 'p', 'h', or 'none'.], 
  [#strong[MarkerEdgeColor];], [sets the marker edge color.], [Type: color value or mode text. Supported values: 'auto', 'none', color short name, RGB triplet with values in \[0,1\], or hexadecimal color.], 
  [#strong[MarkerFaceColor];], [sets the marker fill color.], [Type: color value or mode text. Supported values: 'auto', 'none', color short name, RGB triplet with values in \[0,1\], or hexadecimal color.], 
  [#strong[MarkerMode];], ['auto' lets Nelson choose the marker; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto' or 'manual'.], 
  [#strong[MarkerSize];], [sets marker size.], [Type: numeric scalar. Supported values: nonnegative finite scalar in points.], 
  [#strong[Parent];], [sets the graphics parent.], [Type: graphics object handle scalar. Supported values: axes or hggroup handle.], 
  [#strong[PickableParts];], [controls which visible parts can receive mouse events.], [Type: text scalar or character row vector. Supported values: 'visible', 'all', or 'none'.], 
  [#strong[Selected];], [marks the object as selected.], [Type: text scalar or character row vector. Supported values: 'on' or 'off'.], 
  [#strong[SelectionHighlight];], [controls selection highlighting.], [Type: text scalar or character row vector. Supported values: 'on' or 'off'.], 
  [#strong[SeriesIndex];], [stores the series index used with axes style order.], [Type: numeric scalar. Supported values: positive finite scalar.], 
  [#strong[ShowBaseLine];], [controls whether a baseline is shown for the stem chart.], [Type: on\/off value. Supported values: 'on', 'off', true, or false.], 
  [#strong[SourceTable];], [stores the source table for table-based inputs.], [Type: table-like data value or empty value. Supported values: \[\] or source data container.], 
  [#strong[Tag];], [stores user-defined object identifier text.], [Type: text scalar or character row vector. Supported values: any text value.], 
  [#strong[Type];], [identifies the graphics object type.], [Type: read-only text scalar. Supported values: 'stem'.], 
  [#strong[UserData];], [stores user-defined data associated with the object.], [Type: any Nelson value. Supported values: any value.], 
  [#strong[Visible];], [controls object visibility.], [Type: text scalar or character row vector. Supported values: 'on' or 'off'.], 
  [#strong[XData];], [sets x coordinates for the stem points.], [Type: numeric vector. Supported values: finite or nonfinite numeric values.], 
  [#strong[XDataMode];], ['auto' lets Nelson generate x data; 'manual' preserves assigned data.], [Type: text scalar or character row vector. Supported values: 'auto' or 'manual'.], 
  [#strong[XDataSource];], [stores the workspace expression used as x data source.], [Type: text scalar or character row vector. Supported values: any text value or ''.], 
  [#strong[XVariable];], [stores the source variable used for x data.], [Type: text, numeric, or empty value. Supported values: variable name, index, or empty value.], 
  [#strong[YData];], [sets y coordinates for the stem points.], [Type: numeric vector. Supported values: finite or nonfinite numeric values.], 
  [#strong[YDataMode];], ['auto' lets Nelson generate y data; 'manual' preserves assigned data.], [Type: text scalar or character row vector. Supported values: 'auto' or 'manual'.], 
  [#strong[YDataSource];], [stores the workspace expression used as y data source.], [Type: text scalar or character row vector. Supported values: any text value or ''.], 
  [#strong[YVariable];], [stores the source variable used for y data.], [Type: text, numeric, or empty value. Supported values: variable name, index, or empty value.], 
  [#strong[ZData];], [sets z coordinates for the stem points.], [Type: numeric vector. Supported values: finite or nonfinite numeric values.], 
  [#strong[ZDataMode];], ['auto' lets Nelson generate z data; 'manual' preserves assigned data.], [Type: text scalar or character row vector. Supported values: 'auto' or 'manual'.], 
  [#strong[ZDataSource];], [stores the workspace expression used as z data source.], [Type: text scalar or character row vector. Supported values: any text value or ''.], 
  [#strong[ZVariable];], [stores the source variable used for z data.], [Type: text, numeric, or empty value. Supported values: variable name, index, or empty value.], 
)

== Example

Inspect stem properties.

``````matlab
h = stem(1:3);
h3 = stem3([1 2 3; 4 5 6]);
properties(h)
``````


== See also

#nlink(<graphics:1_plots.6_discrete_data_plots.stem>)[stem];, #nlink(<graphics:1_plots.6_discrete_data_plots.stem3>)[stem3];, #nlink(<handle:properties>)[properties];, #nlink(<handle:get>)[get];, #nlink(<handle:set>)[set];.
