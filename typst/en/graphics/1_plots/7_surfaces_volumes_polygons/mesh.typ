#import "../../nelson_help.typ": *

= mesh <graphics:1_plots.7_surfaces_volumes_polygons.mesh>

Mesh surface plot.

== Syntax

- #raw("mesh(X, Y, Z)");
- #raw("mesh(Z)");
- #raw("mesh(Z, C)");
- #raw("mesh(X, Y, Z, C)");
- #raw("mesh(parent, ...)");
- #raw("mesh(..., propertyName, propertyValue)");
- #raw("go = mesh(...)");

== Input argument

/ X: x-coordinates: vector or matrix.
/ Y: y-coordinates: vector or matrix.
/ Z: z-coordinates: vector or matrix.
/ C: Color array: m-by-n-by-3 array of RGB triplets.
/ parent: a scalar graphics object value: parent container, specified as a axes.
/ propertyName: a scalar string or row vector character.
/ propertyValue: a value.

== Output argument

/ go: a graphics object: surface type.

== Description

#strong[mesh]; creates a 3-D wireframe mesh.

 You can customize the appearance of the plot using various options such as color, lighting, and shading.


== Examples

``````matlab
f = figure();
[X, Y] = meshgrid(-8:.5:8);
R = sqrt(X.^2 + Y.^2) + eps;
Z = sin(R) ./ R;
mesh(X, Y, Z)
axis square
``````


#align(center)[#image("mesh_1.svg")]
``````matlab
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
``````


#align(center)[#image("mesh_2.svg")]

== See also

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];, #nlink(<elementary_functions:1_array_creation_shape.meshgrid>)[meshgrid];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
