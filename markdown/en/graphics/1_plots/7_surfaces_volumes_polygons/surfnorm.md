# surfnorm

Compute or display surface normal vectors.

## 📝 Syntax

- surfnorm(Z)
- surfnorm(X, Y, Z)
- Nx = surfnorm(...)
- [Nx, Ny] = surfnorm(...)
- [Nx, Ny, Nz] = surfnorm(...)

## 📥 Input argument

- Z - Surface height data, specified as a real numeric matrix with at least three rows and three columns.
- X, Y - Surface coordinate matrices with the same size as Z.

## 📤 Output argument

- Nx, Ny, Nz - Normalized surface normal vector components.

## 📄 Description

<b>surfnorm</b> computes unit normal vectors for a surface. With no output arguments, it displays the surface and draws one normal segment at each surface point.

When only Z is specified, the x- and y-coordinates are the column and row indices of Z.

## 💡 Examples

Display normals on a surface.

```matlab
[X, Y, Z] = peaks(20);
surfnorm(X, Y, Z);
```

<img src="surfnorm_1.svg" align="middle"/>
Compute normal vector components.

```matlab
[Nx, Ny, Nz] = surfnorm(peaks(10));
```

## 🔗 See also

[surf](../../../graphics/1_plots/7_surfaces_volumes_polygons/surf.md), [quiver3](../../../graphics/1_plots/5_vector_fields/quiver3.md), [meshgrid](../../../elementary_functions/meshgrid.md).
