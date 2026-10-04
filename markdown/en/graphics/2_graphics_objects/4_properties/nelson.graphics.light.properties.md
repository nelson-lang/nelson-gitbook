# light properties

light graphics object properties.

## 📄 Description

This page documents the visible properties returned by <b>properties</b> for a <b>light</b> graphics object.

| Property               | Action                                                                           | Type and supported values                                                                                                                                                                                                    |
| ---------------------- | -------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Annotation**         | updates the annotation metadata used by interactive tools and object inspection. | Type: graphics annotation object or empty handle value. Supported values: an annotation object associated with the graphics item, or an empty graphics handle when no annotation is attached.                                |
| **BeingDeleted**       | Nelson computes this value; graphics operations update it.                       | Type: text scalar or character row vector. Supported values: 'off', 'on'.                                                                                                                                                    |
| **BusyAction**         | controls whether an interrupting callback is queued or canceled.                 | Type: text scalar or character row vector. Supported values: 'queue', 'cancel'.                                                                                                                                              |
| **ButtonDownFcn**      | runs when the object receives a mouse-button event.                              | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array.                                                                                                        |
| **Children**           | parenting operations update the vector.                                          | Type: graphics object handle vector. Supported values: empty vector or child handles.                                                                                                                                        |
| **Color**              | updates rendered output on the next graphics refresh.                            | Type: color value. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB'. |
| **ContextMenu**        | attaches the menu used for context-click actions.                                | Type: graphics object handle scalar. Supported values: [] or a uicontextmenu handle.                                                                                                                                         |
| **CreateFcn**          | runs when the object is created.                                                 | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array.                                                                                                        |
| **DeleteFcn**          | runs when the object is deleted.                                                 | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array.                                                                                                        |
| **HandleVisibility**   | controls whether handle-search functions can find the object.                    | Type: text scalar or character row vector. Supported values: 'on', 'off', 'callback'.                                                                                                                                        |
| **HitTest**            | includes or excludes the object from mouse hit testing.                          | Type: text scalar or character row vector. Supported values: 'on', 'off'.                                                                                                                                                    |
| **Interruptible**      | controls whether a running callback can be interrupted.                          | Type: text scalar or character row vector. Supported values: 'on', 'off'.                                                                                                                                                    |
| **Parent**             | reparents the object and updates Children on the old and new parents.            | Type: graphics object handle scalar. Supported values: a valid parent handle for the object class.                                                                                                                           |
| **PickableParts**      | selects which visible or invisible parts can receive mouse hits.                 | Type: text scalar or character row vector. Supported values: 'visible', 'all', 'none'.                                                                                                                                       |
| **Position**           | recomputes geometry, limits, or layout.                                          | Type: finite numeric vector. Supported values: finite vector with the documented size, such as [left bottom width height], [x y z], [azimuth elevation], or [minor major].                                                   |
| **Selected**           | updates rendered output on the next graphics refresh.                            | Type: text scalar or character row vector. Supported values: 'on', 'off'.                                                                                                                                                    |
| **SelectionHighlight** | updates rendered output on the next graphics refresh.                            | Type: text scalar or character row vector. Supported values: 'on', 'off'.                                                                                                                                                    |
| **Style**              | updates rendered output on the next graphics refresh.                            | Type: text scalar or character row vector. Supported values: style names defined by this object, such as UI styles, light styles, chart styles, or line styles.                                                              |
| **Tag**                | updates the stored object state.                                                 | Type: text scalar or character row vector. Supported values: empty text or an object identifier.                                                                                                                             |
| **Type**               | Nelson computes this value; graphics operations update it.                       | Type: text scalar or character row vector. Supported values: read-only object type name, for example 'figure', 'axes', 'line', or 'scatter'.                                                                                 |
| **UserData**           | updates the stored object state.                                                 | Type: Nelson array. Supported values: any Nelson value, including [], numeric arrays, text, cells, structures, or handles.                                                                                                   |
| **Visible**            | updates rendered output on the next graphics refresh.                            | Type: text scalar or character row vector. Supported values: 'on', 'off'.                                                                                                                                                    |

## 💡 Example

Create the graphics object and list its properties.

```matlab
f = figure('Visible', 'off');
ax = axes('Parent', f);
h = light(ax);
names = properties(h);
close(f)
```

## 🔗 See also

[light](../../../graphics/3_labels_styling/3_interactions_camera_lighting/light.md), [properties](../../../handle/properties.md), [get](../../../handle/get.md), [set](../../../handle/set.md).

## 🕔 History

| Version | 📄 Description       |
| ------- | -------------------- |
| --      | Property page added. |

<!--
## 👤 Author

Allan CORNET
-->
