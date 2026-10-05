# contour properties

contour graphics object properties.

## 📄 Description


This page documents the visible properties returned by <b>properties</b> for a <b>contour</b> graphics object. 

| Property | Action | Type and supported values | 
| --- | --- | --- | 
| **Annotation** | updates the annotation metadata used by interactive tools and object inspection. | Type: graphics annotation object or empty handle value. Supported values: an annotation object associated with the graphics item, or an empty graphics handle when no annotation is attached. | 
| **BeingDeleted** | Nelson computes this value; graphics operations update it. | Type: text scalar or character row vector. Supported values: 'off', 'on'. | 
| **BusyAction** | controls whether an interrupting callback is queued or canceled. | Type: text scalar or character row vector. Supported values: 'queue', 'cancel'. | 
| **ButtonDownFcn** | runs when the object receives a mouse-button event. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **Children** | parenting operations update the vector. | Type: graphics object handle vector. Supported values: empty vector or child handles. | 
| **Clipping** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **ContextMenu** | attaches the menu used for context-click actions. | Type: graphics object handle scalar. Supported values: [] or a uicontextmenu handle. | 
| **ContourMatrix** | updates rendered output on the next graphics refresh. | Type: finite numeric matrix. Supported values: [] or a matrix with one row per vertex, normal, point, or contour segment. | 
| **CreateFcn** | runs when the object is created. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **DataTipTemplate** | updates the content used for interactive data tips. | Type: data tip template object or empty handle value. Supported values: a data tip template object owned by the graphics item, or an empty graphics handle when data tips are not configured. | 
| **DeleteFcn** | runs when the object is deleted. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **DisplayName** | updates the label used by legend entries and object identification. | Type: text value. Supported values: character row vector or string scalar. | 
| **EdgeAlpha** | updates rendered output on the next graphics refresh. | Type: numeric scalar or numeric array. Supported values: values in [0,1]; data arrays must match the related rendered data. | 
| **EdgeColor** | updates rendered output on the next graphics refresh. | Type: color value or color mode keyword. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB', 'none', 'flat', 'interp'. | 
| **FaceAlpha** | updates rendered output on the next graphics refresh. | Type: numeric scalar or numeric array. Supported values: values in [0,1]; data arrays must match the related rendered data. | 
| **FaceColor** | updates rendered output on the next graphics refresh. | Type: color value or color mode keyword. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB', 'none', 'flat', 'interp'. | 
| **Fill** | updates rendered output on the next graphics refresh. | Type: on/off value. Supported values: 'on', 'off', true, or false. | 
| **Floating** | updates rendered output on the next graphics refresh. | Type: on/off value. Supported values: 'on', 'off', true, or false. | 
| **HandleVisibility** | controls whether handle-search functions can find the object. | Type: text scalar or character row vector. Supported values: 'on', 'off', 'callback'. | 
| **HitTest** | includes or excludes the object from mouse hit testing. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **Interruptible** | controls whether a running callback can be interrupted. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **LabelColor** | updates rendered output on the next graphics refresh. | Type: color value. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB'. | 
| **LabelFormat** | changes how numeric chart labels are formatted. | Type: text value. Supported values: character row vector or string scalar containing a numeric format, or empty text. | 
| **LabelSpacing** | changes spacing between chart labels and chart geometry. | Type: numeric scalar. Supported values: nonnegative finite scalar. | 
| **LevelList** | recomputes geometry, limits, or layout. | Type: finite numeric vector. Supported values: [] or a finite numeric vector, normally increasing. | 
| **LevelListMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **LevelStep** | recomputes geometry, limits, or layout. | Type: finite numeric scalar. Supported values: finite scalar value. | 
| **LevelStepMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **LineColor** | updates rendered output on the next graphics refresh. | Type: color value or color mode keyword. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB', 'none', 'flat', 'interp'. | 
| **LineStyle** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: '-', '--', ':', '-.', 'none'. | 
| **LineWidth** | updates rendered output on the next graphics refresh. | Type: finite numeric scalar. Supported values: value greater than or equal to 0. | 
| **Parent** | reparents the object and updates Children on the old and new parents. | Type: graphics object handle scalar. Supported values: a valid parent handle for the object class. | 
| **PickableParts** | selects which visible or invisible parts can receive mouse hits. | Type: text scalar or character row vector. Supported values: 'visible', 'all', 'none'. | 
| **Selected** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **SelectionHighlight** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **ShowText** | updates rendered output on the next graphics refresh. | Type: on/off value. Supported values: 'on', 'off', true, or false. | 
| **Tag** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or an object identifier. | 
| **TextList** | updates rendered output on the next graphics refresh. | Type: text scalar, string array, or cell array of text. Supported values: empty text or labels matching the related ticks, categories, variables, lines, or displayed values. | 
| **TextListMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **TextStep** | recomputes geometry, limits, or layout. | Type: finite numeric scalar. Supported values: finite scalar value. | 
| **TextStepMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **Type** | Nelson computes this value; graphics operations update it. | Type: text scalar or character row vector. Supported values: read-only object type name, for example 'figure', 'axes', 'line', or 'scatter'. | 
| **UserData** | updates the stored object state. | Type: Nelson array. Supported values: any Nelson value, including [], numeric arrays, text, cells, structures, or handles. | 
| **Visible** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **XData** | replaces data and recomputes automatic limits that depend on it. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: [] or data with dimensions compatible with the rendered object. | 
| **XDataMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **XDataSource** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **YData** | replaces data and recomputes automatic limits that depend on it. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: [] or data with dimensions compatible with the rendered object. | 
| **YDataMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **YDataSource** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **ZData** | replaces data and recomputes automatic limits that depend on it. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: [] or data with dimensions compatible with the rendered object. | 
| **ZDataSource** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **ZLocation** | recomputes geometry, limits, or layout. | Type: text scalar or character row vector. Supported values: 'north', 'south', 'east', 'west', 'northoutside', 'southoutside', 'eastoutside', 'westoutside', 'best', 'none', 'layout', 'manual'. | 



## 💡 Example

Create the graphics object and list its properties.

```matlab
f = figure('Visible', 'off');
ax = axes('Parent', f);
[~, h] = contour(ax, peaks(8));
names = properties(h);
close(f)
```


## 🔗 See also

[contour](../../../graphics/1_plots/3_contour_plots/contour.md), [contourf](../../../graphics/1_plots/3_contour_plots/contourf.md), [contour3](../../../graphics/1_plots/3_contour_plots/contour3.md), [properties](../../../handle/properties.md), [get](../../../handle/get.md), [set](../../../handle/set.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| --   | Property page added. |

<!--
## 👤 Author

Allan CORNET
-->
