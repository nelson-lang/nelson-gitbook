#import "../../nelson_help.typ": *

= hsv2rgb <image_processing:1_image_basics.1_image_types_color.hsv2rgb>

Convert HSV color values to RGB color values.

== Syntax

- #raw("RGB = hsv2rgb(HSV)");
- #raw("rgbmap = hsv2rgb(hsvmap)");

== Input argument

/ HSV: m-by-n-by-3 HSV image with class double, single, or logical.
/ hsvmap: HSV colormap with three columns and values in the range \[0, 1\].

== Output argument

/ RGB: RGB image. The output is single only when the input image is single; otherwise it is double.
/ rgbmap: RGB colormap with the same number of rows as hsvmap.

== Description

Convert HSV color values to RGB color values. HSV inputs must be real double, single, or logical arrays. Saturation and value channels are converted without clipping. Empty HSV images preserve their size.

 Nonempty HSV colormaps with three columns and values in \[0, 1\] are converted row by row.


== Example

Convert HSV image to RGB

``````matlab
[H,S]=meshgrid(linspace(0,1,96),linspace(0,1,64));
HSV=zeros(64,96,3); HSV(:,:,1)=H; HSV(:,:,2)=S; HSV(:,:,3)=1;
RGB=hsv2rgb(HSV);
figure; image(RGB); title('HSV to RGB');
``````


#align(center)[#image("hsv2rgb_1.png")]

== See also

#nlink(<image_processing:1_image_basics.1_image_types_color.rgb2hsv>)[rgb2hsv];, #nlink(<image_processing:1_image_basics.1_image_types_color.ycbcr2rgb>)[ycbcr2rgb];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
