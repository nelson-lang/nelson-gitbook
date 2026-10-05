#import "../../nelson_help.typ": *

= imbinarize <image_processing:1_image_basics.2_contrast_thresholding.imbinarize>

Binarize image using a threshold.

== Syntax

- #raw("BW = imbinarize(I)");
- #raw("BW = imbinarize(I, T)");
- #raw("BW = imbinarize(I, 'global')");
- #raw("BW = imbinarize(I, 'adaptive')");
- #raw("BW = imbinarize(__, 'Sensitivity', value)");
- #raw("BW = imbinarize(__, 'ForegroundPolarity', polarity)");

== Input argument

/ I: Input image.
/ T: Numeric threshold. It can be scalar or the same size as I.
/ method: Binarization method: 'global' or 'adaptive'.
/ 'Sensitivity': Sensitivity passed to adaptive thresholding.
/ 'ForegroundPolarity': Foreground polarity for adaptive thresholding: 'bright' or 'dark'.

== Output argument

/ BW: Logical binary image.

== Description

Binarize image using a threshold. The global method uses graythresh when no threshold is supplied. A numeric threshold can be scalar or the same size as the input. The adaptive method uses adaptthresh and supports bright or dark foreground polarity.


== Examples

Binarize a grayscale image using a global threshold

``````matlab
I=[0 0.25 0.75 1; 0.1 0.4 0.6 0.9];
BW=imbinarize(I,0.5);
figure; subplot(1,2,1); imagesc(I); g=linspace(0,1,64)'; colormap([g g g]); title('Input');
subplot(1,2,2); imagesc(BW); g=linspace(0,1,64)'; colormap([g g g]); title('Binary');
``````


#align(center)[#image("imbinarize_1.png")]
Binarize using an adaptive threshold

``````matlab
I=[0.1 0.1 0.1; 0.1 0.9 0.1; 0.1 0.1 0.1];
BW=imbinarize(I,'adaptive','Sensitivity',0.4)
``````


== See also

#nlink(<image_processing:1_image_basics.2_contrast_thresholding.graythresh>)[graythresh];, #nlink(<image_processing:1_image_basics.2_contrast_thresholding.adaptthresh>)[adaptthresh];, #nlink(<image_processing:1_image_basics.2_contrast_thresholding.imcomplement>)[imcomplement];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
