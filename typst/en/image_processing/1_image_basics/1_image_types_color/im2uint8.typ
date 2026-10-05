#import "../../nelson_help.typ": *

= im2uint8 <image_processing:1_image_basics.1_image_types_color.im2uint8>

Convert image to 8-bit unsigned integer.

== Syntax

- #raw("J = im2uint8(I)");
- #raw("J = im2uint8(I, 'indexed')");

== Input argument

/ I: Input image. Supported intensity classes are double, single, logical, uint8, uint16, and int16.
/ 'indexed': Optional mode for indexed images. Floating-point inputs use one-based indices and integer inputs use zero-based indices.

== Output argument

/ J: Image converted to uint8.

== Description

Convert image to 8-bit unsigned integer.

 For indexed images, integer inputs are treated as zero-based indices and double inputs are treated as one-based indices.


== Example

Convert uint16 array to uint8

``````matlab
I=reshape(uint16(linspace(0,65535,25)),[5 5]);
J=im2uint8(I);
figure; imagesc(J); g=linspace(0,1,64)'; colormap([g g g]); title('uint8 image');
``````


#align(center)[#image("im2uint8_1.png")]

== See also

#nlink(<image_processing:1_image_basics.1_image_types_color.im2uint16>)[im2uint16];, #nlink(<image_processing:1_image_basics.1_image_types_color.im2single>)[im2single];, #nlink(<image_processing:1_image_basics.1_image_types_color.im2double>)[im2double];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
