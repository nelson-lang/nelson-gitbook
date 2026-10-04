# uitextarea

Create text area component.

## 📝 Syntax

- h = uitextarea()
- h = uitextarea(parent)
- h = uitextarea(..., propertyName, propertyValue)

## 📥 Input argument

- parent - parent container.
- propertyName, propertyValue - name-value pairs.

## 📤 Output argument

- h - UI component object.

## 📄 Description

<b>ta = uitextarea</b> creates a multi-line text area. <b>Value</b> is a cell array of character vectors (one per line). Properties: <b>Editable</b>, <b>WordWrap</b>, <b>HorizontalAlignment</b>, <b>Placeholder</b>, <b>ValueChangedFcn</b>, <b>ValueChangingFcn</b>.

## 💡 Examples

Captured UI component for the help image.

```matlab
f = uifigure('Visible', 'off', 'Name', 'Text area', 'Position', [100 100 420 260]);
ta = uitextarea(f, 'Position', [95 75 230 115]);
ta.Value = {'Line one'; 'Line two'; 'Line three'};
drawnow();
```

<img src="uitextarea_example.svg" align="middle"/>
uitextarea

```matlab

f = uifigure();
ta = uitextarea(f, 'Value', {'first line', 'second line'});

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
