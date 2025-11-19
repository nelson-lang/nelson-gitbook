# surf

surface plot.

## 📝 Syntax

- surf(X, Y, Z)
- surf(X, Y, Z, C)
- surf(Z)
- surf(Z, C)
- surf(parent, ...)
- surf(..., propertyName, propertyValue)
- go = surf(...)

## 📥 Input argument

- X - x-coordinates: vector or matrix.
- Y - y-coordinates: vector or matrix.
- Z - z-coordinates: vector or matrix.
- C - Color array: m-by-n-by-3 array of RGB triplets.
- parent - a scalar graphics object value: parent container, specified as a axes.
- propertyName - a scalar string or row vector character.
- propertyValue - a value.

## 📤 Output argument

- go - a graphics object: surface type.

## 📄 Description

<b>surf</b> creates a 3D surface plot. It can be used to plot data in the form of a matrix or a function of two variables.

You can customize the appearance of the plot using various options such as color, lighting, and shading.

For example, you can use the colormap option to change the color of the surface, and the FaceLighting option to change the lighting of the surface.

Properties:

| Property                     | Description                                                                                                                                                                                                                                                                                                                         |
| ---------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **AlphaData**                | Transparency data: array same size as ZData or 1 (default).                                                                                                                                                                                                                                                                         |
| **AlphaDataMapping**         | Interpretation of AlphaData values: 'direct', 'none' or 'scaled' (default).                                                                                                                                                                                                                                                         |
| **AmbientStrength**          | Strength of ambient light: scalar in [0, 1].                                                                                                                                                                                                                                                                                        |
| **BackFaceLighting**         | Face lighting when normals point away from camera: 'unlit', 'lit' or 'reverselit' (default).                                                                                                                                                                                                                                        |
| **CData**                    | Vertex colors: 2-D or 3-D array.                                                                                                                                                                                                                                                                                                    |
| **CDataMapping**             | Color mapping method: 'direct', 'scaled' (default).                                                                                                                                                                                                                                                                                 |
| **CDataMode**                | Selection mode for CData: 'manual', 'auto' (default).                                                                                                                                                                                                                                                                               |
| **Children**                 | currently not used: []                                                                                                                                                                                                                                                                                                              |
| **DiffuseStrength**          | Strength of diffuse light: scalar in range [0, 1].                                                                                                                                                                                                                                                                                  |
| **EdgeAlpha**                | Edge transparency: scalar value in range [0, 1].                                                                                                                                                                                                                                                                                    |
| **EdgeColor**                | Edge line color: RGB triplets.                                                                                                                                                                                                                                                                                                      |
| **EdgeLighting**             | Effect of light objects on edges: 'flat', 'gouraud' or 'none' (default).                                                                                                                                                                                                                                                            |
| **FaceAlpha**                | Face transparency: scalar in range [0, 1].                                                                                                                                                                                                                                                                                          |
| **FaceColor**                | Face color: RGB triplet.                                                                                                                                                                                                                                                                                                            |
| **FaceLighting**             | Effect of light objects on faces: 'gouraud', 'none' or 'flat' (default).                                                                                                                                                                                                                                                            |
| **LineStyle**                | Line style: '--', ':', '-.', 'none' or '-' (default).                                                                                                                                                                                                                                                                               |
| **LineWidth**                | Line width: positive value, 0.5 (default).                                                                                                                                                                                                                                                                                          |
| **Marker**                   | Marker symbol: 'o' (circle), '+' (Plus sign), '\*' (asterisk), '.' (point), 'x' (cross), '\_' (horizontal line), '\|' (vertical line), 'square', 'diamond', '^' (Upward-pointing triangle), 'v' (Downward-pointing triangle), '' (Right-pointing triangle), '' (Left-pointing triangle), 'pentagram', 'hexagram', 'none' (default). |
| **MarkerEdgeColor**          | Marker outline color: RGB triplet.                                                                                                                                                                                                                                                                                                  |
| **MarkerFaceColor**          | Marker fill color: RGB triplet.                                                                                                                                                                                                                                                                                                     |
| **MarkerSize**               | Marker size: scalar positive value.                                                                                                                                                                                                                                                                                                 |
| **MeshStyle**                | Edges to display: 'row', 'column' or 'both' (default).                                                                                                                                                                                                                                                                              |
| **Parent**                   | Parent: axes object.                                                                                                                                                                                                                                                                                                                |
| **SpecularColorReflectance** | Color of specular reflections: scalar in range [0, 1].                                                                                                                                                                                                                                                                              |
| **SpecularExponent**         | Size of specular spot: scalar greater than or equal to 1.                                                                                                                                                                                                                                                                           |
| **SpecularStrength**         | Strength of specular reflection: scalar in range [0, 1].                                                                                                                                                                                                                                                                            |
| **Tag**                      | Object identifier: character vector, string scalar or '' (default).                                                                                                                                                                                                                                                                 |
| **Type**                     | Type of graphics object: 'surface'.                                                                                                                                                                                                                                                                                                 |
| **UserData**                 | User data: array or [] (default).                                                                                                                                                                                                                                                                                                   |
| **VertexNormals**            | Normal vectors for each surface vertex: m-by-n-by-3 array or [] (default).                                                                                                                                                                                                                                                          |
| **Visible**                  | State of visibility: 'off' or 'on' (default).                                                                                                                                                                                                                                                                                       |
| **XData**                    | x-coordinate data: vector or matrix.                                                                                                                                                                                                                                                                                                |
| **XDataMode**                | Selection mode for XData: 'manual' or 'auto'.                                                                                                                                                                                                                                                                                       |
| **YData**                    | y-coordinate data: vector or matrix.                                                                                                                                                                                                                                                                                                |
| **YDataMode**                | Selection mode for YData: 'manual' or 'auto'.                                                                                                                                                                                                                                                                                       |
| **ZData**                    | z-coordinate data: vector or matrix.                                                                                                                                                                                                                                                                                                |
| **CreateFcn**                | Callback (function handle, string or cell) called when object is created. Set this property on an existing component has no effect.                                                                                                                                                                                                 |
| **DeleteFcn**                | Callback (function handle, string or cell) called when object is deleted.                                                                                                                                                                                                                                                           |
| **BeingDeleted**             | Flag indicating that the object is being deleted.                                                                                                                                                                                                                                                                                   |

Some properties are available only for compatibility and have currently no effect on the surface.

## 💡 Examples

```matlab
f = figure();
[X, Y, Z] = peaks(35);
C(:, :, 1) = zeros(35);
C(:, :, 2) = ones(35) .* linspace(0.5, 0.6, 35);
C(:, :, 3) = ones(35) .* linspace(0, 1, 35);
S = surf(X, Y, Z, C)
```

<img src="surf_1.svg" align="middle"/>

```matlab
f = figure();
[X,Y] = meshgrid(-8:.5:8);
R = sqrt(X.^2 + Y.^2) + eps;
Z = sin(R)./R;
h = surf(X, Y, Z);
axis square
```

<img src="surf_2.svg" align="middle"/>

## 🔗 See also

[view](../graphics/view.md), [surface](../graphics/surface.md), [meshgrid](../elementary_functions/meshgrid.md).

## 🕔 History

| Version | 📄 Description                       |
| ------- | ------------------------------------ |
| 1.0.0   | initial version                      |
| 1.7.0   | CreateFcn, DeleteFcn callback added. |
| --      | BeingDeleted property added.         |

<!--
## 👤 Author

Allan CORNET
-->
