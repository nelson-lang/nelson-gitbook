#import "../../nelson_help.typ": *

= scatter properties <graphics:2_graphics_objects.4_properties.nelson.graphics.scatter.properties>

scatter graphics object properties.

== Description

This page documents the visible properties returned by #strong[properties]; for a #strong[scatter]; graphics object.

 

#table(
  columns: 3,
  [Property], [Action], [Type and supported values], 
  [#strong[AlphaData];], [replaces data and recomputes automatic limits that depend on it.], [Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: \[\] or data with dimensions compatible with the rendered object.], 
  [#strong[AlphaDataMapping];], [replaces data and recomputes automatic limits that depend on it.], [Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: \[\] or data with dimensions compatible with the rendered object.], 
  [#strong[AlphaDataMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[AlphaVariable];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or a workspace\/table variable name.], 
  [#strong[Annotation];], [updates the annotation metadata used by interactive tools and object inspection.], [Type: graphics annotation object or empty handle value. Supported values: an annotation object associated with the graphics item, or an empty graphics handle when no annotation is attached.], 
  [#strong[BeingDeleted];], [Nelson computes this value; graphics operations update it.], [Type: text scalar or character row vector. Supported values: 'off', 'on'.], 
  [#strong[BusyAction];], [controls whether an interrupting callback is queued or canceled.], [Type: text scalar or character row vector. Supported values: 'queue', 'cancel'.], 
  [#strong[ButtonDownFcn];], [runs when the object receives a mouse-button event.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[CData];], [replaces data and recomputes automatic limits that depend on it.], [Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: \[\] or data with dimensions compatible with the rendered object.], 
  [#strong[CDataMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[CDataSource];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or a workspace\/table variable name.], 
  [#strong[Children];], [parenting operations update the vector.], [Type: graphics object handle vector. Supported values: empty vector or child handles.], 
  [#strong[Clipping];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[ColorVariable];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or a workspace\/table variable name.], 
  [#strong[ContextMenu];], [attaches the menu used for context-click actions.], [Type: graphics object handle scalar. Supported values: \[\] or a uicontextmenu handle.], 
  [#strong[CreateFcn];], [runs when the object is created.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[DataTipTemplate];], [updates the content used for interactive data tips.], [Type: data tip template object or empty handle value. Supported values: a data tip template object owned by the graphics item, or an empty graphics handle when data tips are not configured.], 
  [#strong[DeleteFcn];], [runs when the object is deleted.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[DisplayName];], [updates the label used by legend entries and object identification.], [Type: text value. Supported values: character row vector or string scalar.], 
  [#strong[HandleVisibility];], [controls whether handle-search functions can find the object.], [Type: text scalar or character row vector. Supported values: 'on', 'off', 'callback'.], 
  [#strong[HitTest];], [includes or excludes the object from mouse hit testing.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[Interruptible];], [controls whether a running callback can be interrupted.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[LineWidth];], [updates rendered output on the next graphics refresh.], [Type: finite numeric scalar. Supported values: value greater than or equal to 0.], 
  [#strong[Marker];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'o', '+', '\*', '.', 'x', '\_', '|', 'square', 'diamond', '^', 'v', '\>', '\<', 'pentagram', 'hexagram', 'none'.], 
  [#strong[MarkerEdgeAlpha];], [updates rendered output on the next graphics refresh.], [Type: numeric scalar or numeric array. Supported values: values in \[0,1\]; data arrays must match the related rendered data.], 
  [#strong[MarkerEdgeColor];], [updates rendered output on the next graphics refresh.], [Type: color value or marker color keyword. Supported values: 'red'\/'r', 'green'\/'g', 'blue'\/'b', 'cyan'\/'c', 'magenta'\/'m', 'yellow'\/'y', 'black'\/'k', 'white'\/'w', RGB triplet \[r g b\] with values in \[0,1\], or hexadecimal color '\#RRGGBB'\/'\#RGB', 'auto', 'none', 'flat'.], 
  [#strong[MarkerFaceAlpha];], [updates rendered output on the next graphics refresh.], [Type: numeric scalar or numeric array. Supported values: values in \[0,1\]; data arrays must match the related rendered data.], 
  [#strong[MarkerFaceColor];], [updates rendered output on the next graphics refresh.], [Type: color value or marker color keyword. Supported values: 'red'\/'r', 'green'\/'g', 'blue'\/'b', 'cyan'\/'c', 'magenta'\/'m', 'yellow'\/'y', 'black'\/'k', 'white'\/'w', RGB triplet \[r g b\] with values in \[0,1\], or hexadecimal color '\#RRGGBB'\/'\#RGB', 'auto', 'none', 'flat'.], 
  [#strong[Parent];], [reparents the object and updates Children on the old and new parents.], [Type: graphics object handle scalar. Supported values: a valid parent handle for the object class.], 
  [#strong[PickableParts];], [selects which visible or invisible parts can receive mouse hits.], [Type: text scalar or character row vector. Supported values: 'visible', 'all', 'none'.], 
  [#strong[RData];], [replaces polar radius data used by polar scatter charts.], [Type: numeric vector or matrix. Supported values: \[\] or radius data with dimensions compatible with ThetaData and SizeData.], 
  [#strong[RDataMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[RDataSource];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or a workspace\/table variable name.], 
  [#strong[RJitter];], [recomputes polar radius jitter for displayed points.], [Type: text scalar or character row vector. Supported values: 'none', 'rand', 'randn', 'density'.], 
  [#strong[RJitterDirection];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'both', 'positive', 'negative'.], 
  [#strong[RJitterWidth];], [recomputes polar radius jitter for displayed points.], [Type: finite numeric scalar. Supported values: value greater than or equal to 0.], 
  [#strong[RVariable];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or a workspace\/table variable name.], 
  [#strong[Selected];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[SelectionHighlight];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[SeriesIndex];], [updates the stored object state.], [Type: integer scalar or numeric vector. Supported values: finite integer value, finite numeric value, or vector required by the property.], 
  [#strong[SizeData];], [updates marker sizes on the next graphics refresh.], [Type: finite numeric scalar or vector. Supported values: positive scalar value or vector of positive values matching the rendered points.], 
  [#strong[SizeDataMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[SizeDataSource];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or a workspace\/table variable name.], 
  [#strong[SizeVariable];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or a workspace\/table variable name.], 
  [#strong[SourceTable];], [updates the stored object state.], [Type: table or empty array. Supported values: \[\] or a table used by variable-name properties.], 
  [#strong[Tag];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or an object identifier.], 
  [#strong[ThetaData];], [replaces polar angle data used by polar scatter charts.], [Type: numeric vector or matrix. Supported values: \[\] or angle data with dimensions compatible with RData and SizeData.], 
  [#strong[ThetaDataMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[ThetaDataSource];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or a workspace\/table variable name.], 
  [#strong[ThetaJitter];], [recomputes polar angle jitter for displayed points.], [Type: text scalar or character row vector. Supported values: 'none', 'rand', 'randn', 'density'.], 
  [#strong[ThetaJitterDirection];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'both', 'positive', 'negative'.], 
  [#strong[ThetaJitterWidth];], [recomputes polar angle jitter for displayed points.], [Type: finite numeric scalar. Supported values: value greater than or equal to 0.], 
  [#strong[ThetaVariable];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or a workspace\/table variable name.], 
  [#strong[Type];], [Nelson computes this value; graphics operations update it.], [Type: text scalar or character row vector. Supported values: read-only object type name, for example 'figure', 'axes', 'line', or 'scatter'.], 
  [#strong[UserData];], [updates the stored object state.], [Type: Nelson array. Supported values: any Nelson value, including \[\], numeric arrays, text, cells, structures, or handles.], 
  [#strong[Visible];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[XData];], [replaces data and recomputes automatic limits that depend on it.], [Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: \[\] or data with dimensions compatible with the rendered object.], 
  [#strong[XDataMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[XDataSource];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or a workspace\/table variable name.], 
  [#strong[XJitter];], [recomputes geometry, limits, or layout.], [Type: text scalar or character row vector. Supported values: 'none', 'rand', 'randn', 'density'.], 
  [#strong[XJitterDirection];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'both', 'positive', 'negative'.], 
  [#strong[XJitterWidth];], [recomputes geometry, limits, or layout.], [Type: finite numeric scalar. Supported values: value greater than or equal to 0.], 
  [#strong[XJitterWidthMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[XVariable];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or a workspace\/table variable name.], 
  [#strong[YData];], [replaces data and recomputes automatic limits that depend on it.], [Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: \[\] or data with dimensions compatible with the rendered object.], 
  [#strong[YDataMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[YDataSource];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or a workspace\/table variable name.], 
  [#strong[YJitter];], [recomputes geometry, limits, or layout.], [Type: text scalar or character row vector. Supported values: 'none', 'rand', 'randn', 'density'.], 
  [#strong[YJitterDirection];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'both', 'positive', 'negative'.], 
  [#strong[YJitterWidth];], [recomputes geometry, limits, or layout.], [Type: finite numeric scalar. Supported values: value greater than or equal to 0.], 
  [#strong[YJitterWidthMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[YVariable];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or a workspace\/table variable name.], 
  [#strong[ZData];], [replaces data and recomputes automatic limits that depend on it.], [Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: \[\] or data with dimensions compatible with the rendered object.], 
  [#strong[ZDataMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[ZDataSource];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or a workspace\/table variable name.], 
  [#strong[ZJitter];], [recomputes geometry, limits, or layout.], [Type: text scalar or character row vector. Supported values: 'none', 'rand', 'randn', 'density'.], 
  [#strong[ZJitterDirection];], [updates rendered output on the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'both', 'positive', 'negative'.], 
  [#strong[ZJitterWidth];], [recomputes geometry, limits, or layout.], [Type: finite numeric scalar. Supported values: value greater than or equal to 0.], 
  [#strong[ZJitterWidthMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[ZVariable];], [updates the stored object state.], [Type: text scalar or character row vector. Supported values: empty text or a workspace\/table variable name.], 
)

== Example

Create the graphics object and list its properties.

``````matlab
f = figure('Visible', 'off');
ax = axes('Parent', f);
h = scatter(ax, 1:3, [2 1 3]);
names = properties(h);
close(f)
``````


== See also

#nlink(<graphics:1_plots.4_data_distribution_plots.scatter>)[scatter];, #nlink(<graphics:1_plots.4_data_distribution_plots.scatter3>)[scatter3];, #nlink(<handle:properties>)[properties];, #nlink(<handle:get>)[get];, #nlink(<handle:set>)[set];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [--], [Property page added.],
)

// Author: Allan CORNET
