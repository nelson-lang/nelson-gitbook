#import "../../nelson_help.typ": *

= surf <graphics:1_plots.7_surfaces_volumes_polygons.surf>

surface plot.

== Syntax

- #raw("surf(X, Y, Z)");
- #raw("surf(X, Y, Z, C)");
- #raw("surf(Z)");
- #raw("surf(Z, C)");
- #raw("surf(parent, ...)");
- #raw("surf(..., propertyName, propertyValue)");
- #raw("go = surf(...)");

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

#strong[surf]; creates a 3D surface plot. It can be used to plot data in the form of a matrix or a function of two variables.

 You can customize the appearance of the plot using various options such as color, lighting, and shading.

 For example, you can use the colormap option to change the color of the surface, and the FaceLighting option to change the lighting of the surface.

 Properties:

 

#table(
  columns: 2,
  [Property], [Description], 
  [#strong[AlphaData];], [Transparency data: array same size as ZData or 1 (default).], 
  [#strong[AlphaDataMapping];], [Interpretation of AlphaData values: 'direct', 'none' or 'scaled' (default).], 
  [#strong[AmbientStrength];], [Strength of ambient light: scalar in \[0, 1\].], 
  [#strong[BackFaceLighting];], [Face lighting when normals point away from camera: 'unlit', 'lit' or 'reverselit' (default).], 
  [#strong[CData];], [Vertex colors: 2-D or 3-D array.], 
  [#strong[CDataMapping];], [Color mapping method: 'direct', 'scaled' (default).], 
  [#strong[CDataMode];], [Selection mode for CData: 'manual', 'auto' (default).], 
  [#strong[Children];], [currently not used: \[\]], 
  [#strong[DiffuseStrength];], [Strength of diffuse light: scalar in range \[0, 1\].], 
  [#strong[EdgeAlpha];], [Edge transparency: scalar value in range \[0, 1\].], 
  [#strong[EdgeColor];], [Edge line color: RGB triplets.], 
  [#strong[EdgeLighting];], [Effect of light objects on edges: 'flat', 'gouraud' or 'none' (default).], 
  [#strong[FaceAlpha];], [Face transparency: scalar in range \[0, 1\].], 
  [#strong[FaceColor];], [Face color: RGB triplet.], 
  [#strong[FaceLighting];], [Effect of light objects on faces: 'gouraud', 'none' or 'flat' (default).], 
  [#strong[LineStyle];], [Line style: '--', ':', '-.', 'none' or '-' (default).], 
  [#strong[LineWidth];], [Line width: positive value, 0.5 (default).], 
  [#strong[Marker];], [Marker symbol: 'o' (circle), '+' (Plus sign), '\*' (asterisk), '.' (point), 'x' (cross), '\_' (horizontal line), '|' (vertical line), 'square', 'diamond', '^' (Upward-pointing triangle), 'v' (Downward-pointing triangle), ' ' (Right-pointing triangle), ' ' (Left-pointing triangle), 'pentagram', 'hexagram', 'none' (default).], 
  [#strong[MarkerEdgeColor];], [Marker outline color: RGB triplet.], 
  [#strong[MarkerFaceColor];], [Marker fill color: RGB triplet.], 
  [#strong[MarkerSize];], [Marker size: scalar positive value.], 
  [#strong[MeshStyle];], [Edges to display: 'row', 'column' or 'both' (default).], 
  [#strong[Parent];], [Parent: axes object.], 
  [#strong[SpecularColorReflectance];], [Color of specular reflections: scalar in range \[0, 1\].], 
  [#strong[SpecularExponent];], [Size of specular spot: scalar greater than or equal to 1.], 
  [#strong[SpecularStrength];], [Strength of specular reflection: scalar in range \[0, 1\].], 
  [#strong[Tag];], [Object identifier: character vector, string scalar or ' ' (default).], 
  [#strong[Type];], [Type of graphics object: 'surface'.], 
  [#strong[UserData];], [User data: array or \[\] (default).], 
  [#strong[VertexNormals];], [Normal vectors for each surface vertex: m-by-n-by-3 array or \[\] (default).], 
  [#strong[Visible];], [State of visibility: 'off' or 'on' (default).], 
  [#strong[XData];], [x-coordinate data: vector or matrix.], 
  [#strong[XDataMode];], [Selection mode for XData: 'manual' or 'auto'.], 
  [#strong[YData];], [y-coordinate data: vector or matrix.], 
  [#strong[YDataMode];], [Selection mode for YData: 'manual' or 'auto'.], 
  [#strong[ZData];], [z-coordinate data: vector or matrix.], 
  [#strong[CreateFcn];], [Callback (function handle, string or cell) called when object is created. Set this property on an existing component has no effect.], 
  [#strong[DeleteFcn];], [Callback (function handle, string or cell) called when object is deleted.], 
  [#strong[BeingDeleted];], [Flag indicating that the object is being deleted.], 
)
 Some properties are available only for compatibility and have currently no effect on the surface.


== Examples

``````matlab
f = figure();
[X, Y, Z] = peaks(35);
C(:, :, 1) = zeros(35);
C(:, :, 2) = ones(35) .* linspace(0.5, 0.6, 35);
C(:, :, 3) = ones(35) .* linspace(0, 1, 35);
S = surf(X, Y, Z, C)
``````


#align(center)[#image("surf_1.svg")]
``````matlab
f = figure();
[X,Y] = meshgrid(-8:.5:8);
R = sqrt(X.^2 + Y.^2) + eps;
Z = sin(R)./R;
h = surf(X, Y, Z);
axis square
``````


#align(center)[#image("surf_2.svg")]

== See also

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.view>)[view];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.light>)[light];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.fsurf>)[fsurf];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surface>)[surface];, #nlink(<elementary_functions:1_array_creation_shape.meshgrid>)[meshgrid];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.7.0], [CreateFcn, DeleteFcn callback added.],
  [--], [BeingDeleted property added.],
)

// Author: Allan CORNET
