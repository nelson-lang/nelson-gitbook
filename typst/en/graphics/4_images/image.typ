#import "../nelson_help.typ": *

= image <graphics:4_images.image>

Display image from array.

== Syntax

- #raw("image()");
- #raw("image(C)");
- #raw("image(X, Y, C)");
- #raw("image('CData', C)");
- #raw("image('XData', X, 'YData', Y,'CData', C)");
- #raw("image(..., propertyName, propertyValue)");
- #raw("image(parent, ...)");
- #raw("go = image(...)");

== Input argument

/ X: x-coordinates: vector or matrix.
/ Y: y-coordinates: vector or matrix.
/ C: Color array: m-by-n-by-3 array of RGB triplets.
/ parent: a scalar graphics object value: parent container, specified as a axes.
/ propertyName: a scalar string or row vector character.
/ propertyValue: a value.

== Output argument

/ go: a graphics object: image type.

== Description

#strong[image]; displays C data as an image.

 See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.image.properties>)[image properties]; for the complete property list.


== Examples

``````matlab
f = figure();
L = linspace(0, 1);
R = L' * L;
G = L' * (L .^ 2);
B = L' * (0 *L + 1);
C(:, :, 1) = G;
C(:, :, 2) = G;
C(:, :, 3) = B;
im = image(C)
``````


#align(center)[#image("image_1.svg")]
``````matlab
f = figure();
image();
``````


#align(center)[#image("image_2.svg")]

== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.image.properties>)[image properties];, #nlink(<graphics:4_images.imagesc>)[imagesc];, #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.7.0], [CreateFcn, DeleteFcn callback added.],
  [--], [BeingDeleted property added.],
)

// Author: Allan CORNET
