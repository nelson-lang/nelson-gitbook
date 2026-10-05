# compassplot properties

compassplot graphics object properties.

## 📄 Description


This page documents the visible properties returned by <b>properties</b> for a <b>compassplot</b> graphics object. 

| Property | Action | Type and supported values | 
| --- | --- | --- | 
| **AffectAutoLimits** | controls whether the object contributes to automatic axes limits. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **AlignVertexCenters** | updates line rendering alignment on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **Annotation** | updates annotation metadata used by graphics tools. | Type: graphics annotation object or empty handle value. Supported values: an annotation object associated with the graphics item, or an empty graphics handle. | 
| **BeingDeleted** | reports whether deletion is in progress. | Type: text scalar or character row vector. Supported values: 'off', 'on'. | 
| **BusyAction** | controls callback queuing while another callback runs. | Type: text scalar or character row vector. Supported values: 'queue', 'cancel'. | 
| **ButtonDownFcn** | runs when the object receives a mouse-button event. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **Children** | lists child graphics primitives owned by the object. | Type: graphics object handle vector. Supported values: empty vector. | 
| **Clipping** | controls clipping to the parent axes. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **Color** | sets the vector line color. | Type: color value. Supported values: short color names, RGB triplet with values in [0,1], or hexadecimal color. | 
| **ColorMode** | selects automatic or manual color selection. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **ContextMenu** | attaches the menu used for context-click actions. | Type: graphics object handle scalar. Supported values: [] or a uicontextmenu handle. | 
| **CreateFcn** | runs when the object is created. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **DataTipTemplate** | updates the data tip content shown by interactive data tips. | Type: data tip template object or empty value. Supported values: a data tip template object or an empty value. | 
| **DeleteFcn** | runs when the object is deleted. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **DisplayName** | stores the label used by legends and object identification. | Type: text value. Supported values: character row vector or string scalar. | 
| **HandleVisibility** | controls handle discovery through graphics queries. | Type: text scalar or character row vector. Supported values: 'on', 'off', 'callback'. | 
| **HitTest** | includes or excludes the object from mouse hit testing. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **Interruptible** | controls interruption of running callbacks. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **LineJoin** | sets the join style used for connected line segments. | Type: text scalar or character row vector. Supported values: 'miter', 'round', 'chamfer'. | 
| **LineStyle** | sets the vector line style. | Type: text scalar or character row vector. Supported values: '-', '--', ':', '-.', 'none'. | 
| **LineStyleMode** | selects automatic or manual line style selection. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **LineWidth** | sets vector line width. | Type: finite numeric scalar. Supported values: value greater than or equal to 0. | 
| **Marker** | sets the marker symbol. | Type: text scalar or character row vector. Supported values: marker symbols such as 'none', 'o', '+', '\*', '.', 'x', and other marker names. | 
| **MarkerEdgeColor** | sets marker edge color. | Type: color value or marker color keyword. Supported values: short color names, RGB triplet with values in [0,1], hexadecimal color, 'auto', 'none', or 'flat'. | 
| **MarkerFaceColor** | sets marker fill color. | Type: color value or marker color keyword. Supported values: short color names, RGB triplet with values in [0,1], hexadecimal color, 'auto', 'none', or 'flat'. | 
| **MarkerIndices** | selects data points that show markers. | Type: numeric vector. Supported values: positive integer indices or empty value. | 
| **MarkerMode** | selects automatic or manual marker selection. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **MarkerSize** | sets marker size. | Type: finite numeric scalar. Supported values: positive finite scalar values. | 
| **Parent** | stores the parent polar axes. | Type: graphics object handle scalar. Supported values: polaraxes handle. | 
| **PickableParts** | controls which visible parts can be picked. | Type: text scalar or character row vector. Supported values: 'visible', 'all', 'none'. | 
| **RData** | stores polar radius data. | Type: numeric vector. Supported values: finite real values with one element per vector. | 
| **RDataMode** | selects automatic or manual radius data. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **RDataSource** | stores the workspace variable name used to refresh radius data. | Type: text value. Supported values: empty text or a workspace variable name. | 
| **RVariable** | stores the table variable used for radius data. | Type: text value. Supported values: empty text or a source-table variable name. | 
| **Selected** | controls selection state. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **SelectionHighlight** | controls selection highlight display. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **SeriesIndex** | stores the color order series index. | Type: finite numeric scalar. Supported values: finite integer values. | 
| **SourceTable** | stores the table used to create the chart. | Type: table or empty array. Supported values: [] or a table supplied to compassplot. | 
| **Tag** | stores user-defined text for identifying the object. | Type: text value. Supported values: character row vector or string scalar. | 
| **ThetaData** | stores polar angle data in radians. | Type: numeric vector. Supported values: finite real values with one element per vector. | 
| **ThetaDataMode** | selects automatic or manual angle data. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **ThetaDataSource** | stores the workspace variable name used to refresh angle data. | Type: text value. Supported values: empty text or a workspace variable name. | 
| **ThetaVariable** | stores the table variable used for angle data. | Type: text value. Supported values: empty text or a source-table variable name. | 
| **Type** | identifies the graphics object type. | Type: text scalar or character row vector. Supported values: 'compassplot'. | 
| **UserData** | stores user data attached to the object. | Type: any Nelson value. Supported values: any value. | 
| **Visible** | controls object visibility. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **XData** | stores internal cartesian x-coordinate data. | Type: numeric vector. Supported values: [] or numeric data managed by the object. | 
| **XDataMode** | selects automatic or manual x-coordinate data. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **XDataSource** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **XVariable** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **YData** | stores internal cartesian y-coordinate data. | Type: numeric vector. Supported values: [] or numeric data managed by the object. | 
| **YDataMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **YDataSource** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **YVariable** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **ZData** | stores internal cartesian z-coordinate data. | Type: numeric vector. Supported values: [] or numeric data managed by the object. | 
| **ZDataMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **ZDataSource** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **ZVariable** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 



## 💡 Example

Inspect compassplot properties.

```matlab
h = compassplot([1 + 1i, 1 - 1i]);
props = properties(h)
```


## 🔗 See also

[compassplot](../../../graphics/1_plots/5_vector_fields/compassplot.md), [properties](../../../handle/properties.md).