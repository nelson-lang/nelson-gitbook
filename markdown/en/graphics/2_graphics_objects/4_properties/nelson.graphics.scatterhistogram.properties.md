# scatterhistogram properties

scatterhistogram graphics object properties.

## 📄 Description


This page documents the visible properties returned by <b>properties</b> for a <b>scatterhistogram</b> graphics object. 

| Property | Action | Type and supported values | 
| --- | --- | --- | 
| **Annotation** | stores annotation metadata for graphics tools. | Type: graphics annotation object or empty handle value. Supported values: an annotation object or an empty graphics handle. | 
| **BeingDeleted** | reports whether deletion is in progress. | Type: text scalar or character row vector. Supported values: 'off', 'on'. | 
| **BinWidths** | stores the histogram bin widths. | Type: numeric row vector. Supported values: two positive finite values [xWidth yWidth]. | 
| **BusyAction** | controls callback queuing while another callback runs. | Type: text scalar or character row vector. Supported values: 'queue', 'cancel'. | 
| **ButtonDownFcn** | runs when the chart receives a mouse-button event. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **Children** | lists graphics children owned by the chart. | Type: graphics object handle vector. Supported values: empty vector or child handles. | 
| **Color** | sets the scatter marker color. | Type: RGB triplet or color name. Supported values: a 1-by-3 numeric RGB vector or a color name such as 'r', 'g', or 'blue'. | 
| **ContextMenu** | attaches a context menu to the chart. | Type: graphics object handle scalar. Supported values: [] or a uicontextmenu handle. | 
| **CreateFcn** | runs when the chart is created. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **DeleteFcn** | runs when the chart is deleted. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **DisplayName** | sets the label used by legend-related tools. | Type: text scalar or character row vector. Supported values: any character row vector or string scalar. | 
| **FontName** | sets the font family used by chart text. | Type: text scalar or character row vector. Supported values: installed font family names or ''. | 
| **FontSize** | sets the chart text size. | Type: finite numeric scalar. Supported values: positive finite scalar values. | 
| **GroupData** | stores grouping data. | Type: vector. Supported values: [] or one value per data point. | 
| **GroupVariable** | stores the table variable used for grouping. | Type: text, numeric, or table selector value. Supported values: [] or a source-table variable selector. | 
| **HandleVisibility** | controls handle discovery through graphics queries. | Type: text scalar or character row vector. Supported values: 'on', 'off', 'callback'. | 
| **HistogramDisplayStyle** | sets the marginal histogram style. | Type: text scalar or character row vector. Supported values: 'bar', 'stairs'. | 
| **HitTest** | controls whether the chart responds to mouse clicks. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **InnerPosition** | stores the inner chart rectangle. | Type: numeric row vector. Supported values: four finite values [left bottom width height]. | 
| **Interruptible** | controls interruption of running callbacks. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **Layout** | stores tiled layout placement information. | Type: graphics object handle scalar. Supported values: [] or a layout options handle. | 
| **LegendTitle** | sets the group legend title. | Type: text scalar or character row vector. Supported values: any character row vector or string scalar. | 
| **LegendVisible** | controls display of the group legend. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **LineStyle** | sets scatter line style. | Type: text scalar or character row vector. Supported values: '-', '--', ':', '-.', 'none'. | 
| **LineWidth** | sets scatter line width. | Type: finite numeric scalar. Supported values: positive finite scalar values. | 
| **MarkerAlpha** | sets marker transparency. | Type: finite numeric scalar. Supported values: values from 0 through 1. | 
| **MarkerFilled** | controls whether markers are filled. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **MarkerSize** | sets scatter marker size. | Type: finite numeric scalar. Supported values: positive finite scalar values. | 
| **MarkerStyle** | sets scatter marker style. | Type: text scalar or character row vector. Supported values: 'o', '+', '\*', '.', 'x', 'square', and other marker symbols. | 
| **NumBins** | sets the number of bins in both marginal histograms. | Type: positive integer scalar or two-element numeric vector. Supported values: positive finite integer values. | 
| **OuterPosition** | stores the outer chart rectangle. | Type: numeric row vector. Supported values: four finite values [left bottom width height]. | 
| **Parent** | stores the graphics parent. | Type: graphics object handle scalar. Supported values: a figure handle. | 
| **PickableParts** | controls which visible parts can be picked. | Type: text scalar or character row vector. Supported values: 'visible', 'all', 'none'. | 
| **Position** | stores the chart position rectangle. | Type: numeric row vector. Supported values: four finite values [left bottom width height]. | 
| **PositionConstraint** | selects which position rectangle is preserved during layout. | Type: text scalar or character row vector. Supported values: 'outerposition', 'innerposition'. | 
| **ScatterPlotLocation** | sets the scatter plot location within the chart. | Type: text scalar or character row vector. Supported values: 'southwest', 'southeast', 'northwest', 'northeast'. | 
| **ScatterPlotProportion** | sets the scatter plot area proportion. | Type: finite numeric scalar. Supported values: values from 0 through 1. | 
| **Selected** | controls selection state. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **SelectionHighlight** | controls selection highlight display. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **SourceTable** | stores the table used to create the chart. | Type: table or empty value. Supported values: [] or a table supplied to scatterhistogram. | 
| **Tag** | stores user-defined text. | Type: text scalar or character row vector. Supported values: any character row vector or string scalar. | 
| **Title** | sets chart title text. | Type: text scalar or character row vector. Supported values: any character row vector or string scalar. | 
| **Type** | identifies the graphics object type. | Type: text scalar or character row vector. Supported values: 'scatterhistogram'. | 
| **Units** | sets units used by position properties. | Type: text scalar or character row vector. Supported values: 'normalized', 'pixels', 'inches', 'centimeters', 'points', 'characters'. | 
| **UserData** | stores user data attached to the chart. | Type: any Nelson value. Supported values: any value. | 
| **Visible** | controls chart visibility. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **XData** | stores scatter x data. | Type: numeric vector. Supported values: one value per data point. | 
| **XHistogramDirection** | sets x histogram direction. | Type: text scalar or character row vector. Supported values: 'up', 'down'. | 
| **XLabel** | sets the x-axis label text. | Type: text scalar or character row vector. Supported values: any character row vector or string scalar. | 
| **XLimits** | stores x-axis limits. | Type: numeric row vector. Supported values: two increasing finite values [min max]. | 
| **XVariable** | stores the table variable used for x data. | Type: text, numeric, or table selector value. Supported values: [] or a source-table variable selector. | 
| **YData** | stores scatter y data. | Type: numeric vector. Supported values: one value per data point. | 
| **YHistogramDirection** | sets y histogram direction. | Type: text scalar or character row vector. Supported values: 'left', 'right'. | 
| **YLabel** | sets the y-axis label text. | Type: text scalar or character row vector. Supported values: any character row vector or string scalar. | 
| **YLimits** | stores y-axis limits. | Type: numeric row vector. Supported values: two increasing finite values [min max]. | 
| **YVariable** | stores the table variable used for y data. | Type: text, numeric, or table selector value. Supported values: [] or a source-table variable selector. | 



## 💡 Example

Inspect scatterhistogram properties.

```matlab
h = scatterhistogram(1:6, [2 3 2 4 5 4]);
properties(h)
```


## 🔗 See also

[scatterhistogram](../../../graphics/1_plots/4_data_distribution_plots/scatterhistogram.md).