# uitable

Create table UI component (App Designer style).

## 📝 Syntax

- h = uitable()
- h = uitable(parent)
- h = uitable(..., propertyName, propertyValue)

## 📥 Input argument

- parent - parent object.
- propertyName, propertyValue - name-value pairs.

## 📤 Output argument

- h - UI object.

## 📄 Description


<b>t = uitable</b> creates a table component. <b>Data</b> accepts numeric, logical, or cell arrays. Properties: <b>ColumnName</b> ('numbered' or cell), <b>RowName</b>, <b>ColumnWidth</b>, <b>ColumnEditable</b>, <b>ColumnSortable</b>, <b>ColumnFormat</b>, <b>RowStriping</b>, <b>Selection</b>/<b>SelectionType</b>/<b>Multiselect</b>, <b>DisplayData</b> (read-only). Callbacks: <b>CellEditCallback</b> (event: Indices, EditData, NewData), <b>SelectionChangedFcn</b>.

## 💡 Examples

Captured UI component for the help image.

```matlab
f = uifigure('Visible', 'off', 'Name', 'Table', 'Position', [100 100 420 260]);
t = uitable(f, 'Data', magic(4), 'ColumnName', {'A', 'B', 'C', 'D'}, 'Position', [55 40 310 180]);
drawnow();
```
<img src="uitable_example.svg" align="middle"/>
uitable

```matlab

f = uifigure();
t = uitable(f, 'Data', magic(4), 'ColumnName', {'A', 'B', 'C', 'D'}, 'ColumnEditable', true(1, 4));

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
