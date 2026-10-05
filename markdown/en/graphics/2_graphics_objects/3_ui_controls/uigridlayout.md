# uigridlayout

Create grid layout manager.

## 📝 Syntax

- h = uigridlayout()
- h = uigridlayout(parent)
- h = uigridlayout(..., propertyName, propertyValue)

## 📥 Input argument

- parent - parent container (uifigure, figure, uipanel, uitab, uibuttongroup, uigridlayout).
- propertyName, propertyValue - name-value pairs.

## 📤 Output argument

- h - container object.

## 📄 Description


<b>g = uigridlayout</b> creates a grid layout manager that positions its children in a configurable grid. <b>g = uigridlayout(parent, [r c])</b> creates an r-by-c grid. <b>RowHeight</b> and <b>ColumnWidth</b> accept fixed pixel sizes, weighted sizes ('1x', '2x', ...), and 'fit'. Children are placed via their <b>Layout.Row</b> / <b>Layout.Column</b> options (scalar or [start end] span); components added without explicit placement fill the grid left to right, top to bottom. Other properties: <b>RowSpacing</b>, <b>ColumnSpacing</b>, <b>Padding</b>, <b>BackgroundColor</b>, <b>Scrollable</b>.

## 💡 Examples

Captured UI component for the help image.

```matlab
f = uifigure('Visible', 'off', 'Name', 'Grid layout', 'Position', [100 100 420 260]);
g = uigridlayout(f, [2 2]);
b1 = uibutton(g, 'Text', 'One');
b2 = uibutton(g, 'Text', 'Two');
b3 = uibutton(g, 'Text', 'Span');
b3.Layout.Row = 2;
b3.Layout.Column = [1 2];
drawnow();
```
<img src="uigridlayout_example.svg" align="middle"/>
uigridlayout

```matlab

f = uifigure();
g = uigridlayout(f, [2 2]);
b1 = uibutton(g, 'Text', 'One');
b2 = uibutton(g, 'Text', 'Two');
b3 = uibutton(g, 'Text', 'Span');
b3.Layout.Column = [1 2];
g.RowHeight = {22, '1x'};

```


## 🔗 See also

[uifigure](../../../gui/uifigure.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
