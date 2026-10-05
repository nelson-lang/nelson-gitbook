#import "../../nelson_help.typ": *

= im2double <image_processing:1_image_basics.1_image_types_color.im2double>

Convert image to double precision.

== Syntax

- #raw("IM = im2double(I)");
- #raw("IM = im2double(I,'indexed')");

== Input argument

/ I: Input image: scalar, vector, matrix or multidimensional array with type single, double, int16, uint8, uint16 or logical.

== Output argument

/ IM: The converted image is returned as a numeric array with the same dimensions as the input image I with type double.

== Description

#strong[IM \= im2double(I)]; converts the input image I to double precision format. The input image IM can be a grayscale, truecolor, or binary image. When converting,#strong[im2double]; rescales the pixel values from their original integer format to a floating-point range of \[0, 1\].

 For an indexed image,#strong[IM \= im2double(I, 'indexed')]; converts the image I to double precision as well, but with an added offset of 1 to the pixel values during the conversion from integer types.

 Indexed images can be uint8, uint16, double, single, or logical arrays.


== Example

Convert uint8 image to double precision

``````matlab
I=reshape(uint8(linspace(1,255,100)),[10 10]);
IM=im2double(I);
figure; imagesc(IM); g=linspace(0,1,64)'; colormap([g g g]); title('Double image');
``````


#align(center)[#image("im2double_1.png")]

== See also

#nlink(<double:double>)[double];, #nlink(<graphics_io:imread>)[imread];, #nlink(<image_processing:1_image_basics.1_image_types_color.im2single>)[im2single];, #nlink(<image_processing:1_image_basics.1_image_types_color.im2uint8>)[im2uint8];, #nlink(<image_processing:1_image_basics.1_image_types_color.im2uint16>)[im2uint16];, #nlink(<image_processing:1_image_basics.1_image_types_color.im2gray>)[im2gray];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
