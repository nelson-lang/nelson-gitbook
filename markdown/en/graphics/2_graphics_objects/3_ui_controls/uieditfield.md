# uieditfield

Create text or numeric edit field.

## 📝 Syntax

- h = uieditfield()
- h = uieditfield(parent)
- h = uieditfield(..., propertyName, propertyValue)

## 📥 Input argument

- parent - parent container.
- propertyName, propertyValue - name-value pairs.

## 📤 Output argument

- h - UI component object.

## 📄 Description

<b>ef = uieditfield</b> creates a text edit field; <b>uieditfield(parent, 'numeric')</b> creates a numeric edit field. Text style: <b>Value</b> (char), <b>CharacterLimits</b>, <b>InputType</b>, <b>ValueChangingFcn</b>. Numeric style: <b>Value</b> (double), <b>Limits</b>, <b>LowerLimitInclusive</b>/<b>UpperLimitInclusive</b>, <b>RoundFractionalValues</b>, <b>ValueDisplayFormat</b>, <b>AllowEmpty</b>. Both: <b>Editable</b>, <b>HorizontalAlignment</b>, <b>Placeholder</b>, <b>ValueChangedFcn</b>.

## 💡 Examples

Captured UI component for the help image.

```matlab
f = uifigure('Visible', 'off', 'Name', 'Edit fields', 'Position', [100 100 420 260]);
ef = uieditfield(f, 'Position', [95 135 230 24]);
ef.Value = 'Sample text';
nf = uieditfield(f, 'numeric', 'Position', [95 90 120 24]);
nf.Value = 42.5;
drawnow();
```

<img src="uieditfield_example.svg" align="middle"/>
uieditfield

```matlab

f = uifigure();
ef = uieditfield(f, 'Value', 'hello');
nef = uieditfield(f, 'numeric', 'Limits', [0 100], 'Value', 42);

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
