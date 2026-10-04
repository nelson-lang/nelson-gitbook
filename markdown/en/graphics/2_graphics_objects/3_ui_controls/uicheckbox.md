# uicheckbox

Create check box component.

## 📝 Syntax

- h = uicheckbox()
- h = uicheckbox(parent)
- h = uicheckbox(..., propertyName, propertyValue)

## 📥 Input argument

- parent - parent container.
- propertyName, propertyValue - name-value pairs.

## 📤 Output argument

- h - UI component object.

## 📄 Description

<b>cbx = uicheckbox</b> creates a check box with a logical <b>Value</b>, a <b>Text</b> label, <b>WordWrap</b>, fonts and a <b>ValueChangedFcn</b> callback (event data: <b>Value</b>, <b>PreviousValue</b>).

## 💡 Examples

Captured UI component for the help image.

```matlab
f = uifigure('Visible', 'off', 'Name', 'Check box', 'Position', [100 100 420 260]);
cb = uicheckbox(f, 'Text', 'Enable alerts', 'Value', true, 'Position', [130 120 170 24]);
drawnow();
```

<img src="uicheckbox_example.svg" align="middle"/>
uicheckbox

```matlab

f = uifigure();
cbx = uicheckbox(f, 'Text', 'Accept', 'Value', true, 'ValueChangedFcn', @(s, e) disp(e.Value));

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
