# bubblechart properties

bubblechart graphics object properties.

## 📄 Description


This page documents the visible properties returned by properties for a bubblechart graphics object. 

| Property | Action | Type and supported values | 
| --- | --- | --- | 
| **AlphaData** | replaces data and recomputes automatic limits that depend on it. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: [] or data with dimensions compatible with the rendered object. | 
| **AlphaDataMapping** | replaces data and recomputes automatic limits that depend on it. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: [] or data with dimensions compatible with the rendered object. | 
| **AlphaDataMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **AlphaVariable** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **Annotation** | updates the annotation metadata used by interactive tools and object inspection. | Type: graphics annotation object or empty handle value. Supported values: an annotation object associated with the graphics item, or an empty graphics handle when no annotation is attached. | 
| **BeingDeleted** | Nelson computes this value; graphics operations update it. | Type: text scalar or character row vector. Supported values: 'off', 'on'. | 
| **BusyAction** | controls whether an interrupting callback is queued or canceled. | Type: text scalar or character row vector. Supported values: 'queue', 'cancel'. | 
| **ButtonDownFcn** | runs when the object receives a mouse-button event. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **CData** | replaces data and recomputes automatic limits that depend on it. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: [] or data with dimensions compatible with the rendered object. | 
| **CDataMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **CDataSource** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **Children** | parenting operations update the vector. | Type: graphics object handle vector. Supported values: empty vector or child handles. | 
| **Clipping** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **ColorVariable** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **ContextMenu** | attaches the menu used for context-click actions. | Type: graphics object handle scalar. Supported values: [] or a uicontextmenu handle. | 
| **CreateFcn** | runs when the object is created. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **DataTipTemplate** | updates the content used for interactive data tips. | Type: data tip template object or empty handle value. Supported values: a data tip template object owned by the graphics item, or an empty graphics handle when data tips are not configured. | 
| **DeleteFcn** | runs when the object is deleted. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **DisplayName** | updates the label used by legend entries and object identification. | Type: text value. Supported values: character row vector or string scalar. | 
| **HandleVisibility** | controls whether handle-search functions can find the object. | Type: text scalar or character row vector. Supported values: 'on', 'off', 'callback'. | 
| **HitTest** | includes or excludes the object from mouse hit testing. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **Interruptible** | controls whether a running callback can be interrupted. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **LineWidth** | updates rendered output on the next graphics refresh. | Type: finite numeric scalar. Supported values: value greater than or equal to 0. | 
| **MarkerEdgeAlpha** | updates rendered output on the next graphics refresh. | Type: numeric scalar or numeric array. Supported values: values in [0,1]; data arrays must match the related rendered data. | 
| **MarkerEdgeColor** | updates rendered output on the next graphics refresh. | Type: color value or marker color keyword. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB', 'auto', 'none', 'flat'. | 
| **MarkerFaceAlpha** | updates rendered output on the next graphics refresh. | Type: numeric scalar or numeric array. Supported values: values in [0,1]; data arrays must match the related rendered data. | 
| **MarkerFaceColor** | updates rendered output on the next graphics refresh. | Type: color value or marker color keyword. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB', 'auto', 'none', 'flat'. | 
| **Parent** | reparents the object and updates Children on the old and new parents. | Type: graphics object handle scalar. Supported values: a valid parent handle for the object class. | 
| **PickableParts** | selects which visible or invisible parts can receive mouse hits. | Type: text scalar or character row vector. Supported values: 'visible', 'all', 'none'. | 
| **RData** | replaces polar radius data used by polar bubble charts. | Type: numeric vector or matrix. Supported values: [] or radius data with dimensions compatible with ThetaData and SizeData. | 
| **RDataMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **RDataSource** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **RJitter** | recomputes polar radius jitter for displayed points. | Type: text scalar or character row vector. Supported values: 'none', 'rand', 'randn', 'density'. | 
| **RJitterDirection** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'both', 'positive', 'negative'. | 
| **RJitterWidth** | recomputes polar radius jitter for displayed points. | Type: finite numeric scalar. Supported values: value greater than or equal to 0. | 
| **RVariable** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **Selected** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **SelectionHighlight** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **SeriesIndex** | updates the stored object state. | Type: integer scalar or numeric vector. Supported values: finite integer value, finite numeric value, or vector required by the property. | 
| **SizeData** | updates marker sizes on the next graphics refresh. | Type: finite numeric scalar or vector. Supported values: positive scalar value or vector of positive values matching the rendered points. | 
| **SizeDataMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **SizeDataSource** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **SizeVariable** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **SourceTable** | updates the stored object state. | Type: table or empty array. Supported values: [] or a table used by variable-name properties. | 
| **Tag** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or an object identifier. | 
| **ThetaData** | replaces polar angle data used by polar bubble charts. | Type: numeric vector or matrix. Supported values: [] or angle data with dimensions compatible with RData and SizeData. | 
| **ThetaDataMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **ThetaDataSource** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **ThetaJitter** | recomputes polar angle jitter for displayed points. | Type: text scalar or character row vector. Supported values: 'none', 'rand', 'randn', 'density'. | 
| **ThetaJitterDirection** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'both', 'positive', 'negative'. | 
| **ThetaJitterWidth** | recomputes polar angle jitter for displayed points. | Type: finite numeric scalar. Supported values: value greater than or equal to 0. | 
| **ThetaVariable** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **Type** | Nelson computes this value; graphics operations update it. | Type: text scalar or character row vector. Supported values: read-only object type name, for example 'figure', 'axes', 'line', or 'scatter'. | 
| **UserData** | updates the stored object state. | Type: Nelson array. Supported values: any Nelson value, including [], numeric arrays, text, cells, structures, or handles. | 
| **Visible** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **XData** | replaces data and recomputes automatic limits that depend on it. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: [] or data with dimensions compatible with the rendered object. | 
| **XDataMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **XDataSource** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **XJitter** | recomputes geometry, limits, or layout. | Type: text scalar or character row vector. Supported values: 'none', 'rand', 'randn', 'density'. | 
| **XJitterDirection** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'both', 'positive', 'negative'. | 
| **XJitterWidth** | recomputes geometry, limits, or layout. | Type: finite numeric scalar. Supported values: value greater than or equal to 0. | 
| **XJitterWidthMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **XVariable** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **YData** | replaces data and recomputes automatic limits that depend on it. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: [] or data with dimensions compatible with the rendered object. | 
| **YDataMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **YDataSource** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **YJitter** | recomputes geometry, limits, or layout. | Type: text scalar or character row vector. Supported values: 'none', 'rand', 'randn', 'density'. | 
| **YJitterDirection** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'both', 'positive', 'negative'. | 
| **YJitterWidth** | recomputes geometry, limits, or layout. | Type: finite numeric scalar. Supported values: value greater than or equal to 0. | 
| **YJitterWidthMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **YVariable** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **ZData** | replaces data and recomputes automatic limits that depend on it. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: [] or data with dimensions compatible with the rendered object. | 
| **ZDataMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **ZDataSource** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **ZJitter** | recomputes geometry, limits, or layout. | Type: text scalar or character row vector. Supported values: 'none', 'rand', 'randn', 'density'. | 
| **ZJitterDirection** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'both', 'positive', 'negative'. | 
| **ZJitterWidth** | recomputes geometry, limits, or layout. | Type: finite numeric scalar. Supported values: value greater than or equal to 0. | 
| **ZJitterWidthMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **ZVariable** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 



## 💡 Example

Create the graphics object and list its properties.

```matlab
f = figure('Visible', 'off');
ax = axes('Parent', f);
h = bubblechart(ax, 1:3, [2 4 3], [10 30 20]);
names = properties(h);
close(f)
```


## 🔗 See also

[bubblechart](../../../graphics/1_plots/4_data_distribution_plots/bubblechart.md), [bubblechart3](../../../graphics/1_plots/4_data_distribution_plots/bubblechart3.md), [properties](../../../handle/properties.md), [get](../../../handle/get.md), [set](../../../handle/set.md).