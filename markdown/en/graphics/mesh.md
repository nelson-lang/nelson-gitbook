# mesh

Mesh surface plot.

## Syntax

- mesh(X, Y, Z)
- mesh(Z)
- mesh(Z, C)
- mesh(X, Y, Z, C)
- mesh(parent, ...)
- mesh(..., propertyName, propertyValue)
- go = mesh(...)

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
            <b>mesh</b> creates a 3-D wireframe mesh.</p>
<p>You can customize the appearance of the plot using various options such as color, lighting, and shading.</p>

## Examples

```matlab
f = figure();
[X, Y] = meshgrid(-8:.5:8);
R = sqrt(X.^2 + Y.^2) + eps;
Z = sin(R) ./ R;
mesh(X, Y, Z)
axis square
```

<img src="mesh_1.svg" align="middle"/>

```matlab
f = figure();
F = str2func('@(z) z .^ 3 - 1');
x = linspace(-2, 2, 100);
y = linspace(-2, 2, 100);
[X, Y] = meshgrid(x, y);
Z = X + 1i*Y;
W = F(Z);
mesh(real(W), imag(W), abs(W))
xlabel('Real')
ylabel('Imaginary')
zlabel('Magnitude')
```

<img src="mesh_2.svg" align="middle"/>

## See also

[surf](../graphics/surf.md), [meshgrid](../elementary_functions/meshgrid.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
