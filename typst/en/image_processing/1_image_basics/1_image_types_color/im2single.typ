#import "../../nelson_help.typ": *

= im2single <image_processing:1_image_basics.1_image_types_color.im2single>

Convert image to single precision.

== Syntax

- #raw("J = im2single(I)");
- #raw("J = im2single(I, 'indexed')");

== Input argument

/ I: Input image.
/ 'indexed': Optional mode for indexed images. uint8 and uint16 values are converted to one-based single indices.

== Output argument

/ J: Image converted to single precision.

== Description

Convert image to single precision.

 For indexed images, uint8 and uint16 inputs are offset by one in the single output.


== Example

Convert uint8 array to single precision

``````matlab
I=reshape(uint8(linspace(1,255,25)),[5 5]);
J=im2single(I);
figure; imagesc(J); g=linspace(0,1,64)'; colormap([g g g]); title('single image');
``````


#align(center)[#image("im2single_1.png")]

== See also

#nlink(<image_processing:1_image_basics.1_image_types_color.im2double>)[im2double];, #nlink(<image_processing:1_image_basics.1_image_types_color.im2uint8>)[im2uint8];, #nlink(<image_processing:1_image_basics.1_image_types_color.im2uint16>)[im2uint16];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
