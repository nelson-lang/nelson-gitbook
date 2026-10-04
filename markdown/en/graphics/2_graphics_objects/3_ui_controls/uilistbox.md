# uilistbox

Create list box component.

## 📝 Syntax

- h = uilistbox()
- h = uilistbox(parent)
- h = uilistbox(..., propertyName, propertyValue)

## 📥 Input argument

- parent - parent container.
- propertyName, propertyValue - name-value pairs.

## 📤 Output argument

- h - UI component object.

## 📄 Description

<b>lb = uilistbox</b> creates a list box. <b>Items</b>/<b>ItemsData</b> follow the drop-down mapping rules; <b>Multiselect</b> 'on' allows multiple selection (cell <b>Value</b>). Callback <b>ValueChangedFcn</b> (event data: <b>Value</b>, <b>PreviousValue</b>, <b>ValueIndex</b>, <b>PreviousValueIndex</b>).

## 💡 Examples

Captured UI component for the help image.

```matlab
f = uifigure('Visible', 'off', 'Name', 'List box', 'Position', [100 100 420 260]);
lb = uilistbox(f, 'Items', {'Option 1', 'Option 2', 'Option 3'}, 'Position', [130 65 160 120]);
lb.Value = 'Option 2';
drawnow();
```

<img src="uilistbox_example.svg" align="middle"/>
uilistbox

```matlab

f = uifigure();
lb = uilistbox(f, 'Items', {'Item 1', 'Item 2', 'Item 3'}, 'Multiselect', 'on');
lb.Value = {'Item 1', 'Item 3'};

```

## 🔗 See also

[uifigure](../../../gui/uifigure.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
