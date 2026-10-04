# uibutton

Create push button or state button component.

## 📝 Syntax

- btn = uibutton()
- btn = uibutton(style)
- btn = uibutton(parent)
- btn = uibutton(parent, style)
- btn = uibutton(..., propertyName, propertyValue)

## 📥 Input argument

- parent - figure created with uifigure, or figure graphics object.
- style - button style: 'push' (default) or 'state'.
- propertyName - property name: a scalar string or row vector character.
- propertyValue - property value: a value compatible with property name.

## 📤 Output argument

- btn - a Button or StateButton object.

## 📄 Description

<b>btn = uibutton</b> creates a push button in a new figure and returns the Button object. Nelson calls the uifigure function to create the figure.

<b>btn = uibutton(style)</b> creates a button of the specified style: <b>'push'</b> creates a push button (Button object, <b>ButtonPushedFcn</b> callback), <b>'state'</b> creates a state button (StateButton object, with a boolean <b>Value</b> and a <b>ValueChangedFcn</b> callback).

<b>btn = uibutton(parent)</b> creates the button in the specified parent container.

<b>btn = uibutton(..., propertyName, propertyValue)</b> specifies properties as one or more name-value arguments: <b>Text</b>, <b>Icon</b>, <b>IconAlignment</b>, <b>HorizontalAlignment</b>, <b>VerticalAlignment</b>, <b>WordWrap</b>, <b>FontName</b>, <b>FontSize</b>, <b>FontWeight</b>, <b>FontAngle</b>, <b>FontColor</b>, <b>BackgroundColor</b>, <b>Enable</b>, <b>Visible</b>, <b>Tooltip</b>, <b>Position</b>, <b>ButtonPushedFcn</b> (push), <b>Value</b> and <b>ValueChangedFcn</b> (state), ...

## 💡 Examples

Captured UI component for the help image.

```matlab
f = uifigure('Visible', 'off', 'Name', 'Buttons', 'Position', [100 100 420 260]);
btn = uibutton(f, 'Text', 'Run', 'Position', [85 130 110 30]);
sb = uibutton(f, 'state', 'Text', 'Enabled', 'Value', true, 'Position', [225 130 110 30]);
drawnow();
```

<img src="uibutton_example.svg" align="middle"/>
Push button with callback

```matlab

f = uifigure();
btn = uibutton(f, 'Text', 'Click me', 'Position', [100 100 100 22], 'ButtonPushedFcn', @(src, event) disp('pushed'))

```

State button

```matlab

f = uifigure();
sb = uibutton(f, 'state', 'Text', 'Enable option', 'Value', true)

```

## 🔗 See also

[uilabel](../../../graphics/uilabel.md), [uifigure](../../../gui/uifigure.md), [uicontrol](../../../graphics/uicontrol.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
