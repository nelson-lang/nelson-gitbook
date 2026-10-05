#import "../../nelson_help.typ": *

= imcomplement <image_processing:1_image_basics.2_contrast_thresholding.imcomplement>

Complement image values.

== Syntax

- #raw("J = imcomplement(I)");

== Input argument

/ I: Input image.

== Output argument

/ J: Complemented image with class matching I.

== Description

Complement image values. Logical values are inverted. Unsigned integer images are complemented around their full class range. Signed integer images preserve their class and are complemented around the signed class range.


== Examples

Complement an image

``````matlab
I=repmat(linspace(0,1,96),64,1);
J=imcomplement(I);
figure; subplot(1,2,1); imagesc(I); g=linspace(0,1,64)'; colormap([g g g]); title('Input');
subplot(1,2,2); imagesc(J); g=linspace(0,1,64)'; colormap([g g g]); title('Complement');
``````


#align(center)[#image("imcomplement_1.png")]
Complement signed integer values

``````matlab
J = imcomplement(int16([-32768 0 32767]))
``````


== See also

#nlink(<image_processing:1_image_basics.2_contrast_thresholding.imadjust>)[imadjust];, #nlink(<image_processing:1_image_basics.2_contrast_thresholding.imbinarize>)[imbinarize];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
