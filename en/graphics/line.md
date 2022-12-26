# line

Create primitive line.

## Syntax

- go = line()
- po = line(x, y)
- go = line(x, y, z)
- go = line(ax, x, y, z)
- go = line(ax, x, y, z, propertyName, propertyValue)

## Input argument

- x, y , z - a scalar graphics object value: parent container, specified as a figure.
- ax - Target axes: axes object.
- propertyName - a scalar string or row vector character.
- propertyValue - a value.

## Output argument

- go - a graphics object: line type.

## Description

  <p><b>line(x, y)</b> creates a line in the current axes with vectors <b>x</b> and <b>y</b>.</p>
  <p><b>line(x, y, z)</b> creates a line in three-dimensional coordinates.</p>
  <p>Properties:</p>
  <p/>
  <p><b>Children</b> [] (currently not used).</p>
  <p><b>Color</b> Line color: RGB triplet, [0, 0, 0] </p>
  <p><b>DisplayName</b> Legend label: character vector or string scalar, '' (default).</p>
  <p><b>LineStyle</b> Line style: '--', ':', '-.', 'none' or '-' (default).</p>
  <p><b>LineWidth</b> Line width: scalar positive value.</p>
  <p><b>Marker</b>Marker symbol: 'o' (circle), '+' (Plus sign), '*' (asterik), '.' (point), 'x' (cross), '_' (horizontal line) , '|' (vertical line), 'square', 'diamond', '^' (Upward-pointing triangle), 'v' (Downward-pointing triangle), '&gt;' (Right-pointing triangle), '&lt;' (Left-pointing triangle), 'pentagram', 'hexagram', 'none'(default). </p>
  <p><b>MarkerEdgeColor</b> Marker outline color: RGB triplet.</p>
  <p><b>MarkerFaceColor</b> Marker fill color: RGB triplet.</p>
  <p><b>MarkerSize</b> Marker size: scalar positive value.</p>
  <p><b>Parent</b> Parent: axes graphics object.</p>
  <p><b>Tag</b> Object identifier: string scalar, character vector, '' (default).</p>
  <p><b>Type</b> Type of graphics object: 'line'</p>
  <p><b>UserData</b> User data: array, [] (default).</p>
  <p><b>Visible</b> State of visibility: 'off' or 'on' (default).</p>
  <p><b>XData</b> x values: vector, [0 1] (default).</p>
  <p><b>YData</b> y values: vector, [0 1] (default).</p>
  <p><b>ZData</b> z values: vector, [] (default).</p>
  <p/>

## Examples

```matlab
f = figure();
x = linspace(0,10)';
y1 = sin(x);
y2 = cos(x);
line(x, y1, 'Color', [0 1 0])
line(x, y2, 'Color', [1 0 0])
```

<img src="line_xy_BE15DD82.svg" align="middle"/>

```matlab
f = figure();
x = [1 9];
y = [2 12];
line(x,y,'Color','red','LineStyle','--')
```

<img src="line_linestyle_939A0995.svg" align="middle"/>

```matlab
f = figure();
t = linspace(0,10*pi,400);
x = sin(t);
y = cos(t);
z = t;
line(x,y,z)
view(3)
```

<img src="line_xyz_5C2DD736.svg" align="middle"/>

## See also

[plot](plot.md), [plot3](plot3.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
