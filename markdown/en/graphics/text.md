# text

creates text descriptions to data points.

## 📝 Syntax

- text(x, y, txt)
- text(x, y, z, txt)
- text(... , propertyName, propertyValue)
- text(ax, ...)
- go = text(...)

## 📥 Input argument

- x - x-coordinates: vector or matrix.
- y - y-coordinates: vector or matrix.
- z - z-coordinates: vector or matrix.
- parent - a scalar graphics object value: parent container, specified as a axes.
- text - Text to display: character vector, string scalar, string array or cell array.
- propertyName - a scalar string or row vector character.
- propertyValue - a value.

## 📤 Output argument

- go - a graphics object: text type.

## 📄 Description

<b>figure</b> creates figure.
| Property | Description |
| --- | --- |
| **BackgroundColor** | Color of text box background: RGB triplet. |
| **Children** | Children: []. |
| **Color** | Text color: RGB triplet, [0 0 0] (default) or hexadecimal color code. |
| **EdgeColor** | Color of box outline: RGB triplet. |
| **Extent** | Size and location of rectangle that encloses text: four-element vector. |
| **FontAngle** | Character slant: 'italic' or 'normal' (default). |
| **FontName** | Font name: |
| **FontSize** | Font size: scalar value greater than zero. |
| **FontUnits** | Font size units: 'inches', 'centimeters', 'normalized', 'pixels' or 'points' (default). |
| **FontWeight** | Character thickness: 'bold' or 'normal' (default). |
| **HorizontalAlignment** | Horizontal alignment of text with respect to position point: 'center', 'right', 'left' (default). |
| **Interpreter** | 'tex' (default) interpreter or 'none'. |
| **LineStyle** | Line style of box outline: 'none', '--', ':', '-.' or '-' (default). |
| **LineWidth** | Width of box outline: scalar numeric value. |
| **Margin** | Space around text within the text box: scalar numeric value. |
| **Parent** | Parent: axes object. |
| **Position** | Location of text: two-element vector of form [x y] or three-element vector of form [x y z]. |
| **Rotation** | Text orientation: scalar value in degrees. |
| **String** | Text to display: character vector, cell array of character vectors, string array, numeric value or '' (default). |
| **Tag** | Object identifier: character vector, string scalar or '' (default). |
| **Type** | Type of graphics object: 'text'. |
| **Units** | Position and extent units: 'normalized', 'inches', 'centimeters', 'characters', 'points', 'pixels' or 'data' (default). |
| **UserData** | User data: array or [] (default). |
| **VerticalAlignment** | Vertical alignment of text with respect to position point. |
| **Visible** | State of visibility: 'off' or 'on' (default). |
| **CreateFcn** | Callback (function handle, string or cell) called when object is created. Set this property on an existing component has no effect. |
| **DeleteFcn** | Callback (function handle, string or cell) called when object is deleted. |
| **BeingDeleted** | Flag indicating that the object is being deleted. |

Some properties are available only for compatibility and have currently no effect on the text.

lists of the supported special characters for the 'tex' interpreter:

Superscript: ^{ } 'text^{superscript}'

Subscript: _{ } 'text_{subscript}'

| Character Sequence | Symbol |
| ------------------ | ------ |

|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|

## 💡 Examples

```matlab
f = figure(1)
t = text(0.5, 0.5, 'text here');
s = t.FontSize;
t.FontSize = 12;
t.Color = 'red';

```

<img src="text_1.svg" align="middle"/>

```matlab
figure();
ha = {'left', 'center', 'right'};
va = {'bottom', 'middle', 'top'};
color = {'red', 'green', 'blue'};
x = [0.25 0.5 0.75];
y = x;
for t = 0:45:359;
  for nh = 1:numel (ha)
    for nv = 1:numel (va)
      text (x(nh), y(nv), 'Nelson', ...
      'Rotation', t, ...
      'HorizontalAlignment', ha{nh}, ...
      'VerticalAlignment', va{nv}, ...
      'Color', color{nv});
    end
  end
end
axis([0 1 0 1]);
title (_('Text alignment and rotation (0:45:360 degrees)'));
xlabel(_('Horizontal alignment'));
ylabel (_('Vertical alignment'));
```

<img src="text_2.svg" align="middle"/>

```matlab
figure();
h1 = text(0.5, 0.5, 'Nelson \copyright')
h1.String
% Nelson is full unicode, so
h2 = text(0.5, 0.3, 'OR Nelson ©')
h2.String
```

## 🔗 See also

[title](../graphics/title.md).

## 🕔 History

| Version | 📄 Description                       |
| ------- | ------------------------------------ |
| 1.0.0   | initial version                      |
| 1.7.0   | CreateFcn, DeleteFcn callback added. |
| --      | BeingDeleted property added.         |

<!--
## 👤 Author

Allan CORNET
-->
