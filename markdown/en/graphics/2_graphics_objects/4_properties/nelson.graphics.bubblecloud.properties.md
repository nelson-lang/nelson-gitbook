# bubblecloud properties

bubblecloud graphics object properties.

## 📄 Description

This page documents the visible properties returned by <b>properties</b> for a <b>bubblecloud</b> graphics object.

| Property               | Action                                                                  | Type and supported values                                                                                                                                      |
| ---------------------- | ----------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Annotation**         | updates annotation metadata used by graphics tools.                     | Type: graphics annotation object or empty handle value. Supported values: an annotation object associated with the graphics item, or an empty graphics handle. |
| **BeingDeleted**       | reports whether deletion is in progress.                                | Type: text scalar or character row vector. Supported values: 'off', 'on'.                                                                                      |
| **BusyAction**         | controls callback queuing while another callback runs.                  | Type: text scalar or character row vector. Supported values: 'queue', 'cancel'.                                                                                |
| **ButtonDownFcn**      | runs when the object receives a mouse-button event.                     | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array.                                          |
| **Children**           | lists child graphics primitives owned by the chart.                     | Type: graphics object handle vector. Supported values: empty vector or child handles.                                                                          |
| **ContextMenu**        | attaches the menu used for context-click actions.                       | Type: graphics object handle scalar. Supported values: [] or a uicontextmenu handle.                                                                           |
| **CreateFcn**          | runs when the object is created.                                        | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array.                                          |
| **DeleteFcn**          | runs when the object is deleted.                                        | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array.                                          |
| **DisplayName**        | stores the label used by legends and object identification.             | Type: text value. Supported values: character row vector or string scalar.                                                                                     |
| **EdgeColor**          | sets the bubble outline color.                                          | Type: color value. Supported values: short color names, RGB triplet with values in [0,1], or hexadecimal color.                                                |
| **FaceColor**          | sets the bubble fill color.                                             | Type: color value or color keyword. Supported values: short color names, RGB triplet with values in [0,1], hexadecimal color, or 'flat'.                       |
| **GroupData**          | stores grouping labels used to color bubbles and create legend entries. | Type: cell array of character rows. Supported values: empty cell array or one label per bubble.                                                                |
| **GroupVariable**      | stores the table variable used for grouping labels.                     | Type: text value. Supported values: empty text or a source-table variable name.                                                                                |
| **HandleVisibility**   | controls handle discovery through graphics queries.                     | Type: text scalar or character row vector. Supported values: 'on', 'off', 'callback'.                                                                          |
| **HitTest**            | includes or excludes the object from mouse hit testing.                 | Type: text scalar or character row vector. Supported values: 'on', 'off'.                                                                                      |
| **InnerPosition**      | stores the inner chart rectangle.                                       | Type: numeric row vector. Supported values: four finite values [left bottom width height].                                                                     |
| **Interruptible**      | controls interruption of running callbacks.                             | Type: text scalar or character row vector. Supported values: 'on', 'off'.                                                                                      |
| **LabelData**          | stores labels displayed inside bubbles.                                 | Type: cell array of character rows. Supported values: empty cell array or one label per bubble.                                                                |
| **LabelVariable**      | stores the table variable used for bubble labels.                       | Type: text value. Supported values: empty text or a source-table variable name.                                                                                |
| **LegendTitle**        | sets the title displayed above group legend entries.                    | Type: text value. Supported values: character row vector, string scalar, or empty text.                                                                        |
| **OuterPosition**      | stores the outer chart rectangle.                                       | Type: numeric row vector. Supported values: four finite values [left bottom width height].                                                                     |
| **Parent**             | stores the parent graphics container.                                   | Type: graphics object handle scalar. Supported values: figure handle.                                                                                          |
| **PickableParts**      | controls which visible parts can be picked.                             | Type: text scalar or character row vector. Supported values: 'visible', 'all', 'none'.                                                                         |
| **Position**           | stores the chart position rectangle.                                    | Type: numeric row vector. Supported values: four finite values [left bottom width height].                                                                     |
| **Selected**           | controls selection state.                                               | Type: text scalar or character row vector. Supported values: 'on', 'off'.                                                                                      |
| **SelectionHighlight** | controls selection highlight display.                                   | Type: text scalar or character row vector. Supported values: 'on', 'off'.                                                                                      |
| **SizeData**           | stores numeric bubble sizes.                                            | Type: numeric row vector. Supported values: finite numeric values.                                                                                             |
| **SizeVariable**       | stores the table variable used for bubble sizes.                        | Type: text value. Supported values: empty text or a source-table variable name.                                                                                |
| **SourceTable**        | stores the table used to create the chart.                              | Type: table or empty array. Supported values: [] or a table supplied to bubblecloud.                                                                           |
| **Tag**                | stores user-defined text for identifying the object.                    | Type: text value. Supported values: character row vector or string scalar.                                                                                     |
| **Title**              | sets chart title text.                                                  | Type: text value. Supported values: character row vector, string scalar, or empty text.                                                                        |
| **Type**               | identifies the graphics object type.                                    | Type: text scalar or character row vector. Supported values: 'bubblecloud'.                                                                                    |
| **Units**              | sets units used by position properties.                                 | Type: text scalar or character row vector. Supported values: 'normalized', 'pixels', 'inches', 'centimeters', 'points', 'characters'.                          |
| **UserData**           | stores user data attached to the chart.                                 | Type: any Nelson value. Supported values: any value.                                                                                                           |
| **Visible**            | controls chart visibility.                                              | Type: text scalar or character row vector. Supported values: 'on', 'off'.                                                                                      |

## 💡 Example

Inspect bubblecloud properties.

```matlab
h = bubblecloud([10 20 30], {'A','B','C'});
props = properties(h)
```

## 🔗 See also

[bubblecloud](../../../graphics/1_plots/4_data_distribution_plots/bubblecloud.md), [properties](../../../handle/properties.md).
