# line

Create primitive line.

## 📝 Syntax

- go = line()
- po = line(x, y)
- go = line(x, y, z)
- go = line(ax, x, y, z)
- go = line(ax, x, y, z, propertyName, propertyValue)

## 📥 Input argument

- x, y , z - a scalar graphics object value: parent container, specified as a figure.
- ax - Target axes: axes object.
- propertyName - a scalar string or row vector character.
- propertyValue - a value.

## 📤 Output argument

- go - a graphics object: line type.

## 📄 Description

<b>line(x, y)</b> creates a line in the current axes with vectors <b>x</b> and <b>y</b>.

<b>line(x, y, z)</b> creates a line in three-dimensional coordinates.

Properties:

<b>Children</b> [] (currently not used).

<b>Color</b> Line color: RGB triplet, [0, 0, 0] or hexadecimal color code.

<b>DisplayName</b> Legend label: character vector or string scalar, '' (default).

<b>LineStyle</b> Line style: '--', ':', '-.', 'none' or '-' (default).

<b>LineWidth</b> Line width: scalar positive value.

<b>Marker</b> Marker symbol: 'o' (circle), '+' (Plus sign), '\*' (asterik), '.' (point), 'x' (cross), '\_' (horizontal line) , '|' (vertical line), 'square', 'diamond', '^' (Upward-pointing triangle), 'v' (Downward-pointing triangle), '>' (Right-pointing triangle), '<' (Left-pointing triangle), 'pentagram', 'hexagram', 'none'(default).

<b>MarkerEdgeColor</b> Marker outline color: RGB triplet.

<b>MarkerFaceColor</b> Marker fill color: RGB triplet.

<b>MarkerSize</b> Marker size: scalar positive value.

<b>Parent</b> Parent: axes graphics object.

<b>Tag</b> Object identifier: string scalar, character vector, '' (default).

<b>Type</b> Type of graphics object: 'line'

<b>UserData</b> User data: array, [] (default).

<b>Visible</b> State of visibility: 'off' or 'on' (default).

<b>XData</b> x values: vector, [0 1] (default).

<b>YData</b> y values: vector, [0 1] (default).

<b>ZData</b> z values: vector, [] (default).

<b>CreateFcn</b> Callback (function handle, string or cell) called when object is created. Set this property on an existing component has no effect.

<b>DeleteFcn</b> Callback (function handle, string or cell) called when object is deleted.

<b>BeingDeleted</b> Flag indicating that the object is being deleted.

## 💡 Examples

```matlab
f = figure();
x = linspace(0,10)';
y1 = sin(x);
y2 = cos(x);
line(x, y1, 'Color', [0 1 0])
line(x, y2, 'Color', [1 0 0])

```

<img src="line_xy.svg" align="middle"/>

```matlab
f = figure();
x = [1 9];
y = [2 12];
line(x,y,'Color','red','LineStyle','--')
```

<img src="line_linestyle.svg" align="middle"/>

```matlab
f = figure();
t = linspace(0,10*pi,400);
x = sin(t);
y = cos(t);
z = t;
line(x,y,z)
view(3)
```

<img src="line_xyz.svg" align="middle"/>

## 🔗 See also

[plot](../graphics/plot.md), [plot3](../graphics/plot3.md).

## 🕔 History

| Version | 📄 Description                       |
| ------- | ------------------------------------ |
| 1.0.0   | initial version                      |
| 1.7.0   | CreateFcn, DeleteFcn callback added. |
| --      | BeingDeleted property added.         |

## 👤 Author

Allan CORNET
