# groot properties

groot graphics object properties.

## 📄 Description


This page documents the visible properties returned by <b>properties</b> for a <b>groot</b> graphics object. 

| Property | Action | Type and supported values | 
| --- | --- | --- | 
| **CallbackObject** | reports callback execution context. | Type: graphics handle. Supported values: handle of the object whose callback is executing, or empty graphics handle outside callback execution. | 
| **Children** | parenting operations update the vector. | Type: graphics object handle vector. Supported values: empty vector or child handles. | 
| **CommandWindowSize** | reports the command window size used to lay out displayed output. | Type: read-only two-element numeric vector. Supported values: [columns rows] in characters. | 
| **CurrentFigure** | changes or reports the root current figure used by plotting commands. | Type: figure graphics handle. Supported values: current figure handle, or empty graphics handle when no current figure exists. | 
| **FixedWidthFontName** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: a system font name or 'FixedWidth'. | 
| **Format** | reports the current numeric display format. | Type: read-only text scalar. Supported values: 'short', 'long', 'shortE', 'longE', 'shortG', 'longG', 'shortEng', 'longEng', '+', 'bank', 'hex', 'rational'. | 
| **FormatSpacing** | reports the current line spacing used when displaying output. | Type: read-only text scalar. Supported values: 'loose', 'compact'. | 
| **HandleVisibility** | controls whether handle-search functions can find the object. | Type: text scalar or character row vector. Supported values: 'on', 'off', 'callback'. | 
| **MonitorPositions** | reports the primary display rectangle, refreshed on every query (display scale or resolution changes included). | Type: four-element numeric vector (read-only). Supported values: [left bottom width height] in the root Units; in pixels, logical pixels (1 pixel = 1/96 inch). | 
| **Parent** | reparents the object and updates Children on the old and new parents. | Type: graphics object handle scalar. Supported values: a valid parent handle for the object class. | 
| **PointerLocation** | recomputes geometry, limits, or layout. | Type: finite numeric vector. Supported values: finite vector with the documented size, such as [left bottom width height], [x y z], [azimuth elevation], or [minor major]. | 
| **ScreenDepth** | reports screen color depth used by graphics display code. | Type: numeric scalar. Supported values: positive integer bit depth reported by the display. | 
| **ScreenPixelsPerInch** | reports the logical resolution used to convert pixels to inches, centimeters, and points. | Type: finite numeric scalar. Supported values: 96 on Windows, whatever the display scale. | 
| **ScreenSize** | reports the primary display rectangle used for figure placement, refreshed on every query. | Type: four-element numeric vector (read-only). Supported values: [left bottom width height] in the root Units; in pixels, logical pixels (1 pixel = 1/96 inch): a 1920x1080 display at 125 % scale reports [1 1 1536 864], and figures on it report a DevicePixelRatio of 1.25. | 
| **ShowHiddenHandles** | updates rendered output on the next graphics refresh. | Type: on/off value. Supported values: 'on', 'off', true, or false. | 
| **Tag** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or an object identifier. | 
| **Type** | Nelson computes this value; graphics operations update it. | Type: text scalar or character row vector. Supported values: read-only object type name, for example 'figure', 'axes', 'line', or 'scatter'. | 
| **Units** | recomputes geometry, limits, or layout. | Type: text scalar or character row vector. Supported values: 'pixels', 'normalized', 'inches', 'centimeters', 'points', 'characters', 'data'. | 
| **UserData** | updates the stored object state. | Type: Nelson array. Supported values: any Nelson value, including [], numeric arrays, text, cells, structures, or handles. | 



## 💡 Example

Create the graphics object and list its properties.

```matlab
h = groot();
names = properties(h)
```


## 🔗 See also

[groot](../../../graphics/2_graphics_objects/1_object_management/groot.md), [properties](../../../handle/properties.md), [get](../../../handle/get.md), [set](../../../handle/set.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| --   | Property page added. |

<!--
## 👤 Author

Allan CORNET
-->
