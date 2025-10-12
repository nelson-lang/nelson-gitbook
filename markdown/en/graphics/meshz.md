# meshz

Mesh surface plot with curtain.

## Syntax

- meshz(X, Y, Z)
- meshz(Z)
- meshz(Z, C)
- meshz(X, Y, Z, C)
- meshz(parent, ...)
- meshz(..., propertyName, propertyValue)
- go = meshz(...)

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

<p>
            meshz creates a 3-D surface plot with a wireframe plot on top.</p>

<p>The function takes the same input arguments as the mesh function.</p>

## Example

```matlab
f = figure();
[X,Y] = meshgrid(-5:.5:5);
Z = Y.*sin(X) - X.*cos(Y);
s = meshz(X,Y,Z)
```

<img src="meshz_1.svg" align="middle"/>

## See also

[mesh](../graphics/mesh.md), [meshgrid](../elementary_functions/meshgrid.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
