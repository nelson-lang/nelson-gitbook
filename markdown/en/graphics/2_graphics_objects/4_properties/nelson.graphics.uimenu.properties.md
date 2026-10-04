# uimenu properties

uimenu graphics object properties.

## 📄 Description

This page documents the visible properties returned by <b>properties</b> for a <b>uimenu</b> graphics object.

| Property             | Action                                                                 | Type and supported values                                                                                                                                                                                                    |
| -------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Accelerator**      | changes the keyboard accelerator associated with a menu item.          | Type: single-character text value. Supported values: character row vector or string scalar containing one accelerator key, or empty text.                                                                                    |
| **BeingDeleted**     | Nelson computes this value; graphics operations update it.             | Type: text scalar or character row vector. Supported values: 'off', 'on'.                                                                                                                                                    |
| **BusyAction**       | controls whether an interrupting callback is queued or canceled.       | Type: text scalar or character row vector. Supported values: 'queue', 'cancel'.                                                                                                                                              |
| **ButtonDownFcn**    | runs when the object receives a mouse-button event.                    | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array.                                                                                                        |
| **Checked**          | updates rendered output on the next graphics refresh.                  | Type: on/off value. Supported values: 'on', 'off', true, or false.                                                                                                                                                           |
| **Children**         | parenting operations update the vector.                                | Type: graphics object handle vector. Supported values: empty vector or child handles.                                                                                                                                        |
| **Clipping**         | updates rendered output on the next graphics refresh.                  | Type: text scalar or character row vector. Supported values: 'on', 'off'.                                                                                                                                                    |
| **ContextMenu**      | attaches the menu used for context-click actions.                      | Type: graphics object handle scalar. Supported values: [] or a uicontextmenu handle.                                                                                                                                         |
| **CreateFcn**        | runs when the object is created.                                       | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array.                                                                                                        |
| **DeleteFcn**        | runs when the object is deleted.                                       | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array.                                                                                                        |
| **Enable**           | updates rendered output on the next graphics refresh.                  | Type: on/off value. Supported values: 'on', 'off', true, or false.                                                                                                                                                           |
| **ForegroundColor**  | updates rendered output on the next graphics refresh.                  | Type: color value. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB'. |
| **HandleVisibility** | controls whether handle-search functions can find the object.          | Type: text scalar or character row vector. Supported values: 'on', 'off', 'callback'.                                                                                                                                        |
| **Interruptible**    | controls whether a running callback can be interrupted.                | Type: text scalar or character row vector. Supported values: 'on', 'off'.                                                                                                                                                    |
| **MenuSelectedFcn**  | the graphics event system invokes it for the associated event.         | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array.                                                                                                        |
| **Parent**           | reparents the object and updates Children on the old and new parents.  | Type: graphics object handle scalar. Supported values: a valid parent handle for the object class.                                                                                                                           |
| **Position**         | recomputes geometry, limits, or layout.                                | Type: finite numeric vector. Supported values: finite vector with the documented size, such as [left bottom width height], [x y z], [azimuth elevation], or [minor major].                                                   |
| **Separator**        | updates rendered output on the next graphics refresh.                  | Type: on/off value. Supported values: 'on', 'off', true, or false.                                                                                                                                                           |
| **Tag**              | updates the stored object state.                                       | Type: text scalar or character row vector. Supported values: empty text or an object identifier.                                                                                                                             |
| **Text**             | updates text displayed by the graphics object.                         | Type: text value. Supported values: character row vector, string scalar, string array, cell array of character row vectors, or empty text.                                                                                   |
| **Tooltip**          | updates the tooltip text shown by interactive user interface elements. | Type: text value. Supported values: character row vector, string scalar, string array, cell array of character row vectors, or empty text.                                                                                   |
| **Type**             | Nelson computes this value; graphics operations update it.             | Type: text scalar or character row vector. Supported values: read-only object type name, for example 'figure', 'axes', 'line', or 'scatter'.                                                                                 |
| **UserData**         | updates the stored object state.                                       | Type: Nelson array. Supported values: any Nelson value, including [], numeric arrays, text, cells, structures, or handles.                                                                                                   |
| **Visible**          | updates rendered output on the next graphics refresh.                  | Type: text scalar or character row vector. Supported values: 'on', 'off'.                                                                                                                                                    |

## 💡 Example

Create the graphics object and list its properties.

```matlab
f = figure('Visible', 'off');
h = uimenu(f, 'Text', 'File');
names = properties(h);
close(f)
```

## 🔗 See also

[uimenu](../../../graphics/2_graphics_objects/3_ui_controls/uimenu.md), [properties](../../../handle/properties.md), [get](../../../handle/get.md), [set](../../../handle/set.md).

## 🕔 History

| Version | 📄 Description       |
| ------- | -------------------- |
| --      | Property page added. |

<!--
## 👤 Author

Allan CORNET
-->
