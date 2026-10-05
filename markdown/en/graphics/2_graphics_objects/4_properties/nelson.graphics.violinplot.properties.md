# violinplot properties

violinplot graphics object properties.

## 📄 Description


This page documents the visible properties returned by <b>properties</b> for a <b>violinplot</b> graphics object. 

| Property | Action | Type and supported values | 
| --- | --- | --- | 
| **Annotation** | updates the annotation metadata used by interactive tools and object inspection. | Type: graphics annotation object or empty handle value. Supported values: an annotation object associated with the graphics item, or an empty graphics handle when no annotation is attached. | 
| **BeingDeleted** | Nelson computes this value; graphics operations update it. | Type: text scalar or character row vector. Supported values: 'off', 'on'. | 
| **BusyAction** | controls whether an interrupting callback is queued or canceled. | Type: text scalar or character row vector. Supported values: 'queue', 'cancel'. | 
| **ButtonDownFcn** | runs when the object receives a mouse-button event. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **Children** | parenting operations update the vector. | Type: graphics object handle vector. Supported values: empty vector. | 
| **Clipping** | updates clipping during the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **ColorGroupLayout** | controls how color groups share the available group width. | Type: text scalar or character row vector. Supported values: 'grouped', 'overlaid'. | 
| **ColorGroupWidth** | sets the normalized width used for color groups. | Type: numeric scalar. Supported values: values in [0,1]. | 
| **ColorGroupWidthMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **ContextMenu** | attaches the menu used for context-click actions. | Type: graphics object handle scalar. Supported values: [] or a uicontextmenu handle. | 
| **CreateFcn** | runs when the object is created. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **DataTipTemplate** | updates the content used for interactive data tips. | Type: data tip template object or empty handle value. Supported values: a data tip template object owned by the graphics item, or an empty graphics handle when data tips are not configured. | 
| **DeleteFcn** | runs when the object is deleted. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **DensityDirection** | selects which side of the group position displays the density shape. | Type: text scalar or character row vector. Supported values: 'both', 'positive', 'negative'. | 
| **DensityScale** | selects the density normalization rule. | Type: text scalar or character row vector. Supported values: 'area', 'count', 'width'. | 
| **DensityValues** | density of each violin at **EvaluationPoints**, one column per violin. Setting it switches **DensityValuesMode** to 'manual'; the values are then drawn as given. | Type: real floating-point matrix. Supported values: same size as **EvaluationPoints**. | 
| **DensityValuesMode** | 'auto' computes **DensityValues** from the sample data; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **DensityWidth** | sets the maximum violin width in data units. | Type: finite numeric scalar. Supported values: positive finite scalar value. | 
| **DensityWidthMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **DisplayName** | updates the label used by legend entries and object identification. | Type: text value. Supported values: character row vector or string scalar. | 
| **EdgeColor** | sets the outline and median marker color. | Type: color value or color mode keyword. Supported values: short color names, RGB triplet with values in [0,1], hexadecimal color, 'none', 'flat', or 'interp'. | 
| **EdgeColorMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **EvaluationPoints** | values where the kernel density is evaluated, one column per violin. By default, 100 points from min(y) - 3h to max(y) + 3h (h: bandwidth). Setting it switches **EvaluationPointsMode** to 'manual'. | Type: real floating-point matrix. Supported values: finite values; a row vector is stored as a column. | 
| **EvaluationPointsMode** | 'auto' computes **EvaluationPoints** from the sample data; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **FaceAlpha** | sets transparency of the filled violin body. | Type: numeric scalar. Supported values: values in [0,1]. | 
| **FaceColor** | sets the filled violin body color. | Type: color value or color mode keyword. Supported values: short color names, RGB triplet with values in [0,1], hexadecimal color, 'none', 'flat', or 'interp'. | 
| **FaceColorMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **HandleVisibility** | controls whether handle-search functions can find the object. | Type: text scalar or character row vector. Supported values: 'on', 'off', 'callback'. | 
| **HitTest** | includes or excludes the object from mouse hit testing. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **Interruptible** | controls whether a running callback can be interrupted. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **LineStyle** | sets the outline and median marker line style. | Type: text scalar or character row vector. Supported values: '-', '--', ':', '-.', or 'none'. | 
| **LineWidth** | sets the outline and median marker line width. | Type: finite numeric scalar. Supported values: positive finite scalar value. | 
| **Orientation** | chooses whether values are displayed vertically or horizontally. | Type: text scalar or character row vector. Supported values: 'vertical', 'horizontal'. | 
| **Parent** | sets the axes that owns the object. | Type: graphics object handle scalar. Supported values: axes or hggroup handle. | 
| **PickableParts** | controls whether visible or all object parts can be picked. | Type: text scalar or character row vector. Supported values: 'visible', 'all', 'none'. | 
| **Selected** | marks the object as selected or not selected. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **SelectionHighlight** | controls display of selection handles. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **SeriesIndex** | stores the color-order series index. | Type: positive numeric scalar. Supported values: positive finite scalar value. | 
| **SourceTable** | stores the table used to create the chart. | Type: table or empty value. Supported values: [] or a table supplied to violinplot. | 
| **Tag** | stores user-defined text for identifying the object. | Type: text value. Supported values: character row vector or string scalar. | 
| **Type** | identifies the graphics object type. | Type: text scalar or character row vector. Supported values: 'violinplot'. | 
| **UserData** | stores user-defined data on the object. | Type: any Nelson value. Supported values: any value. | 
| **Visible** | shows or hides the object. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **XData** | sets group positions used to place violins. | Type: real numeric vector. Supported values: finite numeric values; nonfinite values are ignored for drawing. | 
| **XDataMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **XVariable** | stores the table variable name used for x data. | Type: text value. Supported values: character row vector or string scalar. | 
| **YData** | sets values used to compute the distribution. | Type: real numeric vector. Supported values: finite numeric values; nonfinite values are ignored for drawing. | 
| **YDataMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **YVariable** | stores the table variable name used for y data. | Type: text value. Supported values: character row vector or string scalar. | 



## 💡 Example

Inspect violinplot properties.

```matlab
h = violinplot([1 2 2 3]);
props = properties(h)
```


## 🔗 See also

[violinplot](../../../graphics/1_plots/4_data_distribution_plots/violinplot.md), [properties](../../../handle/properties.md).