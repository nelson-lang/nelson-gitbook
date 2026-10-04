# uitogglebutton

Create toggle button in a button group.

## 📝 Syntax

- h = uitogglebutton()
- h = uitogglebutton(parent)
- h = uitogglebutton(..., propertyName, propertyValue)

## 📥 Input argument

- parent - parent container.
- propertyName, propertyValue - name-value pairs.

## 📤 Output argument

- h - UI component object.

## 📄 Description

<b>tb = uitogglebutton(bg)</b> creates a toggle button inside a uibuttongroup with exclusive selection. Properties: <b>Value</b>, <b>Text</b>, <b>Icon</b>, <b>IconAlignment</b>, alignments, <b>BackgroundColor</b>, fonts.

## 💡 Examples

Captured UI component for the help image.

```matlab
f = uifigure('Visible', 'off', 'Name', 'Toggle buttons', 'Position', [100 100 420 260]);
bg = uibuttongroup(f, 'Position', [95 60 230 140]);
tb1 = uitogglebutton(bg, 'Text', 'A', 'Position', [30 70 70 30]);
tb2 = uitogglebutton(bg, 'Text', 'B', 'Position', [125 70 70 30]);
tb2.Value = true;
drawnow();
```

<img src="uitogglebutton_example.svg" align="middle"/>
uitogglebutton

```matlab

f = uifigure();
bg = uibuttongroup(f);
tb1 = uitogglebutton(bg, 'Text', 'A');
tb2 = uitogglebutton(bg, 'Text', 'B');

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
