# stackedplot properties

stackedplot graphics object properties.

## 📄 Description


This page documents the visible properties returned by <b>properties</b> for a <b>stackedplot</b> graphics object. 

| Property | Action | Type and supported values | 
| --- | --- | --- | 
| **AxesProperties** | updates rendered output on the next graphics refresh. | Type: structure array. Supported values: [] or structure fields for composed axes or lines, such as limits, scale, labels, color, line style, line width, marker, and marker size. | 
| **BeingDeleted** | Nelson computes this value; graphics operations update it. | Type: text scalar or character row vector. Supported values: 'off', 'on'. | 
| **BusyAction** | controls whether an interrupting callback is queued or canceled. | Type: text scalar or character row vector. Supported values: 'queue', 'cancel'. | 
| **Children** | parenting operations update the vector. | Type: graphics object handle vector. Supported values: empty vector or child handles. | 
| **Color** | updates rendered output on the next graphics refresh. | Type: color value. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB'. | 
| **CombineMatchingNames** | updates rendered output on the next graphics refresh. | Type: text scalar, string array, or cell array of text. Supported values: empty text or labels matching the related ticks, categories, variables, lines, or displayed values. | 
| **CreateFcn** | runs when the object is created. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **DeleteFcn** | runs when the object is deleted. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **DisplayLabels** | updates rendered output on the next graphics refresh. | Type: text scalar, string array, or cell array of text. Supported values: empty text or labels matching the related ticks, categories, variables, lines, or displayed values. | 
| **DisplayVariables** | changes which variables are displayed by the chart. | Type: variable name list. Supported values: string array, cell array of character row vectors, numeric indices, logical vector, or empty value. | 
| **EventsVisible** | updates rendered output on the next graphics refresh. | Type: on/off value. Supported values: 'on', 'off', true, or false. | 
| **FontName** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: a system font name or 'FixedWidth'. | 
| **FontSize** | recomputes geometry, limits, or layout. | Type: finite numeric scalar. Supported values: finite scalar value. | 
| **GridVisible** | updates rendered output on the next graphics refresh. | Type: on/off value. Supported values: 'on', 'off', true, or false. | 
| **Interruptible** | controls whether a running callback can be interrupted. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **LegendLabels** | updates rendered output on the next graphics refresh. | Type: text scalar, string array, or cell array of text. Supported values: empty text or labels matching the related ticks, categories, variables, lines, or displayed values. | 
| **LegendOrientation** | recomputes geometry, limits, or layout. | Type: text scalar or character row vector. Supported values: 'vertical', 'horizontal'. | 
| **LegendVisible** | updates rendered output on the next graphics refresh. | Type: on/off value. Supported values: 'on', 'off', true, or false. | 
| **LineProperties** | updates rendered output on the next graphics refresh. | Type: structure array. Supported values: [] or structure fields for composed axes or lines, such as limits, scale, labels, color, line style, line width, marker, and marker size. | 
| **LineStyle** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: '-', '--', ':', '-.', 'none'. | 
| **LineWidth** | updates rendered output on the next graphics refresh. | Type: finite numeric scalar. Supported values: value greater than or equal to 0. | 
| **Marker** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'o', '+', '\*', '.', 'x', '\_', '\|', 'square', 'diamond', '^', 'v', '>', '<', 'pentagram', 'hexagram', 'none'. | 
| **MarkerEdgeColor** | updates rendered output on the next graphics refresh. | Type: color value or marker color keyword. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB', 'auto', 'none', 'flat'. | 
| **MarkerFaceColor** | updates rendered output on the next graphics refresh. | Type: color value or marker color keyword. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB', 'auto', 'none', 'flat'. | 
| **MarkerSize** | recomputes geometry, limits, or layout. | Type: finite numeric scalar. Supported values: finite scalar value. | 
| **Parent** | reparents the object and updates Children on the old and new parents. | Type: graphics object handle scalar. Supported values: a valid parent handle for the object class. | 
| **SourceTable** | updates the stored object state. | Type: table or empty array. Supported values: [] or a table used by variable-name properties. | 
| **Tag** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or an object identifier. | 
| **Title** | updates the displayed title or the title object associated with the graphics item. | Type: text graphics object or text value, depending on the object class. Supported values: a title text object, character row vector, string scalar, or empty text. | 
| **Type** | Nelson computes this value; graphics operations update it. | Type: text scalar or character row vector. Supported values: read-only object type name, for example 'figure', 'axes', 'line', or 'scatter'. | 
| **UserData** | updates the stored object state. | Type: Nelson array. Supported values: any Nelson value, including [], numeric arrays, text, cells, structures, or handles. | 
| **Visible** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **XData** | replaces data and recomputes automatic limits that depend on it. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: [] or data with dimensions compatible with the rendered object. | 
| **XLabel** | updates the x-axis label object and refreshes axis decoration. | Type: text graphics object. Supported values: a text object used as the x-axis label. | 
| **XLimits** | recomputes geometry, limits, or layout. | Type: finite numeric vector. Supported values: two finite increasing values [min max]. | 
| **XVariable** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **YData** | replaces data and recomputes automatic limits that depend on it. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: [] or data with dimensions compatible with the rendered object. | 
| **HandleVisibility** | controls whether handle-search functions can find the object. | Type: text scalar or character row vector. Supported values: 'on', 'off', 'callback'. | 
| **InnerPosition** | recomputes geometry, limits, or layout. | Type: finite numeric vector. Supported values: finite vector with the documented size, such as [left bottom width height], [x y z], [azimuth elevation], or [minor major]. | 
| **Layout** | updates the object placement requested from the parent layout manager. | Type: layout options object or empty value. Supported values: layout information stored by parent layout managers, including tile placement data where the object supports tiled layouts. | 
| **OuterPosition** | recomputes geometry, limits, or layout. | Type: finite numeric vector. Supported values: finite vector with the documented size, such as [left bottom width height], [x y z], [azimuth elevation], or [minor major]. | 
| **Position** | recomputes geometry, limits, or layout. | Type: finite numeric vector. Supported values: finite vector with the documented size, such as [left bottom width height], [x y z], [azimuth elevation], or [minor major]. | 
| **PositionConstraint** | recomputes geometry, limits, or layout. | Type: finite numeric vector. Supported values: finite vector with the documented size, such as [left bottom width height], [x y z], [azimuth elevation], or [minor major]. | 
| **Units** | recomputes geometry, limits, or layout. | Type: text scalar or character row vector. Supported values: 'pixels', 'normalized', 'inches', 'centimeters', 'points', 'characters', 'data'. | 



## 💡 Example

Create the graphics object and list its properties.

```matlab
f = figure('Visible', 'off');
h = stackedplot(f, (1:5)', [(1:5)' (2:6)']);
names = properties(h);
close(f)
```


## 🔗 See also

[stackedplot](../../../graphics/1_plots/4_data_distribution_plots/stackedplot.md), [properties](../../../handle/properties.md), [get](../../../handle/get.md), [set](../../../handle/set.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| --   | Property page added. |

<!--
## 👤 Author

Allan CORNET
-->
