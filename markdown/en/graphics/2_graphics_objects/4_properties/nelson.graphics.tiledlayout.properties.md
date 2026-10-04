# tiledlayout properties

tiledlayout graphics object properties.

## 📄 Description

This page documents the visible properties returned by <b>properties</b> for a <b>tiledlayout</b> graphics object.

| Property               | Action                                                                             | Type and supported values                                                                                                                                                                 |
| ---------------------- | ---------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **BeingDeleted**       | Nelson computes this value; graphics operations update it.                         | Type: text scalar or character row vector. Supported values: 'off', 'on'.                                                                                                                 |
| **BusyAction**         | controls whether an interrupting callback is queued or canceled.                   | Type: text scalar or character row vector. Supported values: 'queue', 'cancel'.                                                                                                           |
| **Children**           | parenting operations update the vector.                                            | Type: graphics object handle vector. Supported values: empty vector or child handles.                                                                                                     |
| **ContextMenu**        | attaches the menu used for context-click actions.                                  | Type: graphics object handle scalar. Supported values: [] or a uicontextmenu handle.                                                                                                      |
| **CreateFcn**          | runs when the object is created.                                                   | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array.                                                                     |
| **DeleteFcn**          | runs when the object is deleted.                                                   | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array.                                                                     |
| **GridSize**           | changes the fixed grid size requested by a tiled layout.                           | Type: two-element positive integer vector. Supported values: [rows columns].                                                                                                              |
| **GridSizeChangedFcn** | the graphics event system invokes it for the associated event.                     | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array.                                                                     |
| **HandleVisibility**   | controls whether handle-search functions can find the object.                      | Type: text scalar or character row vector. Supported values: 'on', 'off', 'callback'.                                                                                                     |
| **InnerPosition**      | recomputes geometry, limits, or layout.                                            | Type: finite numeric vector. Supported values: finite vector with the documented size, such as [left bottom width height], [x y z], [azimuth elevation], or [minor major].                |
| **Interruptible**      | controls whether a running callback can be interrupted.                            | Type: text scalar or character row vector. Supported values: 'on', 'off'.                                                                                                                 |
| **Layout**             | updates the object placement requested from the parent layout manager.             | Type: layout options object or empty value. Supported values: layout information stored by parent layout managers, including tile placement data where the object supports tiled layouts. |
| **OuterPosition**      | recomputes geometry, limits, or layout.                                            | Type: finite numeric vector. Supported values: finite vector with the documented size, such as [left bottom width height], [x y z], [azimuth elevation], or [minor major].                |
| **Padding**            | recomputes geometry, limits, or layout.                                            | Type: text scalar or character row vector. Supported values: 'loose', 'compact', 'tight', 'none'.                                                                                         |
| **Parent**             | reparents the object and updates Children on the old and new parents.              | Type: graphics object handle scalar. Supported values: a valid parent handle for the object class.                                                                                        |
| **Position**           | recomputes geometry, limits, or layout.                                            | Type: finite numeric vector. Supported values: finite vector with the documented size, such as [left bottom width height], [x y z], [azimuth elevation], or [minor major].                |
| **PositionConstraint** | recomputes geometry, limits, or layout.                                            | Type: finite numeric vector. Supported values: finite vector with the documented size, such as [left bottom width height], [x y z], [azimuth elevation], or [minor major].                |
| **Subtitle**           | updates the displayed subtitle or subtitle object.                                 | Type: text graphics object or text value, depending on the object class. Supported values: a subtitle text object, character row vector, string scalar, or empty text.                    |
| **Tag**                | updates the stored object state.                                                   | Type: text scalar or character row vector. Supported values: empty text or an object identifier.                                                                                          |
| **TileArrangement**    | controls how a tiled layout allocates and grows tiles.                             | Type: text keyword. Supported values: 'fixed' or 'flow'.                                                                                                                                  |
| **TileIndexing**       | updates the stored object state.                                                   | Type: integer scalar or numeric vector. Supported values: finite integer value, finite numeric value, or vector required by the property.                                                 |
| **TileSpacing**        | changes spacing between tiles in a tiled layout.                                   | Type: text keyword. Supported values: 'loose', 'compact', 'tight', or 'none'.                                                                                                             |
| **Title**              | updates the displayed title or the title object associated with the graphics item. | Type: text graphics object or text value, depending on the object class. Supported values: a title text object, character row vector, string scalar, or empty text.                       |
| **ToolBar**            | updates rendered output on the next graphics refresh.                              | Type: text scalar or character row vector. Supported values: 'none', 'figure', 'auto'.                                                                                                    |
| **Type**               | Nelson computes this value; graphics operations update it.                         | Type: text scalar or character row vector. Supported values: read-only object type name, for example 'figure', 'axes', 'line', or 'scatter'.                                              |
| **Units**              | recomputes geometry, limits, or layout.                                            | Type: text scalar or character row vector. Supported values: 'pixels', 'normalized', 'inches', 'centimeters', 'points', 'characters', 'data'.                                             |
| **UserData**           | updates the stored object state.                                                   | Type: Nelson array. Supported values: any Nelson value, including [], numeric arrays, text, cells, structures, or handles.                                                                |
| **Visible**            | updates rendered output on the next graphics refresh.                              | Type: text scalar or character row vector. Supported values: 'on', 'off'.                                                                                                                 |
| **XLabel**             | updates the x-axis label object and refreshes axis decoration.                     | Type: text graphics object. Supported values: a text object used as the x-axis label.                                                                                                     |
| **YLabel**             | updates the y-axis label object and refreshes axis decoration.                     | Type: text graphics object. Supported values: a text object used as the y-axis label.                                                                                                     |

## 💡 Example

Create the graphics object and list its properties.

```matlab
f = figure('Visible', 'off');
h = tiledlayout(f, 1, 2);
names = properties(h);
close(f)
```

## 🔗 See also

[tiledlayout](../../../graphics/2_graphics_objects/2_layout_objects/tiledlayout.md), [properties](../../../handle/properties.md), [get](../../../handle/get.md), [set](../../../handle/set.md).

## 🕔 History

| Version | 📄 Description       |
| ------- | -------------------- |
| --      | Property page added. |

<!--
## 👤 Author

Allan CORNET
-->
