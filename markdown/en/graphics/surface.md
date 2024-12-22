# surface

Primitive surface plot.

## Syntax

- surface(X, Y, Z)
- surface(X, Y, Z, C)
- surface(Z)
- surface(Z, C)
- surface(parent, ...)
- surface(..., propertyName, propertyValue)
- go = surface(...)

## Input argument

- X - x-coordinates: vector or matrix.
- Y - y-coordinates: vector or matrix.
- Z - z-coordinates: vector or matrix.
- C - Color array: m-by-n-by-3 array of RGB triplets.
- parent - a scalar graphics object value: parent container, specified as a axes.
- propertyName - a scalar string or row vector character.
- propertyValue - a value.

## Output argument

- go - a graphics object: surface type.

## Description

  <p><b>surf</b> and <b>surface</b> functions are both used to create 3D surface plots, but there are some slight differences between the two.</p>
  <p><b>surf</b> function is used to plot a surface defined by a function of two variables, or by a set of scattered data points.</p>
  <p>It requires three input arguments: X, Y, and Z. X and Y define the coordinates of the data points, and Z defines the height of the surface at each point.</p>
  <p><b>surf</b> function also provides additional options for customizing the appearance of the plot, such as lighting and color.</p>
  <p/>
  <p><b>surface</b> function is used to plot a surface defined by a matrix of data. It requires three input arguments: X, Y, and Z. X and Y define the coordinates of the data points, and Z is a matrix that defines the height of the surface at each point.</p>
  <p>The size of Z must match the size of X and Y. The surface function also provides additional options for customizing the appearance of the plot, such as lighting and color.</p>
  <p>In summary, both <b>surf</b> and <b>surface</b> functions are used for 3D surface plots but <b>surf</b> is used for a surface defined by a function of two variables or by a set of scattered data points, while <b>surface</b> is used for a surface defined by a matrix of data, and the size of Z must match the size of X and Y.</p>

## Example

```matlab
f = figure();
data = peaks(50);
ax1 = subplot(1, 2, 1);
s1 = surface(ax1, data);
ax2 = subplot(1, 2, 2);
s2 = surf(ax2, data);
```

<img src="surface_1_E814CB13.svg" align="middle"/>

## See also

[surf](surf.md), [view](view.md), [meshgrid](../elementary_functions/meshgrid.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
