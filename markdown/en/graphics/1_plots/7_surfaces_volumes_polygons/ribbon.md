# ribbon

Ribbon plot.

## 📝 Syntax

- ribbon(Z)
- ribbon(Y, Z)
- ribbon(Y, Z, width)
- ribbon(ax, ...)
- s = ribbon(...)

## 📥 Input argument

- Z - z-coordinates: vector or matrix.
- Y - y-coordinates: vector or matrix.
- width - ribbon width.
- ax - a scalar graphics object value: parent container, specified as a axes.

## 📤 Output argument

- s - a vector of surface objects.

## 📄 Description

<b>ribbon(Z)</b> plots a 3D ribbon graph based on the matrix Z with the values of Y defining the y-axis of the graph.

<b>ribbon(Y, Z)</b> plots a 3D ribbon graph based on the matrix Y with the values of Z defining the z-axis of the graph.

<b>s = ribbon(...)</b> returns a vector of surface objects.

Note that Y and Z must have the same size.

## 💡 Example

```matlab
f = figure();
Y = peaks(25);
ribbon(Y)

```

<img src="ribbon_1.svg" align="middle"/>

## 🔗 See also

[surf](../../../graphics/1_plots/7_surfaces_volumes_polygons/surf.md), [meshgrid](../../../elementary_functions/meshgrid.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
