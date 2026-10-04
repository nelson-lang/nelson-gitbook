# uicontrol properties

uicontrol graphics object properties.

## 📄 Description

This page documents the visible properties returned by <b>properties</b> for a <b>uicontrol</b> graphics object.

| Property                | Action                                                                 | Type and supported values                                                                                                                                                                                                    |
| ----------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **BackgroundColor**     | updates rendered output on the next graphics refresh.                  | Type: color value. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB'. |
| **BeingDeleted**        | Nelson computes this value; graphics operations update it.             | Type: text scalar or character row vector. Supported values: 'off', 'on'.                                                                                                                                                    |
| **BusyAction**          | controls whether an interrupting callback is queued or canceled.       | Type: text scalar or character row vector. Supported values: 'queue', 'cancel'.                                                                                                                                              |
| **ButtonDownFcn**       | runs when the object receives a mouse-button event.                    | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array.                                                                                                        |
| **CData**               | replaces data and recomputes automatic limits that depend on it.       | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: [] or data with dimensions compatible with the rendered object.                                                        |
| **Callback**            | the graphics event system invokes it for the associated event.         | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array.                                                                                                        |
| **Children**            | parenting operations update the vector.                                | Type: graphics object handle vector. Supported values: empty vector or child handles.                                                                                                                                        |
| **ContextMenu**         | attaches the menu used for context-click actions.                      | Type: graphics object handle scalar. Supported values: [] or a uicontextmenu handle.                                                                                                                                         |
| **CreateFcn**           | runs when the object is created.                                       | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array.                                                                                                        |
| **DeleteFcn**           | runs when the object is deleted.                                       | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array.                                                                                                        |
| **Enable**              | updates rendered output on the next graphics refresh.                  | Type: on/off value. Supported values: 'on', 'off', true, or false.                                                                                                                                                           |
| **Extent**              | recomputes geometry, limits, or layout.                                | Type: finite numeric vector. Supported values: finite vector with the documented size, such as [left bottom width height], [x y z], [azimuth elevation], or [minor major].                                                   |
| **FontAngle**           | updates rendered output on the next graphics refresh.                  | Type: text scalar or character row vector. Supported values: 'normal', 'italic'.                                                                                                                                             |
| **FontName**            | updates rendered output on the next graphics refresh.                  | Type: text scalar or character row vector. Supported values: a system font name or 'FixedWidth'.                                                                                                                             |
| **FontSize**            | recomputes geometry, limits, or layout.                                | Type: finite numeric scalar. Supported values: finite scalar value.                                                                                                                                                          |
| **FontUnits**           | recomputes geometry, limits, or layout.                                | Type: text scalar or character row vector. Supported values: 'pixels', 'normalized', 'inches', 'centimeters', 'points', 'characters', 'data'.                                                                                |
| **FontWeight**          | updates rendered output on the next graphics refresh.                  | Type: text scalar or character row vector. Supported values: 'normal', 'bold'.                                                                                                                                               |
| **ForegroundColor**     | updates rendered output on the next graphics refresh.                  | Type: color value. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB'. |
| **HandleVisibility**    | controls whether handle-search functions can find the object.          | Type: text scalar or character row vector. Supported values: 'on', 'off', 'callback'.                                                                                                                                        |
| **HorizontalAlignment** | updates rendered output on the next graphics refresh.                  | Type: on/off value. Supported values: 'on', 'off', true, or false.                                                                                                                                                           |
| **InnerPosition**       | recomputes geometry, limits, or layout.                                | Type: finite numeric vector. Supported values: finite vector with the documented size, such as [left bottom width height], [x y z], [azimuth elevation], or [minor major].                                                   |
| **Interruptible**       | controls whether a running callback can be interrupted.                | Type: text scalar or character row vector. Supported values: 'on', 'off'.                                                                                                                                                    |
| **KeyPressFcn**         | the graphics event system invokes it for the associated event.         | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array.                                                                                                        |
| **KeyReleaseFcn**       | the graphics event system invokes it for the associated event.         | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array.                                                                                                        |
| **ListboxTop**          | updates the stored object state.                                       | Type: integer scalar or numeric vector. Supported values: finite integer value, finite numeric value, or vector required by the property.                                                                                    |
| **Max**                 | updates the stored object state.                                       | Type: integer scalar or numeric vector. Supported values: finite integer value, finite numeric value, or vector required by the property.                                                                                    |
| **Min**                 | updates the stored object state.                                       | Type: integer scalar or numeric vector. Supported values: finite integer value, finite numeric value, or vector required by the property.                                                                                    |
| **OuterPosition**       | recomputes geometry, limits, or layout.                                | Type: finite numeric vector. Supported values: finite vector with the documented size, such as [left bottom width height], [x y z], [azimuth elevation], or [minor major].                                                   |
| **Parent**              | reparents the object and updates Children on the old and new parents.  | Type: graphics object handle scalar. Supported values: a valid parent handle for the object class.                                                                                                                           |
| **Position**            | recomputes geometry, limits, or layout.                                | Type: finite numeric vector. Supported values: finite vector with the documented size, such as [left bottom width height], [x y z], [azimuth elevation], or [minor major].                                                   |
| **SliderStep**          | recomputes geometry, limits, or layout.                                | Type: finite numeric vector. Supported values: finite vector with the documented size, such as [left bottom width height], [x y z], [azimuth elevation], or [minor major].                                                   |
| **String**              | updates displayed text content.                                        | Type: text value. Supported values: character row vector, string scalar, string array, or cell array of character row vectors.                                                                                               |
| **Style**               | updates rendered output on the next graphics refresh.                  | Type: text scalar or character row vector. Supported values: style names defined by this object, such as UI styles, light styles, chart styles, or line styles.                                                              |
| **Tag**                 | updates the stored object state.                                       | Type: text scalar or character row vector. Supported values: empty text or an object identifier.                                                                                                                             |
| **Tooltip**             | updates the tooltip text shown by interactive user interface elements. | Type: text value. Supported values: character row vector, string scalar, string array, cell array of character row vectors, or empty text.                                                                                   |
| **Type**                | Nelson computes this value; graphics operations update it.             | Type: text scalar or character row vector. Supported values: read-only object type name, for example 'figure', 'axes', 'line', or 'scatter'.                                                                                 |
| **Units**               | recomputes geometry, limits, or layout.                                | Type: text scalar or character row vector. Supported values: 'pixels', 'normalized', 'inches', 'centimeters', 'points', 'characters', 'data'.                                                                                |
| **UserData**            | updates the stored object state.                                       | Type: Nelson array. Supported values: any Nelson value, including [], numeric arrays, text, cells, structures, or handles.                                                                                                   |
| **Value**               | updates the stored object state.                                       | Type: integer scalar or numeric vector. Supported values: finite integer value, finite numeric value, or vector required by the property.                                                                                    |
| **Visible**             | updates rendered output on the next graphics refresh.                  | Type: text scalar or character row vector. Supported values: 'on', 'off'.                                                                                                                                                    |

## 💡 Example

Create the graphics object and list its properties.

```matlab
f = figure('Visible', 'off');
h = uicontrol('Parent', f, 'Style', 'pushbutton', 'String', 'OK');
names = properties(h);
close(f)
```

## 🔗 See also

[uicontrol](../../../graphics/2_graphics_objects/3_ui_controls/uicontrol.md), [properties](../../../handle/properties.md), [get](../../../handle/get.md), [set](../../../handle/set.md).

## 🕔 History

| Version | 📄 Description       |
| ------- | -------------------- |
| --      | Property page added. |

<!--
## 👤 Author

Allan CORNET
-->
