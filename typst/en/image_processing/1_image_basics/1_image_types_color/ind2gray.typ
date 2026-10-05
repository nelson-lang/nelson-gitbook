#import "../../nelson_help.typ": *

= ind2gray <image_processing:1_image_basics.1_image_types_color.ind2gray>

Convert indexed image to grayscale using a colormap.

== Syntax

- #raw("I = ind2gray(X, map)");

== Input argument

/ X: Indexed image.
/ map: Colormap with at least three columns.

== Output argument

/ I: Double grayscale image obtained from the indexed RGB image.

== Description

Convert indexed image to grayscale using a colormap.


== Example

Convert indexed image to grayscale

``````matlab
X=repmat(uint8(0:63),64,1);
v=linspace(0,1,64)'; map=[v 1-v 0.5*ones(64,1)];
G=ind2gray(X,map);
figure; imagesc(G); g=linspace(0,1,64)'; colormap([g g g]); title('Indexed to gray');
``````


#align(center)[#image("ind2gray_1.png")]

== See also

#nlink(<image_processing:1_image_basics.1_image_types_color.ind2rgb>)[ind2rgb];, #nlink(<image_processing:1_image_basics.1_image_types_color.rgb2gray>)[rgb2gray];, #nlink(<image_processing:1_image_basics.1_image_types_color.im2gray>)[im2gray];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
