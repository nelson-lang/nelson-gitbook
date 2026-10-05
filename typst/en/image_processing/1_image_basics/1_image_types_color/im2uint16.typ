#import "../../nelson_help.typ": *

= im2uint16 <image_processing:1_image_basics.1_image_types_color.im2uint16>

Convert image to 16-bit unsigned integer.

== Syntax

- #raw("J = im2uint16(I)");
- #raw("J = im2uint16(I, 'indexed')");

== Input argument

/ I: Input image. Supported intensity classes are double, single, logical, uint8, uint16, and int16.
/ 'indexed': Optional mode for indexed images. Floating-point inputs use one-based indices and integer inputs use zero-based indices.

== Output argument

/ J: Image converted to uint16.

== Description

Convert image to 16-bit unsigned integer.

 For indexed images, integer inputs are treated as zero-based indices and double inputs are treated as one-based indices.


== Example

Convert double array to uint16

``````matlab
I=reshape(linspace(0,1,20),[5 4]);
J=im2uint16(I);
figure; imagesc(J); g=linspace(0,1,64)'; colormap([g g g]); title('uint16 image');
``````


#align(center)[#image("im2uint16_1.png")]

== See also

#nlink(<image_processing:1_image_basics.1_image_types_color.im2uint8>)[im2uint8];, #nlink(<image_processing:1_image_basics.1_image_types_color.im2single>)[im2single];, #nlink(<image_processing:1_image_basics.1_image_types_color.im2double>)[im2double];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
