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

<p>
            line(x, y) creates a line in the current axes with vectors x and y.</p>

<p>
                line(x, y, z) creates a line in three-dimensional coordinates.</p>

<p>Properties:</p>

<p></p>

<p>
                    Children [] (currently not used).</p>

<p>
                        Color Line color: RGB triplet, [0, 0, 0] or hexadecimal color code.</p>

<p>
                            DisplayName Legend label: character vector or string scalar, '' (default).</p>

<p>
                                LineStyle Line style: '--', ':', '-.', 'none' or '-' (default).</p>

<p>
                                    LineWidth Line width: scalar positive value.</p>

<p>
                                        MarkerMarker symbol: 'o' (circle), '+' (Plus sign), '*' (asterik), '.' (point), 'x' (cross), '_' (horizontal line) , '|' (vertical line), 'square', 'diamond', '^' (Upward-pointing triangle), 'v' (Downward-pointing triangle), '>' (Right-pointing triangle), '<' (Left-pointing triangle), 'pentagram', 'hexagram', 'none'(default). </p>

<p>
                                            MarkerEdgeColor Marker outline color: RGB triplet.</p>

<p>
                                                MarkerFaceColor Marker fill color: RGB triplet.</p>

<p>
                                                    MarkerSize Marker size: scalar positive value.</p>

<p>
                                                        Parent Parent: axes graphics object.</p>

<p>
                                                            Tag Object identifier: string scalar, character vector, '' (default).</p>

<p>
                                                                Type Type of graphics object: 'line'</p>

<p>
                                                                    UserData User data: array, [] (default).</p>

<p>
                                                                        Visible State of visibility: 'off' or 'on' (default).</p>

<p>
                                                                            XData x values: vector, [0 1] (default).</p>

<p>
                                                                                YData y values: vector, [0 1] (default).</p>

<p>
                                                                                    ZData z values: vector, [] (default).</p>

<p>
                                                                                        CreateFcnCallback (function handle, string or cell) called when object is created.
Set this property on an existing component has no effect.</p>

<p>
                                                                                            DeleteFcnCallback (function handle, string or cell) called when object is deleted.</p>

<p></p>

<p>
                                                                                                BeingDeleted Flag indicating that the object is being deleted.</p>

## Examples

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

## See also

[plot](../graphics/plot.md), [plot3](../graphics/plot3.md).

## History

| Version | Description                          |
| ------- | ------------------------------------ |
| 1.0.0   | initial version                      |
| 1.7.0   | CreateFcn, DeleteFcn callback added. |
| --      | BeingDeleted property added.         |

## Author

Allan CORNET
