#import "../../nelson_help.typ": *

= raincloudplot properties <graphics:2_graphics_objects.4_properties.nelson.graphics.raincloudplot.properties>

raincloudplot graphics object properties.

== Description

This page documents the visible properties returned by #strong[properties]; for a #strong[raincloudplot]; graphics object.

 

#table(
  columns: 3,
  [Property], [Action], [Type and supported values], 
  [#strong[Annotation];], [updates the annotation metadata used by interactive tools and object inspection.], [Type: graphics annotation object or empty handle value. Supported values: an annotation object associated with the graphics item, or an empty graphics handle when no annotation is attached.], 
  [#strong[BeingDeleted];], [Nelson computes this value; graphics operations update it.], [Type: text scalar or character row vector. Supported values: 'off', 'on'.], 
  [#strong[BusyAction];], [controls whether an interrupting callback is queued or canceled.], [Type: text scalar or character row vector. Supported values: 'queue', 'cancel'.], 
  [#strong[ButtonDownFcn];], [runs when the object receives a mouse-button event.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[Children];], [parenting operations update the vector.], [Type: graphics object handle vector. Supported values: empty vector.], 
  [#strong[Clipping];], [updates clipping during the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[ContextMenu];], [attaches the menu used for context-click actions.], [Type: graphics object handle scalar. Supported values: \[\] or a uicontextmenu handle.], 
  [#strong[CreateFcn];], [runs when the object is created.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[DataTipTemplate];], [updates the content used for interactive data tips.], [Type: data tip template object or empty handle value. Supported values: a data tip template object owned by the graphics item, or an empty graphics handle when data tips are not configured.], 
  [#strong[DeleteFcn];], [runs when the object is deleted.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[DensityWidth];], [sets the maximum rain cloud plot width in units of the positional grouping data.], [Type: finite numeric scalar. Supported values: positive finite scalar value.], 
  [#strong[DisplayName];], [updates the label used by legend entries and object identification.], [Type: text value. Supported values: character row vector or string scalar.], 
  [#strong[EdgeColor];], [sets the cloud outline color; follows FaceColor while EdgeColorMode is 'auto'.], [Type: color value. Supported values: short color names, RGB triplet with values in \[0,1\], hexadecimal color, or 'none'.], 
  [#strong[EdgeColorMode];], ['auto' makes EdgeColor follow FaceColor; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[FaceAlpha];], [sets the transparency of the cloud and of the marker faces.], [Type: numeric scalar. Supported values: values in \[0,1\].], 
  [#strong[FaceColor];], [sets the cloud fill color; the default comes from the axes ColorOrder and SeriesIndex.], [Type: color value. Supported values: short color names, RGB triplet with values in \[0,1\], hexadecimal color, or 'none'.], 
  [#strong[FaceColorMode];], ['auto' takes FaceColor from the axes ColorOrder; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[HandleVisibility];], [controls whether handle-search functions can find the object.], [Type: text scalar or character row vector. Supported values: 'on', 'off', 'callback'.], 
  [#strong[HitTest];], [includes or excludes the object from mouse hit testing.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[Interruptible];], [controls whether a running callback can be interrupted.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[LineWidth];], [sets the cloud outline width and the marker edge width in points.], [Type: finite numeric scalar. Supported values: positive finite scalar value.], 
  [#strong[Marker];], [sets the marker symbol of the rain.], [Type: text scalar or character row vector. Supported values: 'o', '+', '\*', '.', 'x', 'square', 'diamond', '^', 'v', '\>', '\<', 'pentagram', 'hexagram', 'none'.], 
  [#strong[MarkerEdgeColor];], [sets the marker outline color; follows EdgeColor while MarkerEdgeColorMode is 'auto'.], [Type: color value. Supported values: short color names, RGB triplet with values in \[0,1\], hexadecimal color, or 'none'.], 
  [#strong[MarkerEdgeColorMode];], ['auto' makes MarkerEdgeColor follow EdgeColor; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[MarkerFaceColor];], [sets the marker fill color; follows FaceColor while MarkerFaceColorMode is 'auto'.], [Type: color value. Supported values: short color names, RGB triplet with values in \[0,1\], hexadecimal color, or 'none'.], 
  [#strong[MarkerFaceColorMode];], ['auto' makes MarkerFaceColor follow FaceColor; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[MarkerSize];], [sets the marker area in points squared.], [Type: finite numeric scalar. Supported values: positive finite scalar value.], 
  [#strong[Orientation];], [chooses the plot alignment: with 'horizontal' the sample values are along the x-axis.], [Type: text scalar or character row vector. Supported values: 'horizontal', 'vertical'.], 
  [#strong[Parent];], [sets the axes that owns the object.], [Type: graphics object handle scalar. Supported values: axes or hggroup handle.], 
  [#strong[PickableParts];], [controls whether visible or all object parts can be picked.], [Type: text scalar or character row vector. Supported values: 'visible', 'all', 'none'.], 
  [#strong[Selected];], [marks the object as selected or not selected.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[SelectionHighlight];], [controls display of selection handles.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[SeriesIndex];], [selects the axes ColorOrder row used by the automatic colors.], [Type: positive numeric scalar. Supported values: positive whole number.], 
  [#strong[SourceTable];], [stores the table used to create the chart.], [Type: table or empty value. Supported values: \[\] or a table supplied to raincloudplot.], 
  [#strong[Tag];], [stores user-defined text for identifying the object.], [Type: text value. Supported values: character row vector or string scalar.], 
  [#strong[Type];], [identifies the graphics object type.], [Type: text scalar or character row vector. Supported values: 'raincloudplot'.], 
  [#strong[UserData];], [stores user-defined data on the object.], [Type: any Nelson value. Supported values: any value.], 
  [#strong[Visible];], [shows or hides the object.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[XData];], [sets the positional grouping data used to place the rain clouds.], [Type: real numeric vector. Supported values: finite numeric values; nonfinite values are ignored for drawing.], 
  [#strong[XDataMode];], ['auto' when the positions come from a table or from the defaults; 'manual' when XData is assigned.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[XVariable];], [stores the table variable name used for x data.], [Type: text value. Supported values: character row vector or string scalar.], 
  [#strong[YData];], [sets the sample data.], [Type: real numeric vector. Supported values: finite numeric values; nonfinite values are ignored for drawing.], 
  [#strong[YDataMode];], ['auto' when the samples come from a table; 'manual' when YData is assigned.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[YVariable];], [stores the table variable name used for the sample data.], [Type: text value. Supported values: character row vector or string scalar.], 
)

== Example

Inspect raincloudplot properties.

``````matlab
r = raincloudplot(randn(50, 1));
props = properties(r)
``````


== See also

#nlink(<graphics:1_plots.4_data_distribution_plots.raincloudplot>)[raincloudplot];, #nlink(<handle:properties>)[properties];.
