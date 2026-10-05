# colorbar properties

colorbar graphics object properties.

## 📄 Description


This page documents the visible properties returned by <b>properties</b> for a <b>colorbar</b> graphics object. 

| Property | Action | Type and supported values | 
| --- | --- | --- | 
| **Label** | updates the label displayed for the object. | Type: text value or text graphics object, depending on the object class. Supported values: character row vector, string scalar, empty text, or label text object. | 
| **Box** | updates rendered output on the next graphics refresh. | Type: on/off value. Supported values: 'on', 'off', true, or false. | 
| **Color** | updates rendered output on the next graphics refresh. | Type: color value. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB'. | 
| **Direction** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'normal', 'reverse'. | 
| **FontAngle** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'normal', 'italic'. | 
| **FontName** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: a system font name or 'FixedWidth'. | 
| **FontSize** | recomputes geometry, limits, or layout. | Type: finite numeric scalar. Supported values: finite scalar value. | 
| **FontWeight** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'normal', 'bold'. | 
| **Limits** | recomputes geometry, limits, or layout. | Type: finite numeric vector. Supported values: two finite increasing values [min max]. | 
| **LimitsMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **LineWidth** | updates rendered output on the next graphics refresh. | Type: finite numeric scalar. Supported values: value greater than or equal to 0. | 
| **Location** | recomputes geometry, limits, or layout. | Type: text scalar or character row vector. Supported values: 'north', 'south', 'east', 'west', 'northoutside', 'southoutside', 'eastoutside', 'westoutside', 'best', 'none', 'layout', 'manual'. | 
| **Position** | recomputes geometry, limits, or layout. | Type: finite numeric vector. Supported values: finite vector with the documented size, such as [left bottom width height], [x y z], [azimuth elevation], or [minor major]. | 
| **AxisLocation** | recomputes geometry, limits, or layout. | Type: text scalar or character row vector. Supported values: 'north', 'south', 'east', 'west', 'northoutside', 'southoutside', 'eastoutside', 'westoutside', 'best', 'none', 'layout', 'manual'. | 
| **AxisLocationMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **TickDirection** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'normal', 'reverse'. | 
| **TickLabelInterpreter** | updates rendered output on the next graphics refresh. | Type: text scalar, string array, or cell array of text. Supported values: empty text or labels matching the related ticks, categories, variables, lines, or displayed values. | 
| **TickLabels** | updates rendered output on the next graphics refresh. | Type: text scalar, string array, or cell array of text. Supported values: empty text or labels matching the related ticks, categories, variables, lines, or displayed values. | 
| **TickLabelsMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **TickLength** | recomputes geometry, limits, or layout. | Type: finite numeric vector. Supported values: finite vector with the documented size, such as [left bottom width height], [x y z], [azimuth elevation], or [minor major]. | 
| **Ticks** | recomputes geometry, limits, or layout. | Type: finite numeric vector. Supported values: [] or a finite numeric vector, normally increasing. | 
| **TicksMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **Units** | recomputes geometry, limits, or layout. | Type: text scalar or character row vector. Supported values: 'pixels', 'normalized', 'inches', 'centimeters', 'points', 'characters', 'data'. | 
| **Children** | parenting operations update the vector. | Type: graphics object handle vector. Supported values: empty vector or child handles. | 
| **Parent** | reparents the object and updates Children on the old and new parents. | Type: graphics object handle scalar. Supported values: a valid parent handle for the object class. | 
| **Visible** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **HandleVisibility** | controls whether handle-search functions can find the object. | Type: text scalar or character row vector. Supported values: 'on', 'off', 'callback'. | 
| **ButtonDownFcn** | runs when the object receives a mouse-button event. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **ContextMenu** | attaches the menu used for context-click actions. | Type: graphics object handle scalar. Supported values: [] or a uicontextmenu handle. | 
| **BusyAction** | controls whether an interrupting callback is queued or canceled. | Type: text scalar or character row vector. Supported values: 'queue', 'cancel'. | 
| **BeingDeleted** | Nelson computes this value; graphics operations update it. | Type: text scalar or character row vector. Supported values: 'off', 'on'. | 
| **Interruptible** | controls whether a running callback can be interrupted. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **CreateFcn** | runs when the object is created. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **DeleteFcn** | runs when the object is deleted. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **Type** | Nelson computes this value; graphics operations update it. | Type: text scalar or character row vector. Supported values: read-only object type name, for example 'figure', 'axes', 'line', or 'scatter'. | 
| **Tag** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or an object identifier. | 
| **UserData** | updates the stored object state. | Type: Nelson array. Supported values: any Nelson value, including [], numeric arrays, text, cells, structures, or handles. | 
| **Selected** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **SelectionHighlight** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **HitTest** | includes or excludes the object from mouse hit testing. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **PickableParts** | selects which visible or invisible parts can receive mouse hits. | Type: text scalar or character row vector. Supported values: 'visible', 'all', 'none'. | 
| **Layout** | updates the object placement requested from the parent layout manager. | Type: layout options object or empty value. Supported values: layout information stored by parent layout managers, including tile placement data where the object supports tiled layouts. | 



## 💡 Example

Create the graphics object and list its properties.

```matlab
f = figure('Visible', 'off');
ax = axes('Parent', f);
image('Parent', ax, 'CData', magic(3));
h = colorbar(ax);
names = properties(h);
close(f)
```


## 🔗 See also

[colorbar](../../../graphics/3_labels_styling/4_labels_annotations/colorbar.md), [properties](../../../handle/properties.md), [get](../../../handle/get.md), [set](../../../handle/set.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| --   | Property page added. |

<!--
## 👤 Author

Allan CORNET
-->
