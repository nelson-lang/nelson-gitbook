# parallelplot properties

parallelplot graphics object properties.

## 📄 Description


This page documents the visible properties returned by <b>properties</b> for a <b>parallelplot</b> graphics object. 

| Property | Action | Type and supported values | 
| --- | --- | --- | 
| **Annotation** | stores annotation metadata for graphics tools. | Type: graphics annotation object or empty handle value. Supported values: an annotation object or an empty graphics handle. | 
| **BeingDeleted** | reports whether deletion is in progress. | Type: text scalar or character row vector. Supported values: 'off', 'on'. | 
| **BusyAction** | controls callback queuing while another callback runs. | Type: text scalar or character row vector. Supported values: 'queue', 'cancel'. | 
| **ButtonDownFcn** | runs when the chart receives a mouse-button event. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **Children** | lists the graphics primitives used to render the chart. | Type: graphics object handle vector. Supported values: empty vector or child handles. | 
| **Color** | sets the default line color for ungrouped data. | Type: RGB triplet or color name. Supported values: a 1-by-3 numeric RGB vector or a color name such as 'r', 'g', or 'blue'. | 
| **ContextMenu** | attaches a context menu to the chart. | Type: graphics object handle scalar. Supported values: [] or a uicontextmenu handle. | 
| **CoordinateData** | stores the numeric coordinate data displayed by the chart. | Type: numeric matrix. Supported values: [] or a finite numeric matrix. | 
| **CoordinateLabel** | sets the coordinate-axis label text. | Type: text scalar or character row vector. Supported values: any character row vector or string scalar. | 
| **CoordinateTickLabels** | sets labels shown below the coordinate axes. | Type: cell array of character vectors or string vector. Supported values: one label per coordinate. | 
| **CoordinateVariables** | stores table variables selected for coordinates. | Type: cell array of character vectors or string vector. Supported values: [] or variable names present in the source table. | 
| **CreateFcn** | runs when the chart is created. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **Data** | stores the numeric matrix plotted as parallel coordinate rows. | Type: numeric matrix. Supported values: a nonempty numeric matrix. | 
| **DataLabel** | sets the data-axis label text. | Type: text scalar or character row vector. Supported values: any character row vector or string scalar. | 
| **DataNormalization** | selects how numeric coordinates are scaled for display. | Type: text scalar or character row vector. Supported values: 'range', 'none'. | 
| **DeleteFcn** | runs when the chart is deleted. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **DisplayName** | sets the label used by legend-related tools. | Type: text scalar or character row vector. Supported values: any character row vector or string scalar. | 
| **FontName** | sets the font family used by chart text. | Type: text scalar or character row vector. Supported values: installed font family names or ''. | 
| **FontSize** | sets the chart text size. | Type: finite numeric scalar. Supported values: positive finite scalar values. | 
| **GroupData** | stores grouping data used to color rows. | Type: vector. Supported values: [] or one value per data row. | 
| **GroupVariable** | stores the table variable used for grouping. | Type: text, numeric, or table selector value. Supported values: [] or a source-table variable selector. | 
| **HandleVisibility** | controls handle discovery through graphics queries. | Type: text scalar or character row vector. Supported values: 'on', 'off', 'callback'. | 
| **HitTest** | controls whether the chart responds to mouse clicks. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **InnerPosition** | stores the inner chart rectangle. | Type: numeric row vector. Supported values: four finite values [left bottom width height]. | 
| **Interruptible** | controls interruption of running callbacks. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **Jitter** | sets horizontal jitter applied to coordinate positions. | Type: finite numeric scalar. Supported values: finite scalar values greater than or equal to 0. | 
| **Layout** | stores tiled layout placement information. | Type: graphics object handle scalar. Supported values: [] or a layout options handle. | 
| **LegendTitle** | sets the title text for the group legend. | Type: text scalar or character row vector. Supported values: any character row vector or string scalar. | 
| **LegendVisible** | controls display of the group legend. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **LineAlpha** | sets line transparency. | Type: finite numeric scalar. Supported values: values from 0 through 1. | 
| **LineStyle** | sets the style of plotted rows. | Type: text scalar or character row vector. Supported values: '-', '--', ':', '-.', 'none'. | 
| **LineWidth** | sets plotted row width. | Type: finite numeric scalar. Supported values: positive finite scalar values. | 
| **MarkerSize** | sets marker size for row vertices. | Type: finite numeric scalar. Supported values: positive finite scalar values. | 
| **MarkerStyle** | sets marker style for row vertices. | Type: text scalar or character row vector. Supported values: 'none', 'o', '+', '\*', '.', 'x', and other marker symbols. | 
| **OuterPosition** | stores the outer chart rectangle. | Type: numeric row vector. Supported values: four finite values [left bottom width height]. | 
| **Parent** | stores the graphics parent. | Type: graphics object handle scalar. Supported values: a valid graphics parent handle. | 
| **PickableParts** | controls which visible parts can be picked. | Type: text scalar or character row vector. Supported values: 'visible', 'all', 'none'. | 
| **Position** | stores the chart position rectangle. | Type: numeric row vector. Supported values: four finite values [left bottom width height]. | 
| **PositionConstraint** | selects which position rectangle is preserved during layout. | Type: text scalar or character row vector. Supported values: 'outerposition', 'innerposition'. | 
| **Selected** | controls selection state. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **SelectionHighlight** | controls selection highlight display. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **SourceTable** | stores the table used to create the chart. | Type: table or empty value. Supported values: [] or a table supplied to parallelplot. | 
| **Tag** | stores user-defined text. | Type: text scalar or character row vector. Supported values: any character row vector or string scalar. | 
| **Title** | sets chart title text. | Type: text scalar or character row vector. Supported values: any character row vector or string scalar. | 
| **Type** | identifies the graphics object type. | Type: text scalar or character row vector. Supported values: 'parallelplot'. | 
| **Units** | sets units used by position properties. | Type: text scalar or character row vector. Supported values: 'normalized', 'pixels', 'inches', 'centimeters', 'points', 'characters'. | 
| **UserData** | stores user data attached to the chart. | Type: any Nelson value. Supported values: any value. | 
| **Visible** | controls chart visibility. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 



## 💡 Example

Inspect parallelplot properties.

```matlab
h = parallelplot([1 10 100; 2 20 50; 3 30 0]);
properties(h)
```


## 🔗 See also

[parallelplot](../../../graphics/1_plots/4_data_distribution_plots/parallelplot.md).