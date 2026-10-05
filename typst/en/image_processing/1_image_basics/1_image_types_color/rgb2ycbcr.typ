#import "../../nelson_help.typ": *

= rgb2ycbcr <image_processing:1_image_basics.1_image_types_color.rgb2ycbcr>

Convert RGB color values to YCbCr color values.

== Syntax

- #raw("YCBCR = rgb2ycbcr(RGB)");

== Input argument

/ RGB: m-by-n-by-3 RGB image, or c-by-3 double colormap with values in the range \[0, 1\].

== Output argument

/ YCBCR: YCbCr image or colormap. uint8, uint16, and single inputs preserve their class; other inputs return double.

== Description

Convert RGB color values to YCbCr color values. Inputs can be m-by-n-by-3 images or c-by-3 double colormaps with values in the range \[0, 1\].


== Example

Display luminance after RGB to YCbCr conversion

``````matlab
RGB=zeros(64,64,3);
[X,Y]=meshgrid(linspace(0,1,64),linspace(0,1,64));
RGB(:,:,1)=X; RGB(:,:,2)=Y; RGB(:,:,3)=0.5;
YCBCR=rgb2ycbcr(RGB);
figure; subplot(1,2,1); image(RGB); title('RGB');
subplot(1,2,2); imagesc(YCBCR(:,:,1)); g=linspace(0,1,64)'; colormap([g g g]); title('Y');
``````


#align(center)[#image("rgb2ycbcr_1.png")]

== See also

#nlink(<image_processing:1_image_basics.1_image_types_color.ycbcr2rgb>)[ycbcr2rgb];, #nlink(<image_processing:1_image_basics.1_image_types_color.rgb2hsv>)[rgb2hsv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
