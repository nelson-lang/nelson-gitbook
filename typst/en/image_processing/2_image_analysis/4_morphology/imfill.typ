#import "../../nelson_help.typ": *

= imfill <image_processing:2_image_analysis.4_morphology.imfill>

Fill holes in binary images.

== Syntax

- #raw("BW2 = imfill(BW)");
- #raw("BW2 = imfill(BW, 'holes')");
- #raw("BW2 = imfill(BW, conn, 'holes')");

== Input argument

/ BW: Input binary image. Nonzero values are treated as true.
/ conn: Connectivity, either 4 or 8.
/ 'holes': Fill holes in foreground objects.

== Output argument

/ BW2: Logical image with holes filled.

== Description

Fill holes in a 2-D binary image. Supported connectivities are 4 and 8.


== Example

Fill a hole in a binary object

``````matlab
BW=false(64,64); BW(12:52,12:52)=true; BW(24:40,24:40)=false;
BW2=imfill(BW,'holes');
figure; subplot(1,2,1); imagesc(BW); title('Input');
subplot(1,2,2); imagesc(BW2); title('Filled');
``````


#align(center)[#image("imfill_1.png")]

== See also

#nlink(<image_processing:2_image_analysis.4_morphology.imclose>)[imclose];, #nlink(<image_processing:2_image_analysis.7_segmentation.imreconstruct>)[imreconstruct];, #nlink(<image_processing:2_image_analysis.4_morphology.imclearborder>)[imclearborder];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
