# text

creates text descriptions to data points.

## Syntax

- text(x, y, txt)
- text(x, y, z, txt)
- text(... , propertyName, propertyValue)
- text(ax, ...)
- go = text(...)

## Input argument

- x - x-coordinates: vector or matrix.
- y - y-coordinates: vector or matrix.
- z - z-coordinates: vector or matrix.
- parent - a scalar graphics object value: parent container, specified as a axes.
- text - Text to display: character vector, string scalar, string array or cell array.
- propertyName - a scalar string or row vector character.
- propertyValue - a value.

## Output argument

- go - a graphics object: text type.

## Description

  <p><b>figure</b> creates figure.</p>
  <p>Properties:</p>
  <p/>
  <p><b>BackgroundColor</b>: Color of text box background: RGB triplet.</p>
  <p><b>Children</b>:  Children: [].</p>
  <p><b>Color</b>: Text color: RGB triplet, [0 0 0] (default).</p>
  <p><b>EdgeColor</b>: Color of box outline: RGB triplet.</p>
  <p><b>Extent</b>: Size and location of rectangle that encloses text: four-element vector.</p>
  <p><b>FontAngle</b>: Character slant: 'italic' or 'normal' (default).</p>
  <p><b>FontName</b>: Font name: </p>
  <p><b>FontSize</b>: Font size: scalar value greater than zero.</p>
  <p><b>FontUnits</b>: Font size units: 'inches', 'centimeters', 'normalized', 'pixels' or 'points' (default).</p>
  <p><b>FontWeight</b>: Character thickness: 'bold' or 'normal' (default).</p>
  <p><b>HorizontalAlignment</b>: Horizontal alignment of text with respect to position point: 'center', 'right', 'left' (default).</p>
  <p><b>LineStyle</b>: Line style of box outline:  'none', '--', ':',  '-.' or '-' (default).</p>
  <p><b>LineWidth</b>: Width of box outline: scalar numeric value.</p>
  <p><b>Margin</b>: Space around text within the text box: scalar numeric value.</p>
  <p><b>Parent</b>: Parent: axes object.</p>
  <p><b>Position</b>: Location of text: two-element vector of form [x y] or three-element vector of form [x y z].</p>
  <p><b>Rotation</b>: Text orientation: scalar value in degrees.</p>
  <p><b>String</b>: Text to display: character vector, cell array of character vectors, string array, numeric value or '' (default).</p>
  <p><b>Tag</b>: Object identifier: character vector, string scalar or '' (default).</p>
  <p><b>Type</b>: Type of graphics object: 'text'.</p>
  <p><b>Units</b>: Position and extent units: 'normalized', 'inches', 'centimeters', 'characters', 'points', 'pixels' or 'data' (default).</p>
  <p><b>UserData</b>: User data: array or [] (default).</p>
  <p><b>VerticalAlignment</b>: Vertical alignment of text with respect to position point.</p>
  <p><b>Visible</b>: State of visibility: 'off' or 'on' (default).</p>
  <p/>
  <p>Some properties are available only for compatibility and have currently no effect on the text.</p>

## Examples

```matlab
f = figure(1)
t = text(0.5, 0.5, 'text here');
s = t.FontSize;
t.FontSize = 12;
t.Color = 'red';
```

<img src="text_1_1F5DE711.svg" align="middle"/>
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
      'rotation', t, ...
      'horizontalalignment', ha{nh}, ...
      'verticalalignment', va{nv}, ...
      'color', color{nv});
    end
  end
end
axis([0 1 0 1]);
title (_('Text alignment and rotation (0:45:360 degrees)'));
xlabel(_('Horizontal alignment'));
ylabel (_('Vertical alignment'));
```
<img src="text_2_7E6236BA.svg" align="middle"/>

## See also

[title](title.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
