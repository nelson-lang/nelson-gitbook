# line properties

line graphics object properties.

## 📄 Description


This page documents the visible properties returned by <b>properties</b> for a <b>line</b> graphics object. 

| Property | Action | Type and supported values | 
| --- | --- | --- | 
| **AffectAutoLimits** | recomputes geometry, limits, or layout. | Type: finite numeric vector. Supported values: two finite increasing values [min max]. | 
| **AlignVertexCenters** | updates rendered output on the next graphics refresh. | Type: on/off value. Supported values: 'on', 'off', true, or false. | 
| **Annotation** | updates the annotation metadata used by interactive tools and object inspection. | Type: graphics annotation object or empty handle value. Supported values: an annotation object associated with the graphics item, or an empty graphics handle when no annotation is attached. | 
| **BeingDeleted** | Nelson computes this value; graphics operations update it. | Type: text scalar or character row vector. Supported values: 'off', 'on'. | 
| **BusyAction** | controls whether an interrupting callback is queued or canceled. | Type: text scalar or character row vector. Supported values: 'queue', 'cancel'. | 
| **ButtonDownFcn** | runs when the object receives a mouse-button event. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **Children** | parenting operations update the vector. | Type: graphics object handle vector. Supported values: empty vector or child handles. | 
| **Clipping** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **Color** | updates rendered output on the next graphics refresh. | Type: color value. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB'. | 
| **ColorMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **ContextMenu** | attaches the menu used for context-click actions. | Type: graphics object handle scalar. Supported values: [] or a uicontextmenu handle. | 
| **CreateFcn** | runs when the object is created. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **DataTipTemplate** | updates the data tip content shown by interactive data tips. | Type: data tip template object or empty value. Supported values: a data tip template object or an empty value. | 
| **DeleteFcn** | runs when the object is deleted. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **DisplayName** | updates the label used by legend entries and object identification. | Type: text value. Supported values: character row vector or string scalar. | 
| **HandleVisibility** | controls whether handle-search functions can find the object. | Type: text scalar or character row vector. Supported values: 'on', 'off', 'callback'. | 
| **HitTest** | includes or excludes the object from mouse hit testing. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **Interruptible** | controls whether a running callback can be interrupted. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **LineJoin** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'miter', 'round', 'chamfer'. | 
| **LineStyle** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: '-', '--', ':', '-.', 'none'. | 
| **LineStyleMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **LineWidth** | updates rendered output on the next graphics refresh. | Type: finite numeric scalar. Supported values: value greater than or equal to 0. | 
| **Marker** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'o', '+', '\*', '.', 'x', '\_', '\|', 'square', 'diamond', '^', 'v', '>', '<', 'pentagram', 'hexagram', 'none'. | 
| **MarkerEdgeColor** | updates rendered output on the next graphics refresh. | Type: color value or marker color keyword. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB', 'auto', 'none', 'flat'. | 
| **MarkerFaceColor** | updates rendered output on the next graphics refresh. | Type: color value or marker color keyword. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB', 'auto', 'none', 'flat'. | 
| **MarkerIndices** | changes which data points display marker symbols. | Type: positive integer vector. Supported values: indices into plotted data points, or empty value for no markers. | 
| **MarkerMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **MarkerSize** | recomputes geometry, limits, or layout. | Type: finite numeric scalar. Supported values: finite scalar value. | 
| **Parent** | reparents the object and updates Children on the old and new parents. | Type: graphics object handle scalar. Supported values: a valid parent handle for the object class. | 
| **PickableParts** | selects which visible or invisible parts can receive mouse hits. | Type: text scalar or character row vector. Supported values: 'visible', 'all', 'none'. | 
| **RData** | replaces data and recomputes automatic limits that depend on it. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: [] or data with dimensions compatible with the rendered object. | 
| **RDataMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **RDataSource** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **RVariable** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **Selected** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **SelectionHighlight** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **SeriesIndex** | updates the stored object state. | Type: integer scalar or numeric vector. Supported values: finite integer value, finite numeric value, or vector required by the property. | 
| **SourceTable** | binds the object data to a table; the variable properties select columns. | Type: table. Supported values: empty table or a table providing bound variables. | 
| **Tag** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or an object identifier. | 
| **ThetaData** | replaces data and recomputes automatic limits that depend on it. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: [] or data with dimensions compatible with the rendered object. | 
| **ThetaDataMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **ThetaDataSource** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **ThetaVariable** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **Type** | Nelson computes this value; graphics operations update it. | Type: text scalar or character row vector. Supported values: read-only object type name, for example 'figure', 'axes', 'line', or 'scatter'. | 
| **UserData** | updates the stored object state. | Type: Nelson array. Supported values: any Nelson value, including [], numeric arrays, text, cells, structures, or handles. | 
| **Visible** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **XData** | replaces data and recomputes automatic limits that depend on it. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: [] or data with dimensions compatible with the rendered object. | 
| **XDataMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **XDataSource** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **XVariable** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **YData** | replaces data and recomputes automatic limits that depend on it. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: [] or data with dimensions compatible with the rendered object. | 
| **YDataMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **YDataSource** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **YVariable** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **ZData** | replaces data and recomputes automatic limits that depend on it. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: [] or data with dimensions compatible with the rendered object. | 
| **ZDataMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **ZDataSource** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **ZVariable** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 



## 💡 Example

Create the graphics object and list its properties.

```matlab
f = figure('Visible', 'off');
ax = axes('Parent', f);
h = line('Parent', ax, 'XData', 1:3, 'YData', [1 3 2]);
names = properties(h);
close(f)
```


## 🔗 See also

[line](../../../graphics/1_plots/1_line_plots/line.md), [plot](../../../graphics/1_plots/1_line_plots/plot.md), [plot3](../../../graphics/1_plots/1_line_plots/plot3.md), [properties](../../../handle/properties.md), [get](../../../handle/get.md), [set](../../../handle/set.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| --   | Property page added. |

<!--
## 👤 Author

Allan CORNET
-->
