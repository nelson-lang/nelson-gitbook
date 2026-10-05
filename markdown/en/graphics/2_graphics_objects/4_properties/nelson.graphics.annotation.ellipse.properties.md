# annotation ellipse properties

ellipse annotation graphics object properties.

## 📄 Description


This page documents the visible properties returned by <b>properties</b> for a <b>ellipse</b> annotation. 

| Property | Action | Type and supported values | 
| --- | --- | --- | 
| **BeingDeleted** | Nelson computes this value; graphics operations update it. | Type: text scalar or character row vector. Supported values: 'off', 'on'. | 
| **BusyAction** | controls whether an interrupting callback is queued or canceled. | Type: text scalar or character row vector. Supported values: 'queue', 'cancel'. | 
| **ButtonDownFcn** | runs when you click the object. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **Children** | parenting operations update the vector. | Type: graphics object handle vector. Supported values: empty vector or child handles. | 
| **Color** | updates rendered output on the next graphics refresh. | Type: color value. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB'. | 
| **ContextMenu** | assigns the context menu displayed on right-click. | Type: graphics object handle scalar. Supported values: empty handle or a context menu object handle. | 
| **CreateFcn** | runs when the object is created. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **DeleteFcn** | runs when the object is deleted. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **FaceColor** | updates rendered output on the next graphics refresh. | Type: color value or color mode keyword. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB', 'none', 'flat', 'interp'. | 
| **HandleVisibility** | controls whether the object handle is listed by handle searches. | Type: text scalar or character row vector. Supported values: 'on', 'callback', 'off'. | 
| **HitTest** | controls whether the object can capture mouse clicks. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **Interruptible** | controls whether a running callback can be interrupted. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **LineStyle** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: '-', '--', ':', '-.', 'none'. | 
| **LineWidth** | updates rendered output on the next graphics refresh. | Type: finite numeric scalar. Supported values: value greater than or equal to 0. | 
| **Parent** | reparents the object and updates Children on the old and new parents. | Type: graphics object handle scalar. Supported values: a valid parent handle for the object class. | 
| **PickableParts** | controls which parts of the object can capture mouse clicks. | Type: text scalar or character row vector. Supported values: 'visible', 'all', 'none'. | 
| **Position** | updates annotation location and size; line-like annotations also update X and Y endpoints. | Type: four-element numeric vector. Supported values: [x y width height] for shape and textbox annotations, or [xstart ystart dx dy] for line-like annotations. | 
| **Rotation** | rotates the annotation around its anchor point. | Type: finite numeric scalar. Supported values: rotation angle in degrees. | 
| **Selected** | indicates whether the object is currently selected. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **SelectionHighlight** | controls whether selection handles are drawn when the object is selected. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **Tag** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or an object identifier. | 
| **Type** | Nelson computes this value; graphics operations update it. | Type: text scalar or character row vector. Supported values: read-only object type name, for example 'figure', 'axes', 'line', or 'scatter'. | 
| **Units** | changes how annotation position values are interpreted and converts Position, X, and Y. | Type: text keyword. Supported values: 'normalized', 'inches', 'centimeters', 'characters', 'points', or 'pixels'. | 
| **UserData** | updates the stored object state. | Type: Nelson array. Supported values: any Nelson value, including [], numeric arrays, text, cells, structures, or handles. | 
| **Visible** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 



## 💡 Example

Create the annotation and list its properties.

```matlab
f = figure('Visible', 'off');
h = annotation(f, 'ellipse');
names = properties(h);
close(f)
```


## 🔗 See also

[annotation](../../../graphics/3_labels_styling/4_labels_annotations/annotation.md), [properties](../../../handle/properties.md), [get](../../../handle/get.md), [set](../../../handle/set.md).