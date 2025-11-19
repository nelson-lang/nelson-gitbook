# scatter3

3D Scatter plot.

## 📝 Syntax

- scatter3(x, y, z)
- scatter3(x, y, z, sz)
- scatter3(x, y, z, sz, c)
- scatter3(..., 'filled')
- scatter3(..., marker)
- scatter3(ax, ...)
- scatter3(..., propertyName, propertyValue)
- s = scatter3(...)

## 📥 Input argument

- X - x-coordinates: vector or matrix.
- Y - y-coordinates: vector or matrix.
- Z - z-coordinates: vector or matrix.
- sz - Marker size: numeric scalar, vector, [] (default: 36)
- c - Marker color: short color name, color name, RGB triplet or vector of colormap indices
- ax - a scalar graphics object value: parent container, specified as a axes.
- propertyName - a scalar string or row vector character. see help of 'line' for property list.
- propertyValue - a value.

## 📤 Output argument

- s - a graphics object: scatter type or array of scatter.

## 📄 Description

<b>scatter(x, y, z)</b> generates a scatter plot by placing circular markers at the coordinates defined by the vectors <b>x</b>,<b>y</b> and <b>z</b>.

If you intend to display a single dataset, ensure that both <b>x</b>,<b>y</b> and <b>z</b> are vectors of the same length.

To visualize multiple datasets on a shared set of axes, you can achieve this by using a matrix for either <b>x</b>, <b>y</b> or<b>z</b>, while keeping the other as a vector.

This allows you to overlay or compare multiple datasets within the same plot.

Scatter Properties:

| Property            | Description                                                                                                                                                                                                                                                                                    |
| ------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **AlphaData**       | Marker face transparency, 1 (default) or array the same size as **XData**                                                                                                                                                                                                                      |
| **BeingDeleted**    | Flag indicating that the object is being deleted.                                                                                                                                                                                                                                              |
| **BusyAction**      | Callback queuing specified as 'queue' (default) or 'cancel'. The property determines how Nelson handles the execution of interrupting callbacks.                                                                                                                                               |
| **CData**           | Marker colors: [] (default), RGB triplet, matrix of RGB triplets or vector. Marker color to use for each data series: 'k'/'black' (Black), 'y'/'yellow' (Yellow), 'm'/'magenta' (Magenta), 'c'/'cyan' (Cyan), 'r'/'red' (Red), 'b'/'blue' (Blue), 'g'/'green' (Green)                          |
| **CDataMode**       | Selection mode for CData: 'manual', 'auto' (default).                                                                                                                                                                                                                                          |
| **Children**        | Children.                                                                                                                                                                                                                                                                                      |
| **CreateFcn**       | Component creation function.                                                                                                                                                                                                                                                                   |
| **DeleteFcn**       | Component deletion function.                                                                                                                                                                                                                                                                   |
| **DisplayName**     | Legend label: character vector or string scalar, '' (default).                                                                                                                                                                                                                                 |
| **Interruptible**   | Callback interruption 'on' (default).                                                                                                                                                                                                                                                          |
| **LineWidth**       | Line width: scalar positive value.                                                                                                                                                                                                                                                             |
| **Marker**          | Marker symbol: 'o' (Circle), 'x' (Times), '+' (Plus), '\*' (Asterisk), '.' (Dot), 's' (Square), 'd' (Diamond), 'v' (Downward-pointing triangle), '^' (Upward-pointing triangle), '>' (Left-pointing triangle), '<' (Right-pointing triangle)                                                   |
| **MarkerEdgeColor** | Marker outline color: RGB triplet.                                                                                                                                                                                                                                                             |
| **MarkerEdgeAlpha** | Marker edge transparency: scalar in range [0,1], 'flat or 1 (default). To assign distinct transparency values to the edges of each point in a plot, set the AlphaData property to a vector matching the size of the **XData** property and set the **MarkerEdgeAlpha** property to **'flat'**. |
| **MarkerFaceColor** | Marker fill color: RGB triplet.                                                                                                                                                                                                                                                                |
| **MarkerFaceAlpha** | Marker face transparency: scalar in range [0,1], 'flat or 1 (default). To assign distinct transparency values to the faces of each point in a plot, set the AlphaData property to a vector matching the size of the**XData** property and set the**MarkerFaceAlpha** property to **'flat'**.   |
| **Parent**          | Parent container: Figure graphics object.                                                                                                                                                                                                                                                      |
| **SizeData**        | Marker sizes:[] (default), scalar or vector.                                                                                                                                                                                                                                                   |
| **Tag**             | Object identifier: character vector, string scalar or '' (default).                                                                                                                                                                                                                            |
| **Type**            | Type of graphics object 'scatter'.                                                                                                                                                                                                                                                             |
| **UserData**        | User data: array or []                                                                                                                                                                                                                                                                         |
| **Visible**         | State of visibility: 'on' (default) or 'off'.                                                                                                                                                                                                                                                  |
| **XData**           | x values: vector or matrix or [] (default).                                                                                                                                                                                                                                                    |
| **YData**           | y values: vector or matrix or [] (default).                                                                                                                                                                                                                                                    |
| **ZData**           | z values: vector or matrix or [] (default).                                                                                                                                                                                                                                                    |
| **XDataMode**       | Selection mode for XData: 'manual' or 'auto'.                                                                                                                                                                                                                                                  |

## 💡 Example

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

<img src="scatter3_1.svg" align="middle"/>

## 🔗 See also

[scatter](../graphics/scatter.md), [plot](../graphics/plot.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.14.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
