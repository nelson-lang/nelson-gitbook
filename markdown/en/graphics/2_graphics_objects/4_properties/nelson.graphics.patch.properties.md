# patch properties

patch graphics object properties.

## 📄 Description


This page documents the visible properties returned by <b>properties</b> for a <b>patch</b> graphics object. 

| Property | Action | Type and supported values | 
| --- | --- | --- | 
| **AlignVertexCenters** | updates rendered output on the next graphics refresh. | Type: on/off value. Supported values: 'on', 'off', true, or false. | 
| **AlphaDataMapping** | replaces data and recomputes automatic limits that depend on it. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: [] or data with dimensions compatible with the rendered object. | 
| **AmbientStrength** | changes the ambient light contribution used for rendered faces. | Type: numeric scalar. Supported values: finite scalar from 0 through 1. | 
| **Annotation** | updates the annotation metadata used by interactive tools and object inspection. | Type: graphics annotation object or empty handle value. Supported values: an annotation object associated with the graphics item, or an empty graphics handle when no annotation is attached. | 
| **BackFaceLighting** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'none', 'flat', 'gouraud'. | 
| **BeingDeleted** | Nelson computes this value; graphics operations update it. | Type: text scalar or character row vector. Supported values: 'off', 'on'. | 
| **BusyAction** | controls whether an interrupting callback is queued or canceled. | Type: text scalar or character row vector. Supported values: 'queue', 'cancel'. | 
| **ButtonDownFcn** | runs when the object receives a mouse-button event. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **CData** | replaces data and recomputes automatic limits that depend on it. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: [] or data with dimensions compatible with the rendered object. | 
| **CDataMapping** | replaces data and recomputes automatic limits that depend on it. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: [] or data with dimensions compatible with the rendered object. | 
| **CDataMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **Children** | parenting operations update the vector. | Type: graphics object handle vector. Supported values: empty vector or child handles. | 
| **Clipping** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **ContextMenu** | attaches the menu used for context-click actions. | Type: graphics object handle scalar. Supported values: [] or a uicontextmenu handle. | 
| **CreateFcn** | runs when the object is created. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **DeleteFcn** | runs when the object is deleted. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **DiffuseStrength** | changes the diffuse light contribution used for rendered faces. | Type: numeric scalar. Supported values: finite scalar from 0 through 1. | 
| **DisplayName** | updates the label used by legend entries and object identification. | Type: text value. Supported values: character row vector or string scalar. | 
| **EdgeAlpha** | updates rendered output on the next graphics refresh. | Type: numeric scalar or numeric array. Supported values: values in [0,1]; data arrays must match the related rendered data. | 
| **EdgeColor** | updates rendered output on the next graphics refresh. | Type: color value or color mode keyword. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB', 'none', 'flat', 'interp'. | 
| **EdgeLighting** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'none', 'flat', 'gouraud'. | 
| **FaceAlpha** | updates rendered output on the next graphics refresh. | Type: numeric scalar or numeric array. Supported values: values in [0,1]; data arrays must match the related rendered data. | 
| **FaceColor** | updates rendered output on the next graphics refresh. | Type: color value or color mode keyword. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB', 'none', 'flat', 'interp'. | 
| **FaceLighting** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'none', 'flat', 'gouraud'. | 
| **FaceNormals** | updates rendered output on the next graphics refresh. | Type: finite numeric matrix. Supported values: [] or a matrix with one row per vertex, normal, point, or contour segment. | 
| **FaceNormalsMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **FaceVertexAlphaData** | replaces data and recomputes automatic limits that depend on it. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: [] or data with dimensions compatible with the rendered object. | 
| **FaceVertexCData** | replaces data and recomputes automatic limits that depend on it. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: [] or data with dimensions compatible with the rendered object. | 
| **FaceVertexCDataMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **Faces** | updates rendered output on the next graphics refresh. | Type: integer matrix. Supported values: indices referencing rows of Vertices. | 
| **HandleVisibility** | controls whether handle-search functions can find the object. | Type: text scalar or character row vector. Supported values: 'on', 'off', 'callback'. | 
| **HitTest** | includes or excludes the object from mouse hit testing. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **Interruptible** | controls whether a running callback can be interrupted. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **LineJoin** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'miter', 'round', 'chamfer'. | 
| **LineStyle** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: '-', '--', ':', '-.', 'none'. | 
| **LineWidth** | updates rendered output on the next graphics refresh. | Type: finite numeric scalar. Supported values: value greater than or equal to 0. | 
| **Marker** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'o', '+', '\*', '.', 'x', '\_', '\|', 'square', 'diamond', '^', 'v', '>', '<', 'pentagram', 'hexagram', 'none'. | 
| **MarkerEdgeColor** | updates rendered output on the next graphics refresh. | Type: color value or marker color keyword. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB', 'auto', 'none', 'flat'. | 
| **MarkerFaceColor** | updates rendered output on the next graphics refresh. | Type: color value or marker color keyword. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB', 'auto', 'none', 'flat'. | 
| **MarkerSize** | recomputes geometry, limits, or layout. | Type: finite numeric scalar. Supported values: finite scalar value. | 
| **Parent** | reparents the object and updates Children on the old and new parents. | Type: graphics object handle scalar. Supported values: a valid parent handle for the object class. | 
| **PickableParts** | selects which visible or invisible parts can receive mouse hits. | Type: text scalar or character row vector. Supported values: 'visible', 'all', 'none'. | 
| **Selected** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **SelectionHighlight** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **SeriesIndex** | updates the stored object state. | Type: integer scalar or numeric vector. Supported values: finite integer value, finite numeric value, or vector required by the property. | 
| **SpecularColorReflectance** | changes how object color contributes to specular highlights. | Type: numeric scalar. Supported values: finite scalar from 0 through 1. | 
| **SpecularExponent** | changes specular highlight sharpness during lighting calculations. | Type: numeric scalar. Supported values: positive finite scalar controlling highlight size. | 
| **SpecularStrength** | changes the strength of specular highlights during lighting calculations. | Type: numeric scalar. Supported values: finite scalar from 0 through 1. | 
| **Tag** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or an object identifier. | 
| **Type** | Nelson computes this value; graphics operations update it. | Type: text scalar or character row vector. Supported values: read-only object type name, for example 'figure', 'axes', 'line', or 'scatter'. | 
| **UserData** | updates the stored object state. | Type: Nelson array. Supported values: any Nelson value, including [], numeric arrays, text, cells, structures, or handles. | 
| **VertexNormals** | updates rendered output on the next graphics refresh. | Type: finite numeric matrix. Supported values: [] or a matrix with one row per vertex, normal, point, or contour segment. | 
| **VertexNormalsMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **Vertices** | updates rendered output on the next graphics refresh. | Type: finite numeric matrix. Supported values: [] or a matrix with one row per vertex, normal, point, or contour segment. | 
| **Visible** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **XData** | replaces data and recomputes automatic limits that depend on it. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: [] or data with dimensions compatible with the rendered object. | 
| **XDataMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **YData** | replaces data and recomputes automatic limits that depend on it. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: [] or data with dimensions compatible with the rendered object. | 
| **YDataMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **ZData** | replaces data and recomputes automatic limits that depend on it. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: [] or data with dimensions compatible with the rendered object. | 



## 💡 Example

Create the graphics object and list its properties.

```matlab
f = figure('Visible', 'off');
ax = axes('Parent', f);
h = patch('Parent', ax, 'XData', [0 1 1 0], 'YData', [0 0 1 1], 'FaceColor', 'red');
names = properties(h);
close(f)
```


## 🔗 See also

[patch](../../../graphics/1_plots/7_surfaces_volumes_polygons/patch.md), [fill](../../../graphics/1_plots/7_surfaces_volumes_polygons/fill.md), [fill3](../../../graphics/1_plots/7_surfaces_volumes_polygons/fill3.md), [properties](../../../handle/properties.md), [get](../../../handle/get.md), [set](../../../handle/set.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| --   | Property page added. |

<!--
## 👤 Author

Allan CORNET
-->
