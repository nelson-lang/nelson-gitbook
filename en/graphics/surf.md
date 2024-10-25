# surf

surface plot.

## Syntax

- surf(X, Y, Z)
- surf(X, Y, Z, C)
- surf(Z)
- surf(Z, C)
- surf(parent, ...)
- surf(..., propertyName, propertyValue)
- go = surf(...)

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

  <p><b>surf</b> creates a 3D surface plot. It can be used to plot data in the form of a matrix or a function of two variables.</p>
  <p>You can customize the appearance of the plot using various options such as color, lighting, and shading.</p>
  <p>For example, you can use the colormap option to change the color of the surface, and the FaceLighting option to change the lighting of the surface.</p>
  <p>Properties:</p>
  <p/>
  <p><b>AlphaData</b> Transparency data: array same size as ZData or 1 (default).</p>
  <p><b>AlphaDataMapping</b> Interpretation of AlphaData values: 'direct', 'none' or 'scaled' (default).</p>
  <p><b>AmbientStrength</b> Strength of ambient light: scalar in [0, 1].</p>
  <p><b>BackFaceLighting</b> Face lighting when normals point away from camera: 'unlit', 'lit' or 'reverselit' (default).</p>
  <p><b>CData</b> Vertex colors: 2-D or 3-D array.</p>
  <p><b>CDataMapping</b> Color mapping method: 'direct', 'scaled' (default).</p>
  <p><b>CDataMode</b> Selection mode for CData: 'manual', 'auto' (default).</p>
  <p><b>Children</b> currently not used: []</p>
  <p><b>DiffuseStrength</b> Strength of diffuse light: scalar in range [0, 1].</p>
  <p><b>EdgeAlpha</b> Edge transparency: scalar value in range[0, 1].</p>
  <p><b>EdgeColor</b> Edge line color: RGB triplets.</p>
  <p><b>EdgeLighting</b> Effect of light objects on edges: 'flat', 'gouraud' or 'none' (default).</p>
  <p><b>FaceAlpha</b> Face transparency: scalar in range [0, 1].</p>
  <p><b>FaceColor</b> Face color:  RGB triplet.</p>
  <p><b>FaceLighting</b> Effect of light objects on faces: 'gouraud', 'none' or 'flat' (default).</p>
  <p><b>LineStyle</b> Line style: '--', ':', '-.', 'none' or '-' (default).</p>
  <p><b>LineWidth</b> Line width: positive value, 0.5 (default).</p>
  <p><b>Marker</b>Marker symbol: 'o' (circle), '+' (Plus sign), '*' (asterik), '.' (point), 'x' (cross), '_' (horizontal line) , '|' (vertical line), 'square', 'diamond', '^' (Upward-pointing triangle), 'v' (Downward-pointing triangle), '&gt;' (Right-pointing triangle), '&lt;' (Left-pointing triangle), 'pentagram', 'hexagram', 'none'(default). </p>
  <p><b>MarkerEdgeColor</b> Marker outline color: RGB triplet.</p>
  <p><b>MarkerFaceColor</b> Marker fill color: RGB triplet.</p>
  <p><b>MarkerSize</b> Marker size: scalar positive value.</p>
  <p><b>MeshStyle</b> Edges to display: 'row', 'column' or 'both' (default).</p>
  <p><b>Parent</b> Parent: axes object.</p>
  <p><b>SpecularColorReflectance</b> Color of specular reflections: scalar in range [0, 1].</p>
  <p><b>SpecularExponent</b> Size of specular spot: scalar greater than or equal to 1.</p>
  <p><b>SpecularStrength</b>  Strength of specular reflection: scalar in range [0, 1].</p>
  <p><b>Tag</b> Object identifier: character vector, string scalar or '' (default).</p>
  <p><b>Type</b> Type of graphics object: 'surface'.</p>
  <p><b>UserData</b> User data: array or [] (default).</p>
  <p><b>VertexNormals</b> Normal vectors for each surface vertex: m-by-n-by-3 array or [] (default).</p>
  <p><b>Visible</b> State of visibility: 'off' or 'on' (default).</p>
  <p><b>XData</b> x-coordinate data: vector or matrix.</p>
  <p><b>XDataMode</b> Selection mode for XData: 'manual' or 'auto'.</p>
  <p><b>YData</b> y-coordinate data: vector or matrix.</p>
  <p><b>YDataMode</b> Selection mode for YData: 'manual' or 'auto'.</p>
  <p><b>ZData</b> z-coordinate data: vector or matrix.</p>
  <p><b>CreateFcn</b>Callback (function handle, string or cell) called when object is created.
Set this property on an existing component has no effect.</p>
  <p><b>DeleteFcn</b>Callback (function handle, string or cell) called when object is deleted.</p>
  <p/>
  <p><b>BeingDeleted</b> Flag indicating that the object is being deleted.</p>
  <p>Some properties are available only for compatibility and have currently no effect on the surface.</p>

## Examples

```matlab
f = figure();
[X, Y, Z] = peaks(35);
C(:, :, 1) = zeros(35);
C(:, :, 2) = ones(35) .* linspace(0.5, 0.6, 35);
C(:, :, 3) = ones(35) .* linspace(0, 1, 35);
S = surf(X, Y, Z, C)
```

<img src="surf_1_CEB29CE7.svg" align="middle"/>

```matlab
f = figure();
[X,Y] = meshgrid(-8:.5:8);
R = sqrt(X.^2 + Y.^2) + eps;
Z = sin(R)./R;
h = surf(X, Y, Z);
axis square
```

<img src="surf_2_607AD10C.svg" align="middle"/>

## See also

[view](view.md), [surface](surface.md), [meshgrid](../elementary_functions/meshgrid.md).

## History

| Version | Description                          |
| ------- | ------------------------------------ |
| 1.0.0   | initial version                      |
| 1.7.0   | CreateFcn, DeleteFcn callback added. |
| --      | BeingDeleted property added.         |

## Author

Allan CORNET
