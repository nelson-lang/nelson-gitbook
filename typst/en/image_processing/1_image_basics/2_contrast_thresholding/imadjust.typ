#import "../../nelson_help.typ": *

= imadjust <image_processing:1_image_basics.2_contrast_thresholding.imadjust>

Adjust image intensity values.

== Syntax

- #raw("J = imadjust(I)");
- #raw("J = imadjust(I, in)");
- #raw("J = imadjust(I, in, out)");
- #raw("J = imadjust(I, in, out, gamma)");

== Input argument

/ I: Input grayscale image, RGB image, or double colormap.
/ in: Input intensity limits, as a 2-by-1 vector or 2-by-N per-channel matrix.
/ out: Output intensity limits, as a 2-by-1 vector or 2-by-N per-channel matrix.
/ gamma: Gamma correction scalar or per-channel vector.

== Output argument

/ J: Adjusted image or colormap.

== Description

Adjust image intensity values. Grayscale images use 2-by-1 limits; RGB images can use 2-by-3 limits and per-channel gamma values.


== Example

Adjust contrast of a low-contrast grayscale image

``````matlab
I=uint8([50 80 120; 90 130 170; 140 180 220]);
J=imadjust(I,[0.2;0.8],[]);
figure; subplot(1,2,1); imagesc(I); g=linspace(0,1,64)'; colormap([g g g]); title('Input');
subplot(1,2,2); imagesc(J); g=linspace(0,1,64)'; colormap([g g g]); title('Adjusted');
``````


#align(center)[#image("imadjust_1.png")]

== See also

#nlink(<image_processing:1_image_basics.2_contrast_thresholding.stretchlim>)[stretchlim];, #nlink(<image_processing:1_image_basics.2_contrast_thresholding.imhist>)[imhist];, #nlink(<image_processing:1_image_basics.2_contrast_thresholding.imcomplement>)[imcomplement];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
