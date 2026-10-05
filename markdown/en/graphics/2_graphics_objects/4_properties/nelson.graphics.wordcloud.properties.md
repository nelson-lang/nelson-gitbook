# wordcloud properties

wordcloud graphics object properties.

## 📄 Description


This page documents the visible properties returned by <b>properties</b> for a <b>wordcloud</b> graphics object. 

| Property | Action | Type and supported values | 
| --- | --- | --- | 
| **Annotation** | updates the annotation metadata used by interactive tools and object inspection. | Type: graphics annotation object or empty handle value. Supported values: an annotation object associated with the graphics item, or an empty graphics handle when no annotation is attached. | 
| **BeingDeleted** | Nelson computes this value; graphics operations update it. | Type: text scalar or character row vector. Supported values: 'off', 'on'. | 
| **Box** | controls whether the chart frame is displayed. | Type: text scalar or character row vector. Supported values: 'off', 'on'. | 
| **BusyAction** | controls whether an interrupting callback is queued or canceled. | Type: text scalar or character row vector. Supported values: 'queue', 'cancel'. | 
| **ButtonDownFcn** | runs when the object receives a mouse-button event. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **Children** | parenting operations update the vector. | Type: graphics object handle vector. Supported values: empty vector. | 
| **Color** | sets the default color used for rendered words. | Type: color value or color matrix. Supported values: short color names, RGB triplet with values in [0,1], hexadecimal color, or an n-by-3 color matrix. | 
| **ContextMenu** | attaches the menu used for context-click actions. | Type: graphics object handle scalar. Supported values: [] or a uicontextmenu handle. | 
| **CreateFcn** | runs when the object is created. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **DeleteFcn** | runs when the object is deleted. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **DisplayName** | updates the label used by legend entries and object identification. | Type: text value. Supported values: character row vector or string scalar. | 
| **FontName** | sets the font family used to render words. | Type: text value. Supported values: installed font family name as a character row vector or string scalar. | 
| **HandleVisibility** | controls whether handle-search functions can find the object. | Type: text scalar or character row vector. Supported values: 'on', 'off', 'callback'. | 
| **HighlightColor** | sets the color used by highlighted words. | Type: color value. Supported values: short color names, RGB triplet with values in [0,1], or hexadecimal color. | 
| **HitTest** | includes or excludes the object from mouse hit testing. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **Interruptible** | controls whether a running callback can be interrupted. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **InnerPosition** | stores the inner chart rectangle. | Type: numeric row vector. Supported values: four finite values [left bottom width height]. | 
| **Layout** | stores tiled layout placement information. | Type: graphics object handle scalar. Supported values: [] or a layout options handle. | 
| **LayoutNum** | selects the deterministic layout variant. | Type: finite numeric scalar. Supported values: positive integer values. | 
| **MaxDisplayWords** | sets the maximum number of displayed words. | Type: finite numeric scalar. Supported values: nonnegative integer values. | 
| **Parent** | sets the parent graphics container used by the object. | Type: graphics object handle scalar. Supported values: figure handle. | 
| **PickableParts** | controls whether visible or all object parts can be picked. | Type: text scalar or character row vector. Supported values: 'visible', 'all', 'none'. | 
| **OuterPosition** | stores the outer chart rectangle. | Type: numeric row vector. Supported values: four finite values [left bottom width height]. | 
| **Position** | stores the chart position rectangle. | Type: numeric row vector. Supported values: four finite values [left bottom width height]. | 
| **PositionConstraint** | selects which position rectangle is preserved during layout. | Type: text scalar or character row vector. Supported values: 'outerposition', 'innerposition'. | 
| **Selected** | marks the object as selected or not selected. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **SelectionHighlight** | controls display of selection handles. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **Shape** | sets the layout envelope for word placement. | Type: text scalar or character row vector. Supported values: 'oval', 'rectangle'. | 
| **SizeData** | sets the numeric weights used to size words. | Type: real numeric vector. Supported values: finite numeric values. | 
| **SizeVariable** | stores the table variable used for word sizes. | Type: text value. Supported values: [] or a variable name from the source table. | 
| **SizePower** | sets the exponent used when mapping word weights to font sizes. | Type: finite numeric scalar. Supported values: positive numeric scalar values. | 
| **SourceTable** | stores the table used to create the chart. | Type: table or empty value. Supported values: [] or a table supplied to wordcloud. | 
| **Tag** | stores user-defined text for identifying the object. | Type: text value. Supported values: character row vector or string scalar. | 
| **Title** | sets the chart title text. | Type: text value. Supported values: character row vector or string scalar. | 
| **TitleFontName** | sets the font family used to render the chart title. | Type: text value. Supported values: installed font family name as a character row vector or string scalar. | 
| **Type** | identifies the graphics object type. | Type: text scalar or character row vector. Supported values: 'wordcloud'. | 
| **Units** | sets units used by position properties. | Type: text scalar or character row vector. Supported values: 'normalized', 'pixels', 'inches', 'centimeters', 'points', 'characters'. | 
| **UserData** | stores user-defined data on the object. | Type: any Nelson value. Supported values: any value. | 
| **Visible** | shows or hides the object. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **WordData** | sets the words displayed by the chart. | Type: string vector or cell vector of character rows. Supported values: nonempty text values. | 
| **WordVariable** | stores the table variable used for displayed words. | Type: text value. Supported values: [] or a variable name from the source table. | 



## 💡 Example

Inspect wordcloud properties.

```matlab
h = wordcloud({'alpha','beta'}, [5 3]);
props = properties(h)
```


## 🔗 See also

[wordcloud](../../../graphics/1_plots/4_data_distribution_plots/wordcloud.md), [properties](../../../handle/properties.md).