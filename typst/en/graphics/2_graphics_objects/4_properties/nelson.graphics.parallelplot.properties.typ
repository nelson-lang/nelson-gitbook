#import "../../nelson_help.typ": *

= parallelplot properties <graphics:2_graphics_objects.4_properties.nelson.graphics.parallelplot.properties>

parallelplot graphics object properties.

== Description

This page documents the visible properties returned by #strong[properties]; for a #strong[parallelplot]; graphics object.

 

#table(
  columns: 3,
  [Property], [Action], [Type and supported values], 
  [#strong[Annotation];], [stores annotation metadata for graphics tools.], [Type: graphics annotation object or empty handle value. Supported values: an annotation object or an empty graphics handle.], 
  [#strong[BeingDeleted];], [reports whether deletion is in progress.], [Type: text scalar or character row vector. Supported values: 'off', 'on'.], 
  [#strong[BusyAction];], [controls callback queuing while another callback runs.], [Type: text scalar or character row vector. Supported values: 'queue', 'cancel'.], 
  [#strong[ButtonDownFcn];], [runs when the chart receives a mouse-button event.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[Children];], [lists the graphics primitives used to render the chart.], [Type: graphics object handle vector. Supported values: empty vector or child handles.], 
  [#strong[Color];], [sets the default line color for ungrouped data.], [Type: RGB triplet or color name. Supported values: a 1-by-3 numeric RGB vector or a color name such as 'r', 'g', or 'blue'.], 
  [#strong[ContextMenu];], [attaches a context menu to the chart.], [Type: graphics object handle scalar. Supported values: \[\] or a uicontextmenu handle.], 
  [#strong[CoordinateData];], [stores the numeric coordinate data displayed by the chart.], [Type: numeric matrix. Supported values: \[\] or a finite numeric matrix.], 
  [#strong[CoordinateLabel];], [sets the coordinate-axis label text.], [Type: text scalar or character row vector. Supported values: any character row vector or string scalar.], 
  [#strong[CoordinateTickLabels];], [sets labels shown below the coordinate axes.], [Type: cell array of character vectors or string vector. Supported values: one label per coordinate.], 
  [#strong[CoordinateVariables];], [stores table variables selected for coordinates.], [Type: cell array of character vectors or string vector. Supported values: \[\] or variable names present in the source table.], 
  [#strong[CreateFcn];], [runs when the chart is created.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[Data];], [stores the numeric matrix plotted as parallel coordinate rows.], [Type: numeric matrix. Supported values: a nonempty numeric matrix.], 
  [#strong[DataLabel];], [sets the data-axis label text.], [Type: text scalar or character row vector. Supported values: any character row vector or string scalar.], 
  [#strong[DataNormalization];], [selects how numeric coordinates are scaled for display.], [Type: text scalar or character row vector. Supported values: 'range', 'none'.], 
  [#strong[DeleteFcn];], [runs when the chart is deleted.], [Type: callback value. Supported values: \[\], function handle, character vector, string scalar, or callback cell array.], 
  [#strong[DisplayName];], [sets the label used by legend-related tools.], [Type: text scalar or character row vector. Supported values: any character row vector or string scalar.], 
  [#strong[FontName];], [sets the font family used by chart text.], [Type: text scalar or character row vector. Supported values: installed font family names or ''.], 
  [#strong[FontSize];], [sets the chart text size.], [Type: finite numeric scalar. Supported values: positive finite scalar values.], 
  [#strong[GroupData];], [stores grouping data used to color rows.], [Type: vector. Supported values: \[\] or one value per data row.], 
  [#strong[GroupVariable];], [stores the table variable used for grouping.], [Type: text, numeric, or table selector value. Supported values: \[\] or a source-table variable selector.], 
  [#strong[HandleVisibility];], [controls handle discovery through graphics queries.], [Type: text scalar or character row vector. Supported values: 'on', 'off', 'callback'.], 
  [#strong[HitTest];], [controls whether the chart responds to mouse clicks.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[InnerPosition];], [stores the inner chart rectangle.], [Type: numeric row vector. Supported values: four finite values \[left bottom width height\].], 
  [#strong[Interruptible];], [controls interruption of running callbacks.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[Jitter];], [sets horizontal jitter applied to coordinate positions.], [Type: finite numeric scalar. Supported values: finite scalar values greater than or equal to 0.], 
  [#strong[Layout];], [stores tiled layout placement information.], [Type: graphics object handle scalar. Supported values: \[\] or a layout options handle.], 
  [#strong[LegendTitle];], [sets the title text for the group legend.], [Type: text scalar or character row vector. Supported values: any character row vector or string scalar.], 
  [#strong[LegendVisible];], [controls display of the group legend.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[LineAlpha];], [sets line transparency.], [Type: finite numeric scalar. Supported values: values from 0 through 1.], 
  [#strong[LineStyle];], [sets the style of plotted rows.], [Type: text scalar or character row vector. Supported values: '-', '--', ':', '-.', 'none'.], 
  [#strong[LineWidth];], [sets plotted row width.], [Type: finite numeric scalar. Supported values: positive finite scalar values.], 
  [#strong[MarkerSize];], [sets marker size for row vertices.], [Type: finite numeric scalar. Supported values: positive finite scalar values.], 
  [#strong[MarkerStyle];], [sets marker style for row vertices.], [Type: text scalar or character row vector. Supported values: 'none', 'o', '+', '\*', '.', 'x', and other marker symbols.], 
  [#strong[OuterPosition];], [stores the outer chart rectangle.], [Type: numeric row vector. Supported values: four finite values \[left bottom width height\].], 
  [#strong[Parent];], [stores the graphics parent.], [Type: graphics object handle scalar. Supported values: a valid graphics parent handle.], 
  [#strong[PickableParts];], [controls which visible parts can be picked.], [Type: text scalar or character row vector. Supported values: 'visible', 'all', 'none'.], 
  [#strong[Position];], [stores the chart position rectangle.], [Type: numeric row vector. Supported values: four finite values \[left bottom width height\].], 
  [#strong[PositionConstraint];], [selects which position rectangle is preserved during layout.], [Type: text scalar or character row vector. Supported values: 'outerposition', 'innerposition'.], 
  [#strong[Selected];], [controls selection state.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[SelectionHighlight];], [controls selection highlight display.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
  [#strong[SourceTable];], [stores the table used to create the chart.], [Type: table or empty value. Supported values: \[\] or a table supplied to parallelplot.], 
  [#strong[Tag];], [stores user-defined text.], [Type: text scalar or character row vector. Supported values: any character row vector or string scalar.], 
  [#strong[Title];], [sets chart title text.], [Type: text scalar or character row vector. Supported values: any character row vector or string scalar.], 
  [#strong[Type];], [identifies the graphics object type.], [Type: text scalar or character row vector. Supported values: 'parallelplot'.], 
  [#strong[Units];], [sets units used by position properties.], [Type: text scalar or character row vector. Supported values: 'normalized', 'pixels', 'inches', 'centimeters', 'points', 'characters'.], 
  [#strong[UserData];], [stores user data attached to the chart.], [Type: any Nelson value. Supported values: any value.], 
  [#strong[Visible];], [controls chart visibility.], [Type: text scalar or character row vector. Supported values: 'on', 'off'.], 
)

== Example

Inspect parallelplot properties.

``````matlab
h = parallelplot([1 10 100; 2 20 50; 3 30 0]);
properties(h)
``````


== See also

#nlink(<graphics:1_plots.4_data_distribution_plots.parallelplot>)[parallelplot];.
