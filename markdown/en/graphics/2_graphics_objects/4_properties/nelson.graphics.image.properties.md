# image properties

image graphics object properties.

## 📄 Description

This page documents the visible properties returned by <b>properties</b> for a <b>image</b> graphics object.

| Property                  | Action                                                                           | Type and supported values                                                                                                                                                                     |
| ------------------------- | -------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **AlphaData**             | replaces data and recomputes automatic limits that depend on it.                 | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: [] or data with dimensions compatible with the rendered object.                         |
| **AlphaDataMapping**      | replaces data and recomputes automatic limits that depend on it.                 | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: [] or data with dimensions compatible with the rendered object.                         |
| **Annotation**            | updates the annotation metadata used by interactive tools and object inspection. | Type: graphics annotation object or empty handle value. Supported values: an annotation object associated with the graphics item, or an empty graphics handle when no annotation is attached. |
| **BeingDeleted**          | Nelson computes this value; graphics operations update it.                       | Type: text scalar or character row vector. Supported values: 'off', 'on'.                                                                                                                     |
| **BusyAction**            | controls whether an interrupting callback is queued or canceled.                 | Type: text scalar or character row vector. Supported values: 'queue', 'cancel'.                                                                                                               |
| **ButtonDownFcn**         | runs when the object receives a mouse-button event.                              | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array.                                                                         |
| **CData**                 | replaces data and recomputes automatic limits that depend on it.                 | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: [] or data with dimensions compatible with the rendered object.                         |
| **CDataMapping**          | replaces data and recomputes automatic limits that depend on it.                 | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: [] or data with dimensions compatible with the rendered object.                         |
| **Children**              | parenting operations update the vector.                                          | Type: graphics object handle vector. Supported values: empty vector or child handles.                                                                                                         |
| **Clipping**              | updates rendered output on the next graphics refresh.                            | Type: text scalar or character row vector. Supported values: 'on', 'off'.                                                                                                                     |
| **ContextMenu**           | attaches the menu used for context-click actions.                                | Type: graphics object handle scalar. Supported values: [] or a uicontextmenu handle.                                                                                                          |
| **CreateFcn**             | runs when the object is created.                                                 | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array.                                                                         |
| **DeleteFcn**             | runs when the object is deleted.                                                 | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array.                                                                         |
| **HandleVisibility**      | controls whether handle-search functions can find the object.                    | Type: text scalar or character row vector. Supported values: 'on', 'off', 'callback'.                                                                                                         |
| **HitTest**               | includes or excludes the object from mouse hit testing.                          | Type: text scalar or character row vector. Supported values: 'on', 'off'.                                                                                                                     |
| **Interpolation**         | changes how colors or samples are interpolated between stored data values.       | Type: text keyword. Supported values: 'nearest', 'linear', or 'none'.                                                                                                                         |
| **Interruptible**         | controls whether a running callback can be interrupted.                          | Type: text scalar or character row vector. Supported values: 'on', 'off'.                                                                                                                     |
| **MaxRenderedResolution** | updates the stored object state.                                                 | Type: integer scalar or numeric vector. Supported values: finite integer value, finite numeric value, or vector required by the property.                                                     |
| **Parent**                | reparents the object and updates Children on the old and new parents.            | Type: graphics object handle scalar. Supported values: a valid parent handle for the object class.                                                                                            |
| **PickableParts**         | selects which visible or invisible parts can receive mouse hits.                 | Type: text scalar or character row vector. Supported values: 'visible', 'all', 'none'.                                                                                                        |
| **Selected**              | updates rendered output on the next graphics refresh.                            | Type: text scalar or character row vector. Supported values: 'on', 'off'.                                                                                                                     |
| **SelectionHighlight**    | updates rendered output on the next graphics refresh.                            | Type: text scalar or character row vector. Supported values: 'on', 'off'.                                                                                                                     |
| **Tag**                   | updates the stored object state.                                                 | Type: text scalar or character row vector. Supported values: empty text or an object identifier.                                                                                              |
| **Type**                  | Nelson computes this value; graphics operations update it.                       | Type: text scalar or character row vector. Supported values: read-only object type name, for example 'figure', 'axes', 'line', or 'scatter'.                                                  |
| **UserData**              | updates the stored object state.                                                 | Type: Nelson array. Supported values: any Nelson value, including [], numeric arrays, text, cells, structures, or handles.                                                                    |
| **Visible**               | updates rendered output on the next graphics refresh.                            | Type: text scalar or character row vector. Supported values: 'on', 'off'.                                                                                                                     |
| **XData**                 | replaces data and recomputes automatic limits that depend on it.                 | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: [] or data with dimensions compatible with the rendered object.                         |
| **YData**                 | replaces data and recomputes automatic limits that depend on it.                 | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Supported values: [] or data with dimensions compatible with the rendered object.                         |

## 💡 Example

Create the graphics object and list its properties.

```matlab
f = figure('Visible', 'off');
ax = axes('Parent', f);
h = image('Parent', ax, 'CData', magic(3));
names = properties(h);
close(f)
```

## 🔗 See also

[image](../../../graphics/4_images/image.md), [imagesc](../../../graphics/4_images/imagesc.md), [imshow](../../../graphics/4_images/imshow.md), [properties](../../../handle/properties.md), [get](../../../handle/get.md), [set](../../../handle/set.md).

## 🕔 History

| Version | 📄 Description       |
| ------- | -------------------- |
| --      | Property page added. |

<!--
## 👤 Author

Allan CORNET
-->
