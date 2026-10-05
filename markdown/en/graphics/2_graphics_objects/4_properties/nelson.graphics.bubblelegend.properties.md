# bubblelegend properties

bubblelegend graphics object properties.

## 📄 Description


This page documents the visible properties returned by properties for a bubblelegend graphics object. 

| Property | Action | Type and supported values | 
| --- | --- | --- | 
| **BeingDeleted** | Nelson computes this value; graphics operations update it. | Type: text scalar or character row vector. Supported values: 'off', 'on'. | 
| **Box** | updates rendered output on the next graphics refresh. | Type: on/off value. Supported values: 'on', 'off', true, or false. | 
| **BubbleSizeOrder** | changes the order used for bubble size labels in the bubble legend. | Type: text keyword. Supported values: 'ascending' or 'descending'. | 
| **BusyAction** | controls whether an interrupting callback is queued or canceled. | Type: text scalar or character row vector. Supported values: 'queue', 'cancel'. | 
| **ButtonDownFcn** | runs when the object receives a mouse-button event. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **Children** | parenting operations update the vector. | Type: graphics object handle vector. Supported values: empty vector or child handles. | 
| **Color** | updates rendered output on the next graphics refresh. | Type: color value. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB'. | 
| **ContextMenu** | attaches the menu used for context-click actions. | Type: graphics object handle scalar. Supported values: [] or a uicontextmenu handle. | 
| **CreateFcn** | runs when the object is created. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **DeleteFcn** | runs when the object is deleted. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **EdgeColor** | updates rendered output on the next graphics refresh. | Type: color value or color mode keyword. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB', 'none', 'flat', 'interp'. | 
| **FontAngle** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'normal', 'italic'. | 
| **FontName** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: a system font name or 'FixedWidth'. | 
| **FontSize** | recomputes geometry, limits, or layout. | Type: finite numeric scalar. Supported values: finite scalar value. | 
| **FontWeight** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'normal', 'bold'. | 
| **HandleVisibility** | controls whether handle-search functions can find the object. | Type: text scalar or character row vector. Supported values: 'on', 'off', 'callback'. | 
| **HitTest** | includes or excludes the object from mouse hit testing. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **Interpreter** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'tex', 'none'. | 
| **Interruptible** | controls whether a running callback can be interrupted. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **Layout** | updates the object placement requested from the parent layout manager. | Type: layout options object or empty value. Supported values: layout information stored by parent layout managers, including tile placement data where the object supports tiled layouts. | 
| **LimitLabels** | updates the minimum and maximum labels displayed by the bubble legend. | Type: text value, string array, or cell array of character row vectors. Supported values: two labels, or empty value for automatic labels. | 
| **LineWidth** | updates rendered output on the next graphics refresh. | Type: finite numeric scalar. Supported values: value greater than or equal to 0. | 
| **Location** | recomputes geometry, limits, or layout. | Type: text scalar or character row vector. Supported values: 'north', 'south', 'east', 'west', 'northoutside', 'southoutside', 'eastoutside', 'westoutside', 'best', 'none', 'layout', 'manual'. | 
| **NumBubbles** | changes the number of reference bubbles displayed in the bubble legend. | Type: positive integer scalar. Supported values: finite integer greater than or equal to 1. | 
| **Parent** | reparents the object and updates Children on the old and new parents. | Type: graphics object handle scalar. Supported values: a valid parent handle for the object class. | 
| **PickableParts** | selects which visible or invisible parts can receive mouse hits. | Type: text scalar or character row vector. Supported values: 'visible', 'all', 'none'. | 
| **Position** | recomputes geometry, limits, or layout. | Type: finite numeric vector. Supported values: finite vector with the documented size, such as [left bottom width height], [x y z], [azimuth elevation], or [minor major]. | 
| **Selected** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **SelectionHighlight** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **Style** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: style names defined by this object, such as UI styles, light styles, chart styles, or line styles. | 
| **Tag** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or an object identifier. | 
| **TextColor** | updates rendered output on the next graphics refresh. | Type: color value. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB'. | 
| **Title** | updates the displayed title or the title object associated with the graphics item. | Type: text graphics object or text value, depending on the object class. Supported values: a title text object, character row vector, string scalar, or empty text. | 
| **Type** | Nelson computes this value; graphics operations update it. | Type: text scalar or character row vector. Supported values: read-only object type name, for example 'figure', 'axes', 'line', or 'scatter'. | 
| **Units** | recomputes geometry, limits, or layout. | Type: text scalar or character row vector. Supported values: 'pixels', 'normalized', 'inches', 'centimeters', 'points', 'characters', 'data'. | 
| **UserData** | updates the stored object state. | Type: Nelson array. Supported values: any Nelson value, including [], numeric arrays, text, cells, structures, or handles. | 
| **Visible** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 



## 💡 Example

Create the graphics object and list its properties.

```matlab
f = figure('Visible', 'off');
ax = axes('Parent', f);
bubblechart(ax, 1:3, [2 4 3], [10 30 20]);
h = bubblelegend(ax, 'Size');
names = properties(h);
close(f)
```


## 🔗 See also

[bubblelegend](../../../graphics/1_plots/4_data_distribution_plots/bubblelegend.md), [bubblechart](../../../graphics/1_plots/4_data_distribution_plots/bubblechart.md), [bubblesize](../../../graphics/1_plots/4_data_distribution_plots/bubblesize.md), [properties](../../../handle/properties.md), [get](../../../handle/get.md), [set](../../../handle/set.md).