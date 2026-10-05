#import "../../nelson_help.typ": *

= violinplot properties <graphics:2_graphics_objects.4_properties.nelson.graphics.violinplot.properties>

violinplot graphics object properties.

== Description

This page documents the visible properties returned by #strong[properties]; for a #strong[violinplot]; graphics object.

 

#table(
  columns: 3,
  [Property], [Action], [Type and supported values], 
  [#strong[Annotation];], [updates the annotation metadata used by interactive tools and object inspection.], [Type: graphics annotation object or empty handle value. Supported values: an annotation object associated with the graphics item, or an empty graphics handle when no annotation is attached.], 
  [#strong[BeingDeleted];], [Nelson computes this value; graphics operations update it.], [Type: text scalar or character row vector. Supported values: 'off', 'on'.], 
  [#strong[BusyAction];], [controls whether an interrupting callback is queued or canceled.], [Type: text scalar or character row vector. Supported values: 'queue', 'cancel'.], 
  [#strong[ButtonDownFcn];], [runs when the object receives a mouse-button event.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[Children];], [parenting operations update the vector.], [Type: graphics object handle vector. Supported values: empty vector.], 
  [#strong[Clipping];], [updates clipping during the next graphics refresh.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[ColorGroupLayout];], [controls how color groups share the available group width.], [Type: text scalar or character row vector. Supported values: 'grouped', 'overlaid'.], 
  [#strong[ColorGroupWidth];], [sets the normalized width used for color groups.], [Type: numeric scalar. Supported values: values in \[0,1\].], 
  [#strong[ColorGroupWidthMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[ContextMenu];], [attaches the menu used for context-click actions.], [Type: graphics object handle scalar. Supported values: \[\] or a uicontextmenu handle.], 
  [#strong[CreateFcn];], [runs when the object is created.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[DataTipTemplate];], [updates the content used for interactive data tips.], [Type: data tip template object or empty handle value. Supported values: a data tip template object owned by the graphics item, or an empty graphics handle when data tips are not configured.], 
  [#strong[DeleteFcn];], [runs when the object is deleted.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[DensityDirection];], [selects which side of the group position displays the density shape.], [Type: text scalar or character row vector. Supported values: 'both', 'positive', 'negative'.], 
  [#strong[DensityScale];], [selects the density normalization rule.], [Type: text scalar or character row vector. Supported values: 'area', 'count', 'width'.], 
  [#strong[DensityValues];], [density of each violin at #strong[EvaluationPoints];, one column per violin. Setting it switches #strong[DensityValuesMode]; to 'manual'; the values are then drawn as given.], [Type: real floating-point matrix. Supported values: same size as #strong[EvaluationPoints];.], 
  [#strong[DensityValuesMode];], ['auto' computes #strong[DensityValues]; from the sample data; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[DensityWidth];], [sets the maximum violin width in data units.], [Type: finite numeric scalar. Supported values: positive finite scalar value.], 
  [#strong[DensityWidthMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[DisplayName];], [updates the label used by legend entries and object identification.], [Type: text value. Supported values: character row vector or string scalar.], 
  [#strong[EdgeColor];], [sets the outline and median marker color.], [Type: color value or color mode keyword. Supported values: short color names, RGB triplet with values in \[0,1\], hexadecimal color, 'none', 'flat', or 'interp'.], 
  [#strong[EdgeColorMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[EvaluationPoints];], [values where the kernel density is evaluated, one column per violin. By default, 100 points from min(y) - 3h to max(y) + 3h (h: bandwidth). Setting it switches #strong[EvaluationPointsMode]; to 'manual'.], [Type: real floating-point matrix. Supported values: finite values; a row vector is stored as a column.], 
  [#strong[EvaluationPointsMode];], ['auto' computes #strong[EvaluationPoints]; from the sample data; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[FaceAlpha];], [sets transparency of the filled violin body.], [Type: numeric scalar. Supported values: values in \[0,1\].], 
  [#strong[FaceColor];], [sets the filled violin body color.], [Type: color value or color mode keyword. Supported values: short color names, RGB triplet with values in \[0,1\], hexadecimal color, 'none', 'flat', or 'interp'.], 
  [#strong[FaceColorMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[HandleVisibility];], [controls whether handle-search functions can find the object.], [Type: text scalar or character row vector. Supported values: 'on', 'off', 'callback'.], 
  [#strong[HitTest];], [includes or excludes the object from mouse hit testing.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[Interruptible];], [controls whether a running callback can be interrupted.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[LineStyle];], [sets the outline and median marker line style.], [Type: text scalar or character row vector. Supported values: '-', '--', ':', '-.', or 'none'.], 
  [#strong[LineWidth];], [sets the outline and median marker line width.], [Type: finite numeric scalar. Supported values: positive finite scalar value.], 
  [#strong[Orientation];], [chooses whether values are displayed vertically or horizontally.], [Type: text scalar or character row vector. Supported values: 'vertical', 'horizontal'.], 
  [#strong[Parent];], [sets the axes that owns the object.], [Type: graphics object handle scalar. Supported values: axes or hggroup handle.], 
  [#strong[PickableParts];], [controls whether visible or all object parts can be picked.], [Type: text scalar or character row vector. Supported values: 'visible', 'all', 'none'.], 
  [#strong[Selected];], [marks the object as selected or not selected.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[SelectionHighlight];], [controls display of selection handles.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[SeriesIndex];], [stores the color-order series index.], [Type: positive numeric scalar. Supported values: positive finite scalar value.], 
  [#strong[SourceTable];], [stores the table used to create the chart.], [Type: table or empty value. Supported values: \[\] or a table supplied to violinplot.], 
  [#strong[Tag];], [stores user-defined text for identifying the object.], [Type: text value. Supported values: character row vector or string scalar.], 
  [#strong[Type];], [identifies the graphics object type.], [Type: text scalar or character row vector. Supported values: 'violinplot'.], 
  [#strong[UserData];], [stores user-defined data on the object.], [Type: any Nelson value. Supported values: any value.], 
  [#strong[Visible];], [shows or hides the object.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[XData];], [sets group positions used to place violins.], [Type: real numeric vector. Supported values: finite numeric values; nonfinite values are ignored for drawing.], 
  [#strong[XDataMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[XVariable];], [stores the table variable name used for x data.], [Type: text value. Supported values: character row vector or string scalar.], 
  [#strong[YData];], [sets values used to compute the distribution.], [Type: real numeric vector. Supported values: finite numeric values; nonfinite values are ignored for drawing.], 
  [#strong[YDataMode];], ['auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value.], [Type: text scalar or character row vector. Supported values: 'auto', 'manual'.], 
  [#strong[YVariable];], [stores the table variable name used for y data.], [Type: text value. Supported values: character row vector or string scalar.], 
)

== Example

Inspect violinplot properties.

``````matlab
h = violinplot([1 2 2 3]);
props = properties(h)
``````


== See also

#nlink(<graphics:1_plots.4_data_distribution_plots.violinplot>)[violinplot];, #nlink(<handle:properties>)[properties];.
