# implicitfunctionsurface properties

implicitfunctionsurface graphics object properties.

## 📄 Description


This page documents the visible properties returned by properties for a implicitfunctionsurface graphics object. 

| Property | Action | Type and supported values | 
| --- | --- | --- | 
| **AlignVertexCenters** | updates rendered output on the next graphics refresh. | Type: on/off value. Supported values: 'on', 'off', true, or false. | 
| **AlphaData** | replaces data and recomputes automatic limits that depend on it. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: [] or data with dimensions compatible with the rendered object. | 
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
| **CDataSource** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **Children** | parenting operations update the vector. | Type: graphics object handle vector. Supported values: empty vector or child handles. | 
| **Clipping** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **ContextMenu** | attaches the menu used for context-click actions. | Type: graphics object handle scalar. Supported values: [] or a uicontextmenu handle. | 
| **CreateFcn** | runs when the object is created. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **DataTipTemplate** | updates the content used for interactive data tips. | Type: data tip template object or empty handle value. Supported values: a data tip template object owned by the graphics item, or an empty graphics handle when data tips are not configured. | 
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
| **Function** | resamples the implicit function surface and refreshes Faces and Vertices. | Type: function handle. Supported values: scalar function handle evaluated on the implicit function surface sample grid. | 
| **HandleVisibility** | controls whether handle-search functions can find the object. | Type: text scalar or character row vector. Supported values: 'on', 'off', 'callback'. | 
| **HitTest** | includes or excludes the object from mouse hit testing. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **Interpolation** | changes how colors or samples are interpolated between stored data values. | Type: text keyword. Supported values: 'nearest', 'linear', or 'none'. | 
| **Interruptible** | controls whether a running callback can be interrupted. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **LineJoin** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'miter', 'round', 'chamfer'. | 
| **LineStyle** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: '-', '--', ':', '-.', 'none'. | 
| **LineWidth** | updates rendered output on the next graphics refresh. | Type: finite numeric scalar. Supported values: value greater than or equal to 0. | 
| **Marker** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'o', '+', '\*', '.', 'x', '\_', '\|', 'square', 'diamond', '^', 'v', '>', '<', 'pentagram', 'hexagram', 'none'. | 
| **MarkerEdgeColor** | updates rendered output on the next graphics refresh. | Type: color value or marker color keyword. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB', 'auto', 'none', 'flat'. | 
| **MarkerFaceColor** | updates rendered output on the next graphics refresh. | Type: color value or marker color keyword. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB', 'auto', 'none', 'flat'. | 
| **MarkerSize** | recomputes geometry, limits, or layout. | Type: finite numeric scalar. Supported values: finite scalar value. | 
| **MaxRenderedResolution** | updates the stored object state. | Type: integer scalar or numeric vector. Supported values: finite integer value, finite numeric value, or vector required by the property. | 
| **MeshDensity** | changes the sampling grid density and resamples the implicit function surface. | Type: positive integer scalar. Supported values: finite integer greater than or equal to 2. | 
| **MeshStyle** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: style names defined by this object, such as UI styles, light styles, chart styles, or line styles. | 
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
| **XDataSource** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **XRange** | changes the sampling range and resamples the implicit function surface. | Type: two-element numeric vector. Supported values: finite increasing vector [min max]. | 
| **XRangeMode** | 'auto' uses the default sampling range; 'manual' preserves the assigned range. | Type: text keyword. Supported values: 'auto' or 'manual'. | 
| **YData** | replaces data and recomputes automatic limits that depend on it. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: [] or data with dimensions compatible with the rendered object. | 
| **YDataMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **YDataSource** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **YRange** | changes the sampling range and resamples the implicit function surface. | Type: two-element numeric vector. Supported values: finite increasing vector [min max]. | 
| **YRangeMode** | 'auto' uses the default sampling range; 'manual' preserves the assigned range. | Type: text keyword. Supported values: 'auto' or 'manual'. | 
| **ZData** | replaces data and recomputes automatic limits that depend on it. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: [] or data with dimensions compatible with the rendered object. | 
| **ZDataSource** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or a workspace/table variable name. | 
| **ZRange** | changes the z sampling range and resamples the implicit function surface. | Type: two-element numeric vector. Supported values: finite increasing vector [min max]. | 
| **ZRangeMode** | 'auto' uses the default z sampling range; 'manual' preserves the assigned range. | Type: text keyword. Supported values: 'auto' or 'manual'. | 



## 💡 Example

Create the graphics object and list its properties.

```matlab
f = figure('Visible', 'off');
ax = axes('Parent', f);
h = fimplicit3(ax, @(x, y, z) x.^2 + y.^2 + z.^2 - 1);
names = properties(h);
close(f)
```


## 🔗 See also

[fimplicit3](../../../graphics/1_plots/7_surfaces_volumes_polygons/fimplicit3.md), [fimplicit3](../../../graphics/1_plots/7_surfaces_volumes_polygons/fimplicit3.md), [fimplicit](../../../graphics/1_plots/7_surfaces_volumes_polygons/fimplicit.md), [fimplicit](../../../graphics/1_plots/7_surfaces_volumes_polygons/fimplicit.md), [fimplicit3](../../../graphics/1_plots/7_surfaces_volumes_polygons/fimplicit3.md), [properties](../../../handle/properties.md), [get](../../../handle/get.md), [set](../../../handle/set.md).