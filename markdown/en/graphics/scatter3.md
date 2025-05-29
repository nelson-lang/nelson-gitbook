# scatter3

3D Scatter plot.

## Syntax

- scatter3(x, y, z)
- scatter3(x, y, z, sz)
- scatter3(x, y, z, sz, c)
- scatter3(..., 'filled')
- scatter3(..., marker)
- scatter3(ax, ...)
- scatter3(..., propertyName, propertyValue)
- s = scatter3(...)

## Input argument

- X - x-coordinates: vector or matrix.
- Y - y-coordinates: vector or matrix.
- Z - z-coordinates: vector or matrix.
- sz - Marker size: numeric scalar, vector, [] (default: 36)
- c - Marker color: short color name, color name, RGB triplet or vector of colormap indices
- ax - a scalar graphics object value: parent container, specified as a axes.
- propertyName - a scalar string or row vector character. see help of 'line' for property list.
- propertyValue - a value.

## Output argument

- s - a graphics object: scatter type or array of scatter.

## Description

  <p><b>scatter(x, y, z)</b> generates a scatter plot by placing circular markers at the coordinates defined by the vectors <b>x</b>, <b>y</b> and <b>z</b>.</p>
  <p>If you intend to display a single dataset, ensure that both <b>x</b>, <b>y</b> and <b>z</b> are vectors of the same length.</p>
  <p>To visualize multiple datasets on a shared set of axes, you can achieve this by using a matrix for either <b>x</b>, <b>y</b> or <b>z</b>, while keeping the other as a vector.</p>
  <p>This allows you to overlay or compare multiple datasets within the same plot.</p>
  <p/>
  <p/>
  <p>Scatter Properties:</p>
  <p/>
  <p><b>AlphaData</b>: Marker face transparency, 1 (default) or array the same size as <b>XData</b></p>
  <p><b>BeingDeleted</b>: Flag indicating that the object is being deleted.</p>
  <p><b>BusyAction</b>: Callback queuing specified as 'queue' (default) or 'cancel'. The property determines how Nelson handles the execution of interrupting callbacks.</p>
  <p><b>CData</b> Marker colors: [] (default), RGB triplet, matrix of RGB triplets or vector.</p>
  <p>marker color to use for each data series:</p>
  <p><b>'k'</b>, <b>'black'</b>: Color Black</p>
  <p><b>'y'</b>, <b>'yellow'</b>: Color Yellow</p>
  <p><b>'m'</b>, <b>'magenta'</b>: Color Magenta</p>
  <p><b>'c'</b>, <b>'cyan'</b>: Color Cyan</p>
  <p><b>'r'</b>, <b>'red'</b>: Color Red</p>
  <p><b>'b'</b>, <b>'blue'</b>: Color Blue</p>
  <p><b>'g'</b>, <b>'green'</b>: Color Green</p>
  <p/>
  <p><b>CDataMode</b> Selection mode for CData: 'manual', 'auto' (default).</p>
  <p><b>Children</b>: Children.</p>
  <p><b>CreateFcn</b>: Component creation function.</p>
  <p><b>DeleteFcn</b>: Component deletion function.</p>
  <p><b>DisplayName</b> Legend label: character vector or string scalar, '' (default).</p>
  <p><b>Interruptible</b>: Callback interruption 'on' (default).</p>
  <p><b>LineWidth</b> Line width: scalar positive value.</p>
  <p><b>Marker</b>Marker symbol:</p>
  <p>marker specifies the symbol to be drawn at each data point:</p>
  <p><b>'o'</b>: Circle symbol</p>
  <p><b>'x'</b>: Times symbol</p>
  <p><b>'+'</b>: Plus symbol</p>
  <p><b>'*'</b>: Asterisk symbol</p>
  <p><b>'.'</b>: Dot symbol</p>
  <p><b>'s'</b>: Square symbol</p>
  <p><b>'d'</b>: Diamond symbol</p>
  <p><b>'v'</b>: Downward-pointing triangle symbol</p>
  <p><b>'^'</b>: Upward-pointing triangle symbol</p>
  <p><b>'&gt;'</b>: Left-pointing triangle symbol</p>
  <p><b>'&lt;'</b>: Right-pointing triangle symbol</p>
  <p/>
  <p><b>MarkerEdgeColor</b> Marker outline color: RGB triplet.</p>
  <p><b>MarkerEdgeAlpha</b> Marker edge transparency: scalar in range [0,1], 'flat or 1 (default).</p>
  <p>To assign distinct transparency values to the edges of each point in a plot, set the AlphaData property to a vector matching the size of the <b>XData</b> property and set the <b>MarkerEdgeAlpha</b> property to <b>'flat'</b>.</p>
  <p><b>MarkerFaceColor</b> Marker fill color: RGB triplet.</p>
  <p><b>MarkerFaceAlpha</b> Marker face transparency: scalar in range [0,1], 'flat or 1 (default).</p>
  <p>To assign distinct transparency values to the faces of each point in a plot, set the AlphaData property to a vector matching the size of the <b>XData</b> property and set the <b>MarkerFaceAlpha</b> property to <b>'flat'</b>.</p>
  <p><b>Parent</b> Parent container: Figure graphics object.</p>
  <p><b>SizeData</b>: Marker sizes:[] (default), scalar or vector.</p>
  <p><b>Tag</b> Object identifier: character vector, string scalar or '' (default).</p>
  <p><b>Type</b>: Type of graphics object 'scatter'.</p>
  <p><b>UserData</b> User data: array or []</p>
  <p><b>Visible</b> State of visibility: 'on' (default) or 'off'.</p>
  <p><b>XData</b>: x values: vector or matrix or [] (default).</p>
  <p><b>YData</b>: y values: vector or matrix or [] (default).</p>
  <p><b>ZData</b>: z values: vector or matrix or [] (default).</p>
  <p><b>XDataMode</b> Selection mode for XData: 'manual' or 'auto'.</p>

## Example

```matlab
f = figure();
n = 100;
x = randn(n,1);
y = randn(n,1);
z = randn(n,1);
c = z;
sz = 20 + 50 * sqrt(x.^2 + y.^2 + z.^2);
scatter3(x, y, z, sz, c, 'filled');
% Add labels and title
xlabel('X Axis');
ylabel('Y Axis');
zlabel('Z Axis');
title('3D Scatter Plot Demo');
grid on;
axis equal;
view(-66.5, 12);
```

<img src="scatter3_1_8A184175.svg" align="middle"/>

## See also

[scatter](scatter.md), [plot](plot.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.14.0  | initial version |

## Author

Allan CORNET
