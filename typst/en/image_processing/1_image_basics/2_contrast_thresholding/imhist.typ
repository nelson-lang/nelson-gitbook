#import "../../nelson_help.typ": *

= imhist <image_processing:1_image_basics.2_contrast_thresholding.imhist>

Compute image histogram counts.

== Syntax

- #raw("counts = imhist(I)");
- #raw("[counts, binLocations] = imhist(I)");
- #raw("[counts, binLocations] = imhist(I, n)");

== Input argument

/ I: Input intensity or logical image.
/ n: Positive integer number of histogram bins.

== Output argument

/ counts: Histogram counts as a column vector.
/ binLocations: Bin locations on the native image scale.

== Description

Compute image histogram counts. Bin locations use the native scale for integer images and the range \[0, 1\] for floating-point and logical images.


== Example

Display an image histogram

``````matlab
I=repmat(linspace(0,1,96),64,1);
[counts,bins]=imhist(I,32);
figure; bar(bins,counts); title('Histogram');
``````


#align(center)[#image("imhist_1.png")]

== See also

#nlink(<image_processing:1_image_basics.2_contrast_thresholding.imadjust>)[imadjust];, #nlink(<image_processing:1_image_basics.2_contrast_thresholding.graythresh>)[graythresh];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
