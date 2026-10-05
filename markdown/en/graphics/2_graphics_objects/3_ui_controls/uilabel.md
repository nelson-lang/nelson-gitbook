# uilabel

Create label component.

## 📝 Syntax

- lbl = uilabel()
- lbl = uilabel(parent)
- lbl = uilabel(..., propertyName, propertyValue)

## 📥 Input argument

- parent - figure created with uifigure, or figure graphics object.
- propertyName - property name: a scalar string or row vector character.
- propertyValue - property value: a value compatible with property name.

## 📤 Output argument

- lbl - a Label object.

## 📄 Description


<b>lbl = uilabel</b> creates a label in a new figure and returns the Label object. Nelson calls the uifigure function to create the figure. 

<b>lbl = uilabel(parent)</b> creates the label in the specified parent container. 

<b>lbl = uilabel(..., propertyName, propertyValue)</b> specifies label properties as one or more name-value arguments: <b>Text</b>, <b>Interpreter</b>, <b>HorizontalAlignment</b>, <b>VerticalAlignment</b>, <b>WordWrap</b>, <b>FontName</b>, <b>FontSize</b>, <b>FontWeight</b>, <b>FontAngle</b>, <b>FontColor</b>, <b>BackgroundColor</b>, <b>Enable</b>, <b>Visible</b>, <b>Tooltip</b>, <b>Position</b>, ...

## 💡 Examples

Captured UI component for the help image.

```matlab
f = uifigure('Visible', 'off', 'Name', 'Labels', 'Position', [100 100 460 280]);
titleLabel = uilabel(f, 'Text', 'Sensor status', 'FontSize', 18, 'FontWeight', 'bold', 'BackgroundColor', [0.88 0.94 1.00], 'Position', [55 165 350 42]);
valueLabel = uilabel(f, 'Text', '42.5 C', 'FontSize', 32, 'FontWeight', 'bold', 'FontColor', [0.10 0.35 0.72], 'HorizontalAlignment', 'center', 'BackgroundColor', [0.94 0.96 0.98], 'Position', [55 85 350 64]);
drawnow();
```
<img src="uilabel_example.svg" align="middle"/>
Label in a uifigure

```matlab

f = uifigure();
lbl = uilabel(f, 'Text', 'Result:', 'Position', [100 100 100 22], 'FontWeight', 'bold')

```


## 🔗 See also

[uibutton](../../../graphics/2_graphics_objects/3_ui_controls/uibutton.md), [uifigure](../../../gui/uifigure.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
