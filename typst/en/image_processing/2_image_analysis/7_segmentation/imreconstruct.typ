#import "../../nelson_help.typ": *

= imreconstruct <image_processing:2_image_analysis.7_segmentation.imreconstruct>

Perform morphological reconstruction by dilation.

== Syntax

- #raw("J = imreconstruct(marker, mask)");
- #raw("J = imreconstruct(marker, mask, conn)");

== Input argument

/ marker: Marker image. Values must be less than or equal to mask values.
/ mask: Mask image with the same size as marker.
/ conn: Connectivity, either 4, 8, or an equivalent 3-by-3 matrix.

== Output argument

/ J: Reconstructed image, cast like mask.

== Description

imreconstruct repeatedly dilates marker under the constraint of mask until stability. It supports finite real 2-D grayscale and binary images.


== Example

Reconstruct a binary component from a marker

``````matlab
mask=false(64,64); mask(18:46,18:46)=true;
marker=false(64,64); marker(32,32)=true;
J=imreconstruct(marker,mask,4);
figure; subplot(1,3,1); imagesc(mask); title('Mask');
subplot(1,3,2); imagesc(marker); title('Marker');
subplot(1,3,3); imagesc(J); title('Reconstructed');
``````


#align(center)[#image("imreconstruct_1.png")]

== See also

#nlink(<image_processing:2_image_analysis.7_segmentation.imhmin>)[imhmin];, #nlink(<image_processing:2_image_analysis.7_segmentation.imhmax>)[imhmax];, #nlink(<image_processing:2_image_analysis.7_segmentation.imregionalmin>)[imregionalmin];, #nlink(<image_processing:2_image_analysis.7_segmentation.watershed>)[watershed];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
