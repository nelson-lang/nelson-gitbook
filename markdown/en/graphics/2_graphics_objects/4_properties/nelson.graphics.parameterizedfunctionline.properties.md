# parameterizedfunctionline properties

parameterizedfunctionline graphics object properties.

## 📄 Description


This page documents the visible properties returned by <b>properties</b> for a <b>parameterizedfunctionline</b> graphics object. 

| Property | Action | Type and supported values | 
| --- | --- | --- | 
| **AffectAutoLimits** | updates automatic axes limits. | Type: finite numeric vector. Supported values: two finite values [min max]. | 
| **AlignVertexCenters** | updates rendered output on refresh. | Type: on/off value. Supported values: 'on', 'off', true, or false. | 
| **Annotation** | updates annotation metadata. | Type: graphics annotation object. Supported values: annotation handle or empty handle. | 
| **BeingDeleted** | reports object deletion state. | Type: text scalar. Supported values: 'off' or 'on'. | 
| **BusyAction** | controls callback queuing. | Type: text scalar. Supported values: 'queue' or 'cancel'. | 
| **ButtonDownFcn** | runs on mouse-button events. | Type: callback value. Supported values: [], function handle, text, or callback cell array. | 
| **Children** | updates with object parenting. | Type: graphics handle vector. Supported values: empty vector or child handles. | 
| **Clipping** | controls clipping to axes limits. | Type: text scalar. Supported values: 'on' or 'off'. | 
| **Color** | changes line color. | Type: color value. Supported values: color names, short color names, RGB triplet, hexadecimal color, or 'none'. | 
| **ColorMode** | selects automatic or manual color. | Type: text scalar. Supported values: 'auto' or 'manual'. | 
| **ContextMenu** | attaches a context menu. | Type: graphics handle scalar. Supported values: [] or uicontextmenu handle. | 
| **CreateFcn** | runs when the object is created. | Type: callback value. Supported values: [], function handle, text, or callback cell array. | 
| **DataTipTemplate** | updates the data tip content shown by interactive data tips. | Type: data tip template object or empty value. Supported values: a data tip template object or an empty value. | 
| **DeleteFcn** | runs when the object is deleted. | Type: callback value. Supported values: [], function handle, text, or callback cell array. | 
| **DisplayName** | sets the legend label. | Type: text value. Supported values: character row vector or string scalar. | 
| **HandleVisibility** | controls handle discovery. | Type: text scalar. Supported values: 'on', 'off', or 'callback'. | 
| **HitTest** | controls mouse hit testing. | Type: text scalar. Supported values: 'on' or 'off'. | 
| **Interruptible** | controls callback interruption. | Type: text scalar. Supported values: 'on' or 'off'. | 
| **LineJoin** | changes joins between segments. | Type: text scalar. Supported values: 'miter', 'round', or 'chamfer'. | 
| **LineStyle** | changes line style. | Type: text scalar. Supported values: '-', '--', ':', '-.', or 'none'. | 
| **LineStyleMode** | selects automatic or manual style. | Type: text scalar. Supported values: 'auto' or 'manual'. | 
| **LineWidth** | changes line width. | Type: finite numeric scalar. Supported values: values greater than or equal to 0. | 
| **Marker** | changes marker symbol. | Type: text scalar. Supported values: marker names, marker characters, or 'none'. | 
| **MarkerEdgeColor** | changes marker edge color. | Type: color value. Supported values: color values, 'auto', 'none', or 'flat'. | 
| **MarkerFaceColor** | changes marker face color. | Type: color value. Supported values: color values, 'auto', 'none', or 'flat'. | 
| **MarkerIndices** | selects marked data points. | Type: positive integer vector. Supported values: indices into plotted data or empty value. | 
| **MarkerMode** | selects automatic or manual markers. | Type: text scalar. Supported values: 'auto' or 'manual'. | 
| **MarkerSize** | changes marker size. | Type: finite numeric scalar. Supported values: finite scalar value. | 
| **MeshDensity** | controls function sampling density. | Type: positive integer scalar. Supported values: integer greater than 1. | 
| **Parent** | reparents the object. | Type: graphics handle scalar. Supported values: axes or hggroup handle. | 
| **PickableParts** | selects parts that receive mouse hits. | Type: text scalar. Supported values: 'visible', 'all', or 'none'. | 
| **RData** | updates polar radius data. | Type: numeric vector. Supported values: [] or finite/infinite numeric data. | 
| **RDataMode** | selects automatic or manual radius data. | Type: text scalar. Supported values: 'auto' or 'manual'. | 
| **RDataSource** | stores radius data source text. | Type: text value. Supported values: empty text or variable name. | 
| **RVariable** | stores radius variable text. | Type: text value. Supported values: empty text or variable name. | 
| **Selected** | changes selection state. | Type: text scalar. Supported values: 'on' or 'off'. | 
| **SelectionHighlight** | controls selection highlighting. | Type: text scalar. Supported values: 'on' or 'off'. | 
| **SeriesIndex** | stores series ordering. | Type: integer scalar. Supported values: finite integer value. | 
| **SourceTable** | binds the object data to a table; the variable properties select columns. | Type: table. Supported values: empty table or a table providing bound variables. | 
| **TRange** | sets the parameter sampling interval. | Type: two-element numeric row vector. Supported values: increasing finite interval [tmin tmax]. | 
| **TRangeMode** | selects automatic or manual parameter range. | Type: text scalar. Supported values: 'auto' or 'manual'. | 
| **Tag** | stores an object identifier. | Type: text value. Supported values: empty text or identifier text. | 
| **ThetaData** | updates polar angle data. | Type: numeric vector. Supported values: [] or finite/infinite numeric data. | 
| **ThetaDataMode** | selects automatic or manual angle data. | Type: text scalar. Supported values: 'auto' or 'manual'. | 
| **ThetaDataSource** | stores angle data source text. | Type: text value. Supported values: empty text or variable name. | 
| **ThetaVariable** | stores angle variable text. | Type: text value. Supported values: empty text or variable name. | 
| **Type** | reports the object type. | Type: read-only text. Supported values: 'parameterizedfunctionline'. | 
| **UserData** | stores user data. | Type: Nelson array. Supported values: any Nelson value. | 
| **Visible** | controls object visibility. | Type: text scalar. Supported values: 'on' or 'off'. | 
| **XData** | stores sampled x data. | Type: numeric vector. Supported values: [] or numeric row/column vector. | 
| **XDataMode** | selects automatic or manual x data. | Type: text scalar. Supported values: 'auto' or 'manual'. | 
| **XDataSource** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **XFunction** | stores the function sampled for x data. | Type: function value. Supported values: function handle or empty value. | 
| **XVariable** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **YData** | stores sampled y data. | Type: numeric vector. Supported values: [] or numeric row/column vector. | 
| **YDataMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **YDataSource** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **YFunction** | stores the function sampled for y data. | Type: function value. Supported values: function handle or empty value. | 
| **YVariable** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **ZData** | stores sampled z data. | Type: numeric vector. Supported values: [] or numeric row/column vector. | 
| **ZDataMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **ZDataSource** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **ZFunction** | stores the function sampled for z data. | Type: function value. Supported values: function handle or empty value. | 
| **ZVariable** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 



## 💡 Example

Inspect parameterizedfunctionline properties.

```matlab
h = fplot(@cos, @sin); properties(h)
```


## 🔗 See also

[fplot](../../../graphics/1_plots/1_line_plots/fplot.md), [fplot3](../../../graphics/1_plots/1_line_plots/fplot3.md), [functionline properties](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.functionline.properties.md).