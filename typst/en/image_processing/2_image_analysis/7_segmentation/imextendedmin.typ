#import "../../nelson_help.typ": *

= imextendedmin <image_processing:2_image_analysis.7_segmentation.imextendedmin>

Find extended minima in a 2-D image.

== Syntax

- #raw("BW = imextendedmin(I, h)");
- #raw("BW = imextendedmin(I, h, conn)");

== Input argument

/ I: Input finite real 2-D image.
/ h: Nonnegative finite height for the h-minima transform.
/ conn: Connectivity, either 4, 8, or an equivalent 3-by-3 matrix.

== Output argument

/ BW: Logical mask of regional minima after h-minima suppression.

== Description

imextendedmin applies imhmin and then finds regional minima. It helps build marker masks that ignore minima shallower than h.


== Example

Find extended minima

``````matlab
I=[5 5 5 5 5;5 1 5 2 5;5 5 5 5 5];
BW=imextendedmin(I,2);
figure; subplot(1,2,1); imagesc(I); title('Image');
subplot(1,2,2); imagesc(BW); title('Extended minima');
``````


#align(center)[#image("imextendedmin_1.png")]

== See also

#nlink(<image_processing:2_image_analysis.7_segmentation.imhmin>)[imhmin];, #nlink(<image_processing:2_image_analysis.7_segmentation.imregionalmin>)[imregionalmin];, #nlink(<image_processing:2_image_analysis.7_segmentation.imimposemin>)[imimposemin];, #nlink(<image_processing:2_image_analysis.7_segmentation.watershed>)[watershed];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
