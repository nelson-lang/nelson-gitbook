#import "../nelson_help.typ": *

= imagesc <graphics:4_images.imagesc>

Display image from array with scaled colors.

== Syntax

- #raw("imagesc()");
- #raw("imagesc(C)");
- #raw("imagesc(X, Y, C)");
- #raw("imagesc('CData', C)");
- #raw("imagesc('XData', X, 'YData', Y,'CData', C)");
- #raw("imagesc(..., propertyName, propertyValue)");
- #raw("imagesc(parent, ...)");
- #raw("go = imagesc(...)");

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

#strong[imagessc]; displays C data as an image. This image is colormapped using the colormap for the current figure.

 Properties:

 

#table(
  columns: 2,
  [Property], [Description], 
  [#strong[AlphaData];], [Transparency data: scalar, array the same size as CData, or 1 (default).], 
  [#strong[AlphaDataMapping];], [Alpha data mapping method.], 
  [#strong[CData];], [Image color data: vector or matrix, 3-D array of RGB triplets.], 
  [#strong[CDataMapping];], [Color data mapping method: 'direct' or 'scaled' (default).], 
  [#strong[Children];], [\[\].], 
  [#strong[Parent];], [Parent: axes object.], 
  [#strong[Tag];], [Object identifier: string scalar, character vector, ' ' (default).], 
  [#strong[Type];], [Type of graphics object: 'surface'.], 
  [#strong[UserData];], [User data: array or \[\] (default).], 
  [#strong[Visible];], [State of visibility: 'off' or 'on' (default).], 
  [#strong[XData];], [Placement along x-axis: two-element vector, scalar, \[1 size(CData, 1)\] (default).], 
  [#strong[YData];], [Placement along y-axis: two-element vector, scalar, \[1 size(CData, 2)\] (default).], 
  [#strong[CreateFcn];], [Callback (function handle, string or cell) called when object is created. Set this property on an existing component has no effect.], 
  [#strong[DeleteFcn];], [Callback (function handle, string or cell) called when object is deleted.], 
  [#strong[BeingDeleted];], [Flag indicating that the object is being deleted.], 
)

== Examples

``````matlab
f1 = figure();
C = [0 2 4 6; 8 10 12 14; 16 18 20 22];
imagesc(C)
``````


#align(center)[#image("imagesc_1.png")]
``````matlab
f2 = figure();
C = [0 2 4 6; 8 10 12 14; 16 18 20 22];
imagesc(C)
colormap(gray)
``````


#align(center)[#image("imagesc_2.png")]

== See also

#nlink(<graphics:4_images.image>)[image];, #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.7.0], [CreateFcn, DeleteFcn callback added.],
  [--], [BeingDeleted property added.],
)

// Author: Allan CORNET
