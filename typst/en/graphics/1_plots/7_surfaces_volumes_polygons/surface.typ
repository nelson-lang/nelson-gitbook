#import "../../nelson_help.typ": *

= surface <graphics:1_plots.7_surfaces_volumes_polygons.surface>

Primitive surface plot.

== Syntax

- #raw("surface(X, Y, Z)");
- #raw("surface(X, Y, Z, C)");
- #raw("surface(Z)");
- #raw("surface(Z, C)");
- #raw("surface(parent, ...)");
- #raw("surface(..., propertyName, propertyValue)");
- #raw("go = surface(...)");

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

#strong[surf]; and#strong[surface]; functions are both used to create 3D surface plots, but there are some slight differences between the two.

 #strong[surf]; function is used to plot a surface defined by a function of two variables, or by a set of scattered data points.

 It requires three input arguments: X, Y, and Z. X and Y define the coordinates of the data points, and Z defines the height of the surface at each point.

 #strong[surf]; function also applies high-level plot setup such as axes replacement, 3D view, and grid defaults.

 

 #strong[surface]; function creates a primitive surface object in the current or specified axes.

 The size of Z must match the size of X and Y. The surface function also provides additional options for customizing the appearance of the plot, such as lighting and color.

 In summary, both #strong[surf]; and#strong[surface]; functions are used for 3D surface plots but#strong[surf]; is used for a surface defined by a function of two variables or by a set of scattered data points, while #strong[surface]; is used for a surface defined by a matrix of data, and the size of Z must match the size of X and Y.

 See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.surface.properties>)[surface properties]; for the complete property list.


== Example

``````matlab
f = figure();
data = peaks(50);
ax1 = subplot(1, 2, 1);
s1 = surface(ax1, data);
ax2 = subplot(1, 2, 2);
s2 = surf(ax2, data);

``````


#align(center)[#image("surface_1.svg")]

== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.surface.properties>)[surface properties];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.view>)[view];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.light>)[light];, #nlink(<graphics:3_labels_styling.2_color_styling.shading>)[shading];, #nlink(<elementary_functions:1_array_creation_shape.meshgrid>)[meshgrid];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
